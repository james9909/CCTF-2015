// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.text.TextUtils;
import com.addlive.service.AddLiveService;
import com.addlive.service.MediaType;
import com.addlive.service.listener.AddLiveServiceListenerAdapter;
import com.addlive.service.listener.ConnectionLostEvent;
import com.addlive.service.listener.MessageEvent;
import com.addlive.service.listener.SessionReconnectedEvent;
import com.addlive.service.listener.UserStateChangedEvent;
import com.addlive.service.listener.VideoFrameSizeChangedEvent;
import com.addlive.view.ALVideoTextureView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.HereAnalytics;
import org.json.JSONException;

// Referenced classes of package com.snapchat.android.livechat:
//            AdlLiveChatProvider, AdlHelper, AddLiveMessage

class <init> extends AddLiveServiceListenerAdapter
{

    final AdlLiveChatProvider a;

    public void onConnectionLost(ConnectionLostEvent connectionlostevent)
    {
        Timber.d("livechat", (new StringBuilder()).append("Got lost connection to AddLive session with scope: ").append(connectionlostevent.getScopeId()).toString(), new Object[0]);
        <init>[AdlLiveChatProvider.f(a).a()];
        JVM INSTR tableswitch 1 5: default 80
    //                   1 127
    //                   2 127
    //                   3 127
    //                   4 127
    //                   5 162;
           goto _L1 _L2 _L2 _L2 _L2 _L3
_L1:
        if (!AdlLiveChatProvider.a(a, connectionlostevent.getScopeId()))
        {
            Timber.d("livechat", "Got connection lost for deferred disconnected connection. Canceling reconnect", new Object[0]);
            AdlLiveChatProvider.g(a).disconnect(AdlHelper.a("disconnectOnConnLost"), connectionlostevent.getScopeId());
            return;
        }
        break; /* Loop/switch isn't completed */
_L2:
        Timber.d("livechat", (new StringBuilder()).append("Got user event while the application is in a wrong state ").append(AdlLiveChatProvider.f(a)).toString(), new Object[0]);
        return;
_L3:
        Timber.c("livechat", "Got a connection lost event", new Object[0]);
        if (true) goto _L1; else goto _L4
_L4:
        AdlLiveChatProvider.h(a);
        if (connectionlostevent.isWillReconnect())
        {
            AdlLiveChatProvider.a(a, a);
            return;
        } else
        {
            Timber.d("livechat", "Got lost connection to AddLive session - the SDK will not attempt to reconnect due toexpired credentials. Will try to reconnect with hopefully updated credentials", new Object[0]);
            AdlLiveChatProvider.a(a, AdlLiveChatProvider.i(a));
            return;
        }
    }

    public void onMediaStreamEvent(UserStateChangedEvent userstatechangedevent)
    {
        if (AdlLiveChatProvider.c(a, userstatechangedevent.getScopeId()) && userstatechangedevent.getMediaType() == MediaType.VIDEO)
        {
            if (userstatechangedevent.isVideoPublished())
            {
                Timber.c("livechat", "Remote peer published video. Rendering it", new Object[0]);
                AdlLiveChatProvider.b(a, userstatechangedevent.getVideoSinkId());
                AdlLiveChatProvider.k(a);
                AdlLiveChatProvider.a(a).d();
                AdlLiveChatProvider.b(a, a);
            } else
            {
                AdlLiveChatProvider.b(a, "");
                AdlLiveChatProvider.l(a);
                AdlLiveChatProvider.b(a, a);
            }
            AdlLiveChatProvider.b(a, userstatechangedevent.isVideoPublished());
            if (!AdlLiveChatProvider.m(a))
            {
                AdlLiveChatProvider.b(a).a(false);
                return;
            }
        }
    }

    public void onMessage(MessageEvent messageevent)
    {
        if (AdlLiveChatProvider.c(a, messageevent.getScopeId()))
        {
            String s = new String(messageevent.getData());
            try
            {
                AddLiveMessage addlivemessage = AddLiveMessage.a(s);
                if ("CHANGE_PUBLISHED_RESOLUTION".equalsIgnoreCase(addlivemessage.b()))
                {
                    a.a(addlivemessage);
                    return;
                }
            }
            catch (JSONException jsonexception)
            {
                Timber.e("livechat", (new StringBuilder()).append("Failed to parse AddLive message. raw data: ").append(s).toString(), new Object[0]);
                return;
            }
        }
    }

    public void onSessionReconnected(SessionReconnectedEvent sessionreconnectedevent)
    {
        if (AdlLiveChatProvider.i(a) != null && AdlLiveChatProvider.a(a, sessionreconnectedevent.getScopeId()))
        {
            AdlLiveChatProvider.a(a, a);
            if (AdlLiveChatProvider.j(a) != a)
            {
                a.c();
                return;
            }
        }
    }

    public void onUserEvent(UserStateChangedEvent userstatechangedevent)
    {
        boolean flag = true;
        a[AdlLiveChatProvider.f(a).a()];
        JVM INSTR tableswitch 1 5: default 52
    //                   1 123
    //                   2 123
    //                   3 78
    //                   4 123
    //                   5 158;
           goto _L1 _L2 _L2 _L3 _L2 _L4
_L1:
        if (!AdlLiveChatProvider.a(a, userstatechangedevent.getScopeId()))
        {
            Timber.d("livechat", "Got user event for session other than the current most one. Ignoring", new Object[0]);
            return;
        }
        break; /* Loop/switch isn't completed */
_L3:
        Timber.d("livechat", "Got user event prior to receiving the connect result. Forcing the onConnected()", new Object[0]);
        if (AdlLiveChatProvider.i(a) != null && AdlLiveChatProvider.a(a, userstatechangedevent.getScopeId()))
        {
            a.f();
        }
        continue; /* Loop/switch isn't completed */
_L2:
        Timber.d("livechat", (new StringBuilder()).append("Got user event while the application is in a wrong state ").append(AdlLiveChatProvider.f(a)).toString(), new Object[0]);
        return;
_L4:
        Timber.c("livechat", "Got a new user event", new Object[0]);
        if (true) goto _L1; else goto _L5
_L5:
        AdlLiveChatProvider adllivechatprovider;
        if (userstatechangedevent.isConnected())
        {
            Timber.b("livechat", (new StringBuilder()).append("Remote peer joined the AddLive session: ").append(userstatechangedevent.getUserId()).toString(), new Object[0]);
            AdlLiveChatProvider.a(a).a(com.snapchat.android.analytics.R_JOINED);
            if (userstatechangedevent.isVideoPublished())
            {
                AdlLiveChatProvider.b(a, userstatechangedevent.getVideoSinkId());
                AdlLiveChatProvider.k(a);
                AdlLiveChatProvider.a(a).d();
                AdlLiveChatProvider.b(a, a);
            }
            AdlLiveChatProvider.a(a, flag);
        } else
        {
            AdlLiveChatProvider.h(a);
        }
        adllivechatprovider = a;
        if (!userstatechangedevent.isConnected() || !userstatechangedevent.isVideoPublished())
        {
            flag = false;
        }
        AdlLiveChatProvider.b(adllivechatprovider, flag);
        return;
    }

    public void onVideoFrameSizeChanged(VideoFrameSizeChangedEvent videoframesizechangedevent)
    {
        if (TextUtils.equals(videoframesizechangedevent.getSinkId(), AdlLiveChatProvider.c(a)))
        {
            a.a.resolutionChanged(videoframesizechangedevent.getWidth(), videoframesizechangedevent.getHeight());
            if (AdlLiveChatProvider.d(a) == a)
            {
                AdlLiveChatProvider.b(a, a);
                Timber.c("livechat", "Received remote video frame size changed. Reporting first frame", new Object[0]);
                AdlLiveChatProvider.b(a).a(true);
                AdlLiveChatProvider.a(a).e();
                AdlLiveChatProvider.e(a);
            }
            return;
        } else
        {
            Object aobj[] = new Object[3];
            aobj[0] = videoframesizechangedevent.getSinkId();
            aobj[1] = Integer.valueOf(videoframesizechangedevent.getWidth());
            aobj[2] = Integer.valueOf(videoframesizechangedevent.getHeight());
            Timber.c("livechat", "Got local video frame size changed: %s -> %dx%d", aobj);
            return;
        }
    }

    private (AdlLiveChatProvider adllivechatprovider)
    {
        a = adllivechatprovider;
        super();
    }

    a(AdlLiveChatProvider adllivechatprovider, a a1)
    {
        this(adllivechatprovider);
    }
}
