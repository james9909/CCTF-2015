// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Environment;
import android.os.Handler;
import android.text.TextUtils;
import com.addlive.platform.InitProgressChangedEvent;
import com.addlive.platform.InitState;
import com.addlive.platform.InitStateChangedEvent;
import com.addlive.platform.PlatformInitListener;
import com.addlive.platform.PlatformInitOptions;
import com.addlive.service.AddLiveService;
import com.addlive.service.AuthDetails;
import com.addlive.service.ConnectionDescriptor;
import com.addlive.service.MediaConnection;
import com.addlive.service.MediaType;
import com.addlive.service.Responder;
import com.addlive.service.VideoStreamDescriptor;
import com.addlive.service.listener.AddLiveServiceListener;
import com.addlive.service.listener.AddLiveServiceListenerAdapter;
import com.addlive.service.listener.ConnectionLostEvent;
import com.addlive.service.listener.MessageEvent;
import com.addlive.service.listener.SessionReconnectedEvent;
import com.addlive.service.listener.UserStateChangedEvent;
import com.addlive.service.listener.VideoFrameSizeChangedEvent;
import com.addlive.view.ALVideoTextureView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.HereAnalytics;
import com.snapchat.android.ui.here.DisconnectReason;
import com.snapchat.android.util.StringUtils;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.network.EndpointManager;
import com.snapchat.android.util.system.Clock;
import com.snapchat.android.util.system.ClockProvider;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.snapchat.android.livechat:
//            LiveChatProvider, AdlHelper, AdlPerfTracking, AddLiveMessage, 
//            AdlListenerAdapter

public class AdlLiveChatProvider
    implements LiveChatProvider
{
    class SnapchatServiceListener extends AddLiveServiceListenerAdapter
    {

        final AdlLiveChatProvider a;

        public void onConnectionLost(ConnectionLostEvent connectionlostevent)
        {
            Timber.d("livechat", (new StringBuilder()).append("Got lost connection to AddLive session with scope: ").append(connectionlostevent.getScopeId()).toString(), new Object[0]);
            static class _cls8
            {

                static final int a[];
                static final int b[];

                static 
                {
                    b = new int[InitState.values().length];
                    try
                    {
                        b[InitState.INITIALIZED.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror) { }
                    try
                    {
                        b[InitState.INITIALIZING.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        b[InitState.NOT_INITIALIZED.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        b[InitState.ERROR.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror3) { }
                    try
                    {
                        b[InitState.REALEASING.ordinal()] = 5;
                    }
                    catch (NoSuchFieldError nosuchfielderror4) { }
                    a = new int[AdlHelper.ConnectionState.values().length];
                    try
                    {
                        a[AdlHelper.ConnectionState.a.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror5) { }
                    try
                    {
                        a[AdlHelper.ConnectionState.e.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror6) { }
                    try
                    {
                        a[AdlHelper.ConnectionState.c.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror7) { }
                    try
                    {
                        a[AdlHelper.ConnectionState.b.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror8) { }
                    try
                    {
                        a[AdlHelper.ConnectionState.d.ordinal()] = 5;
                    }
                    catch (NoSuchFieldError nosuchfielderror9)
                    {
                        return;
                    }
                }
            }

            _cls8.a[AdlLiveChatProvider.f(a).ordinal()];
            JVM INSTR tableswitch 1 5: default 80
        //                       1 127
        //                       2 127
        //                       3 127
        //                       4 127
        //                       5 162;
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
                AdlLiveChatProvider.a(a, AdlHelper.ConnectionState.c);
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
                    AdlLiveChatProvider.b(a, AdlHelper.MediaTransmissionState.b);
                } else
                {
                    AdlLiveChatProvider.b(a, "");
                    AdlLiveChatProvider.l(a);
                    AdlLiveChatProvider.b(a, AdlHelper.MediaTransmissionState.a);
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
                String s1 = new String(messageevent.getData());
                try
                {
                    AddLiveMessage addlivemessage = AddLiveMessage.a(s1);
                    if ("CHANGE_PUBLISHED_RESOLUTION".equalsIgnoreCase(addlivemessage.b()))
                    {
                        a.a(addlivemessage);
                        return;
                    }
                }
                catch (JSONException jsonexception)
                {
                    Timber.e("livechat", (new StringBuilder()).append("Failed to parse AddLive message. raw data: ").append(s1).toString(), new Object[0]);
                    return;
                }
            }
        }

        public void onSessionReconnected(SessionReconnectedEvent sessionreconnectedevent)
        {
            if (AdlLiveChatProvider.i(a) != null && AdlLiveChatProvider.a(a, sessionreconnectedevent.getScopeId()))
            {
                AdlLiveChatProvider.a(a, AdlHelper.ConnectionState.d);
                if (AdlLiveChatProvider.j(a) != AdlHelper.MediaTransmissionState.a)
                {
                    a.c();
                    return;
                }
            }
        }

        public void onUserEvent(UserStateChangedEvent userstatechangedevent)
        {
            boolean flag = true;
            _cls8.a[AdlLiveChatProvider.f(a).ordinal()];
            JVM INSTR tableswitch 1 5: default 52
        //                       1 123
        //                       2 123
        //                       3 78
        //                       4 123
        //                       5 158;
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
                AdlLiveChatProvider.a(a).a(com.snapchat.android.analytics.HereAnalytics.SetupPhase.HERE_ADL_REMOTE_PEER_JOINED);
                if (userstatechangedevent.isVideoPublished())
                {
                    AdlLiveChatProvider.b(a, userstatechangedevent.getVideoSinkId());
                    AdlLiveChatProvider.k(a);
                    AdlLiveChatProvider.a(a).d();
                    AdlLiveChatProvider.b(a, AdlHelper.MediaTransmissionState.b);
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
                if (AdlLiveChatProvider.d(a) == AdlHelper.MediaTransmissionState.b)
                {
                    AdlLiveChatProvider.b(a, AdlHelper.MediaTransmissionState.c);
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

        private SnapchatServiceListener()
        {
            a = AdlLiveChatProvider.this;
            super();
        }

    }


    ALVideoTextureView a;
    AdlHelper.AdlWrapper b;
    AddLiveServiceListener c;
    AdlPerfTracking d;
    Handler e;
    Clock f;
    private Activity g;
    private LiveChatProvider.LiveChatProviderCallback h;
    private Runnable i;
    private Runnable j;
    private String k;
    private com.snapchat.android.model.server.chat.PresenceMessage.HereAuth l;
    private AdlHelper.ConnectionState m;
    private AdlHelper.MediaTransmissionState n;
    private AdlHelper.MediaTransmissionState o;
    private boolean p;
    private boolean q;
    private boolean r;
    private String s;
    private HereAnalytics t;
    private BroadcastReceiver u;

    public AdlLiveChatProvider()
    {
        b = AdlHelper.a();
        m = AdlHelper.ConnectionState.a;
        n = AdlHelper.MediaTransmissionState.a;
        o = AdlHelper.MediaTransmissionState.a;
        p = false;
        q = false;
        r = false;
        f = (new ClockProvider()).a();
    }

    static HereAnalytics a(AdlLiveChatProvider adllivechatprovider)
    {
        return adllivechatprovider.t;
    }

    static AdlHelper.ConnectionState a(AdlLiveChatProvider adllivechatprovider, AdlHelper.ConnectionState connectionstate)
    {
        adllivechatprovider.m = connectionstate;
        return connectionstate;
    }

    static AdlHelper.MediaTransmissionState a(AdlLiveChatProvider adllivechatprovider, AdlHelper.MediaTransmissionState mediatransmissionstate)
    {
        adllivechatprovider.n = mediatransmissionstate;
        return mediatransmissionstate;
    }

    static Runnable a(AdlLiveChatProvider adllivechatprovider, Runnable runnable)
    {
        adllivechatprovider.i = runnable;
        return runnable;
    }

    static void a(AdlLiveChatProvider adllivechatprovider, com.snapchat.android.model.server.chat.PresenceMessage.HereAuth hereauth)
    {
        adllivechatprovider.c(hereauth);
    }

    static void a(AdlLiveChatProvider adllivechatprovider, boolean flag)
    {
        adllivechatprovider.b(flag);
    }

    private void a(DisconnectReason disconnectreason)
    {
        Responder responder = new Responder() {

            final AdlLiveChatProvider a;

            public void a(Void void1)
            {
                a.g();
            }

            public void errHandler(int i1, String s1)
            {
                Timber.e("livechat", (new StringBuilder()).append("Failed to terminate connection to AddLive scope: ").append(s1).append("(ERR:").append(i1).append(")").toString(), new Object[0]);
            }

            public void resultHandler(Object obj)
            {
                a((Void)obj);
            }

            
            {
                a = AdlLiveChatProvider.this;
                super();
            }
        };
        h().deferredDisconnect(AdlHelper.a(responder, e), l.scope_id, 5000);
        m = AdlHelper.ConnectionState.e;
        b(false);
        h.a(disconnectreason);
        d.b();
    }

    static boolean a(AdlLiveChatProvider adllivechatprovider, String s1)
    {
        return adllivechatprovider.a(s1);
    }

    private boolean a(String s1)
    {
        return TextUtils.equals(s1, l.scope_id);
    }

    static AdlHelper.MediaTransmissionState b(AdlLiveChatProvider adllivechatprovider, AdlHelper.MediaTransmissionState mediatransmissionstate)
    {
        adllivechatprovider.o = mediatransmissionstate;
        return mediatransmissionstate;
    }

    static LiveChatProvider.LiveChatProviderCallback b(AdlLiveChatProvider adllivechatprovider)
    {
        return adllivechatprovider.h;
    }

    static String b(AdlLiveChatProvider adllivechatprovider, String s1)
    {
        adllivechatprovider.k = s1;
        return s1;
    }

    private void b(boolean flag)
    {
        ArrayList arraylist;
        if (flag)
        {
            arraylist = new ArrayList(h().getConnectionByScope(l.scope_id).getUsersInSession().keySet());
        } else
        {
            arraylist = new ArrayList();
        }
        h().setAllowedSenders(AdlHelper.a("setAllowedSenders(AUDIO)"), l.scope_id, MediaType.AUDIO, arraylist);
        h().setAllowedSenders(AdlHelper.a("setAllowedSenders(VIDEO)"), l.scope_id, MediaType.VIDEO, arraylist);
    }

    static boolean b(AdlLiveChatProvider adllivechatprovider, boolean flag)
    {
        adllivechatprovider.p = flag;
        return flag;
    }

    private boolean b(com.snapchat.android.model.server.chat.PresenceMessage.HereAuth hereauth)
    {
        return h().getConnectionByScope(hereauth.scope_id) != null;
    }

    private boolean b(String s1)
    {
        _cls8.a[m.ordinal()];
        JVM INSTR tableswitch 1 5: default 44
    //                   1 50
    //                   2 50
    //                   3 50
    //                   4 50
    //                   5 83;
           goto _L1 _L2 _L2 _L2 _L2 _L3
_L1:
        return a(s1);
_L2:
        Timber.d("livechat", (new StringBuilder()).append("Got user event while the application is in a wrong state ").append(m).toString(), new Object[0]);
        return false;
_L3:
        Timber.c("livechat", "Got a new media stream user event", new Object[0]);
        if (true) goto _L1; else goto _L4
_L4:
    }

    static String c(AdlLiveChatProvider adllivechatprovider)
    {
        return adllivechatprovider.k;
    }

    private void c(com.snapchat.android.model.server.chat.PresenceMessage.HereAuth hereauth)
    {
        t.a(com.snapchat.android.analytics.HereAnalytics.SetupPhase.HERE_AVAILABLE);
        if (b(hereauth))
        {
            l = hereauth;
            m = AdlHelper.ConnectionState.c;
            f();
            b(true);
            return;
        } else
        {
            Timber.c("livechat", (new StringBuilder()).append("Connecting to scope: '").append(hereauth.scope_id).append("'").toString(), new Object[0]);
            ConnectionDescriptor connectiondescriptor = e(hereauth);
            Responder responder = new Responder() {

                final AdlLiveChatProvider a;

                public void a(MediaConnection mediaconnection)
                {
                    a.f();
                }

                public void errHandler(int i1, String s1)
                {
                    a.a(i1, s1);
                }

                public void resultHandler(Object obj)
                {
                    a((MediaConnection)obj);
                }

            
            {
                a = AdlLiveChatProvider.this;
                super();
            }
            };
            h().connect(AdlHelper.a(responder, e), connectiondescriptor);
            l = hereauth;
            s = hereauth.scope_id;
            m = AdlHelper.ConnectionState.c;
            return;
        }
    }

    static boolean c(AdlLiveChatProvider adllivechatprovider, String s1)
    {
        return adllivechatprovider.b(s1);
    }

    static AdlHelper.MediaTransmissionState d(AdlLiveChatProvider adllivechatprovider)
    {
        return adllivechatprovider.o;
    }

    private void d(com.snapchat.android.model.server.chat.PresenceMessage.HereAuth hereauth)
    {
        h().cancelDeferredDisconnect(AdlHelper.a("cancel deferred disconnect"), hereauth.scope_id);
    }

    private ConnectionDescriptor e(com.snapchat.android.model.server.chat.PresenceMessage.HereAuth hereauth)
    {
        ConnectionDescriptor connectiondescriptor = new ConnectionDescriptor();
        connectiondescriptor.setAutopublishAudio(false);
        connectiondescriptor.setAutopublishVideo(false);
        connectiondescriptor.setScopeId(hereauth.scope_id);
        VideoStreamDescriptor videostreamdescriptor = new VideoStreamDescriptor();
        videostreamdescriptor.setMaxWidth(320);
        videostreamdescriptor.setMaxHeight(640);
        videostreamdescriptor.setMaxFps(24);
        videostreamdescriptor.setUseAdaptation(true);
        connectiondescriptor.setVideoStream(videostreamdescriptor);
        AuthDetails authdetails = new AuthDetails();
        authdetails.setUserId(Long.valueOf(hereauth.user_id));
        authdetails.setSalt(hereauth.salt);
        authdetails.setExpires(Long.valueOf(hereauth.expires));
        authdetails.setSignature(hereauth.signature);
        connectiondescriptor.setAuthDetails(authdetails);
        return connectiondescriptor;
    }

    static void e(AdlLiveChatProvider adllivechatprovider)
    {
        adllivechatprovider.n();
    }

    static AdlHelper.ConnectionState f(AdlLiveChatProvider adllivechatprovider)
    {
        return adllivechatprovider.m;
    }

    static AddLiveService g(AdlLiveChatProvider adllivechatprovider)
    {
        return adllivechatprovider.h();
    }

    private AddLiveService h()
    {
        return b.b();
    }

    static void h(AdlLiveChatProvider adllivechatprovider)
    {
        adllivechatprovider.m();
    }

    static com.snapchat.android.model.server.chat.PresenceMessage.HereAuth i(AdlLiveChatProvider adllivechatprovider)
    {
        return adllivechatprovider.l;
    }

    private void i()
    {
        q = true;
        switch (_cls8.b[b.a().ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            e();
            return;

        case 2: // '\002'
            Timber.c("livechat", "AddLive platform requested to initialise while in-init", new Object[0]);
            return;

        case 3: // '\003'
            j();
            return;

        case 4: // '\004'
        case 5: // '\005'
            Timber.e("livechat", (new StringBuilder()).append("Got an invalid platform init state while requesting init: ").append(b.a()).toString(), new Object[0]);
            break;
        }
    }

    static AdlHelper.MediaTransmissionState j(AdlLiveChatProvider adllivechatprovider)
    {
        return adllivechatprovider.n;
    }

    private void j()
    {
        PlatformInitListener platforminitlistener = new PlatformInitListener() {

            final AdlLiveChatProvider a;

            public void onInitProgressChanged(InitProgressChangedEvent initprogresschangedevent)
            {
            }

            public void onInitStateChanged(InitStateChangedEvent initstatechangedevent)
            {
                if (initstatechangedevent.getState() == InitState.INITIALIZED)
                {
                    a.e();
                    return;
                } else
                {
                    Object aobj[] = new Object[2];
                    aobj[0] = initstatechangedevent.getErrMessage();
                    aobj[1] = Integer.valueOf(initstatechangedevent.getErrCode());
                    Timber.e("livechat", "Failed to initialize the AddLive SDK: %s (ERR: %d)", aobj);
                    return;
                }
            }

            
            {
                a = AdlLiveChatProvider.this;
                super();
            }
        };
        String s1 = Environment.getExternalStorageDirectory().getAbsolutePath();
        String s2 = StringUtils.a(EndpointManager.a().h(), "|");
        PlatformInitOptions platforminitoptions = new PlatformInitOptions();
        platforminitoptions.setStorageDir(s1);
        platforminitoptions.setApplicationId(Long.valueOf(513L));
        platforminitoptions.setInteractionsLogTag("livechat");
        platforminitoptions.setUseExternalVideoInput(true);
        platforminitoptions.setStreamerEndpointResolver(s2);
        platforminitoptions.setConsoleLoggingEnabled(ReleaseManager.f());
        platforminitoptions.setInteractionsLoggingEnabled(ReleaseManager.f());
        Timber.c("livechat", "Requesting the AddLive SDK to initialize self", new Object[0]);
        b.a(AdlHelper.a(platforminitlistener, e), platforminitoptions, g);
    }

    private void k()
    {
        Responder responder = new Responder() {

            final AdlLiveChatProvider a;

            public void a(Void void1)
            {
                AdlLiveChatProvider.a(a, AdlHelper.MediaTransmissionState.c);
                AdlLiveChatProvider.a(a).a(com.snapchat.android.analytics.HereAnalytics.SetupPhase.HERE_PUBLISHED);
            }

            public void errHandler(int i1, String s1)
            {
                Object aobj[] = new Object[2];
                aobj[0] = s1;
                aobj[1] = Integer.valueOf(i1);
                Timber.e("livechat", "Failed to publish video due to: %s (ERR: %d)", aobj);
                AdlLiveChatProvider.a(a, AdlHelper.MediaTransmissionState.a);
            }

            public void resultHandler(Object obj)
            {
                a((Void)obj);
            }

            
            {
                a = AdlLiveChatProvider.this;
                super();
            }
        };
        n = AdlHelper.MediaTransmissionState.b;
        h().publish(AdlHelper.a(responder, e), l.scope_id, MediaType.VIDEO);
        h().publish(AdlHelper.a("publish(AUDIO)"), l.scope_id, MediaType.AUDIO);
    }

    static void k(AdlLiveChatProvider adllivechatprovider)
    {
        adllivechatprovider.o();
    }

    private void l()
    {
        if (i == null)
        {
            i = new Runnable() {

                final AdlLiveChatProvider a;

                public void run()
                {
                    AdlLiveChatProvider.b(a).a(DisconnectReason.e);
                    AdlLiveChatProvider.a(a, null);
                }

            
            {
                a = AdlLiveChatProvider.this;
                super();
            }
            };
            e.postDelayed(i, 8000L);
        }
    }

    static void l(AdlLiveChatProvider adllivechatprovider)
    {
        adllivechatprovider.p();
    }

    private void m()
    {
        k = "";
        p();
        h.a(DisconnectReason.c);
        h.a(false);
    }

    static boolean m(AdlLiveChatProvider adllivechatprovider)
    {
        return adllivechatprovider.p;
    }

    private void n()
    {
        if (m != AdlHelper.ConnectionState.d || l == null)
        {
            return;
        }
        int i1 = a.getWidth();
        int j1 = a.getHeight();
        AddLiveMessage addlivemessage = new AddLiveMessage("CHANGE_PUBLISHED_RESOLUTION");
        try
        {
            addlivemessage.c().put("width", i1);
            addlivemessage.c().put("height", j1);
            h().sendMessage(AdlHelper.a("sendMessage"), l.scope_id, addlivemessage.a());
            return;
        }
        catch (JSONException jsonexception)
        {
            Timber.d("livechat", "Failed to send change resolution request", new Object[0]);
        }
    }

    private void o()
    {
        a.stop();
        a.setSinkId(k);
        a.start();
    }

    private void p()
    {
        a.stop();
        a.setSinkId("");
    }

    private void q()
    {
        u = new BroadcastReceiver(f.b()) {

            final long a;
            final AdlLiveChatProvider b;

            public void onReceive(Context context, Intent intent)
            {
                boolean flag = intent.getBooleanExtra("noConnectivity", false);
                boolean flag1 = false;
                if (!flag)
                {
                    flag1 = true;
                }
                b.e.post(new Runnable(this, flag1) {

                    final boolean a;
                    final _cls6 b;

                    public void run()
                    {
                        if (b.b.f.b() - b.a > 1000L)
                        {
                            b.b.a(a);
                        }
                    }

            
            {
                b = _pcls6;
                a = flag;
                super();
            }
                });
            }

            
            {
                b = AdlLiveChatProvider.this;
                a = l1;
                super();
            }
        };
        g.registerReceiver(u, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    private void r()
    {
        g.unregisterReceiver(u);
        u = null;
    }

    public void a()
    {
        Timber.b("livechat", "Releasing Adl Video chat provide", new Object[0]);
        if (!r)
        {
            Timber.e("livechat", "Got a request to release AdlLiveChatProvider while it's already released. Skipping", new Object[0]);
            return;
        }
        if (b.a() != InitState.INITIALIZED)
        {
            q = false;
        } else
        {
            a(DisconnectReason.g, false);
            h().removeServiceListener(AdlHelper.a("removeServiceListener"), c);
        }
        if (i != null)
        {
            e.removeCallbacks(i);
        }
        if (j != null)
        {
            e.removeCallbacks(j);
        }
        m = AdlHelper.ConnectionState.a;
        n = AdlHelper.MediaTransmissionState.a;
        r();
        a = null;
        r = false;
    }

    void a(int i1, String s1)
    {
        Object aobj[] = new Object[2];
        aobj[0] = s1;
        aobj[1] = Integer.valueOf(i1);
        Timber.e("livechat", "Got an AddLive connection error: %s (ERR: %d)", aobj);
        m = AdlHelper.ConnectionState.a;
    }

    public void a(Activity activity, LiveChatProvider.LiveChatProviderCallback livechatprovidercallback, HereAnalytics hereanalytics)
    {
        Timber.b("livechat", "Setting up AdlLiveChatProvider", new Object[0]);
        if (r)
        {
            Timber.d("livechat", "Got a request to initialise AdlLiveChatProvider while provider is already initialised. Skipping", new Object[0]);
            return;
        }
        g = activity;
        h = livechatprovidercallback;
        t = hereanalytics;
        if (a == null)
        {
            a = new ALVideoTextureView(activity);
        }
        e = new Handler(activity.getMainLooper());
        i();
        q();
        r = true;
    }

    void a(AddLiveMessage addlivemessage)
    {
        int i1 = addlivemessage.c().getInt("width");
        int j1 = addlivemessage.c().getInt("height");
        VideoStreamDescriptor videostreamdescriptor = new VideoStreamDescriptor();
        videostreamdescriptor.setMaxFps(24);
        videostreamdescriptor.setUseAdaptation(true);
        if (j1 < 640)
        {
            videostreamdescriptor.setMaxHeight(j1);
            videostreamdescriptor.setMaxWidth(i1);
        } else
        {
            videostreamdescriptor.setMaxHeight(640);
            videostreamdescriptor.setMaxWidth((i1 * 640) / j1);
        }
        h().reconfigureVideo(AdlHelper.a("reconfigureVideo"), l.scope_id, videostreamdescriptor);
    }

    public void a(com.snapchat.android.model.server.chat.PresenceMessage.HereAuth hereauth)
    {
        Timber.c("livechat", "Got a request to connect to AddLive session", new Object[0]);
        if (r) goto _L2; else goto _L1
_L1:
        Timber.e("livechat", "Got an attempt to connect to AddLive scope, but the AdlLiveChatProvider is not initialised", new Object[0]);
_L4:
        return;
_L2:
        if (b.a() != InitState.INITIALIZED)
        {
            m = AdlHelper.ConnectionState.b;
            l = hereauth;
            return;
        }
        switch (_cls8.a[m.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
        case 2: // '\002'
            d(hereauth);
            c(hereauth);
            return;

        case 3: // '\003'
            if (!TextUtils.equals(s, hereauth.scope_id))
            {
                Timber.e("livechat", "Got a request to connect to a scope while we're connecting to a different one. Call disconnect first.", new Object[0]);
                return;
            }
            break;

        case 4: // '\004'
            l = hereauth;
            return;

        case 5: // '\005'
            if (b(hereauth))
            {
                l = hereauth;
                return;
            } else
            {
                a(DisconnectReason.f);
                Timber.e("livechat", "Got a request to connect to a scope while we're already connected to different one", new Object[0]);
                c(hereauth);
                return;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(DisconnectReason disconnectreason, boolean flag)
    {
        switch (_cls8.a[m.ordinal()])
        {
        case 1: // '\001'
        case 2: // '\002'
        default:
            return;

        case 4: // '\004'
            m = AdlHelper.ConnectionState.a;
            return;

        case 3: // '\003'
        case 5: // '\005'
            a(disconnectreason);
            return;
        }
    }

    void a(boolean flag)
    {
        Timber.c("livechat", (new StringBuilder()).append("Got change in reachability connected? ->  ").append(flag).toString(), new Object[0]);
        _cls8.a[m.ordinal()];
        JVM INSTR tableswitch 3 5: default 68
    //                   3 69
    //                   4 118
    //                   5 69;
           goto _L1 _L2 _L3 _L2
_L1:
        return;
_L2:
        e.removeCallbacks(j);
        if (!flag)
        {
            h().disconnect(AdlHelper.a("disconnect"), l.scope_id);
            m();
            m = AdlHelper.ConnectionState.b;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        e.removeCallbacks(j);
        if (flag)
        {
            if (j == null)
            {
                j = new Runnable() {

                    final AdlLiveChatProvider a;

                    public void run()
                    {
                        Timber.c("livechat", "Running the reconnect task", new Object[0]);
                        if (AdlLiveChatProvider.f(a) == AdlHelper.ConnectionState.b)
                        {
                            AdlLiveChatProvider.a(a, AdlHelper.ConnectionState.a);
                            a.a(AdlLiveChatProvider.i(a));
                        }
                    }

            
            {
                a = AdlLiveChatProvider.this;
                super();
            }
                };
            }
            e.removeCallbacks(j);
            e.postDelayed(j, 3000L);
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void a(byte abyte0[], com.addlive.service.AddLiveService.VideoFrameMetadata videoframemetadata)
    {
        AddLiveService addliveservice = h();
        if (addliveservice != null)
        {
            addliveservice.injectFrame(abyte0, videoframemetadata);
        }
    }

    public boolean b()
    {
        return r;
    }

    public void c()
    {
        switch (_cls8.a[m.ordinal()])
        {
        default:
            Timber.d("livechat", (new StringBuilder()).append("Got a request to publish video stream, but the connection is in a wrong state: ").append(m).toString(), new Object[0]);
            return;

        case 3: // '\003'
        case 4: // '\004'
            l();
            n = AdlHelper.MediaTransmissionState.b;
            return;

        case 5: // '\005'
            k();
            break;
        }
    }

    public void d()
    {
        switch (_cls8.a[m.ordinal()])
        {
        default:
            Timber.d("livechat", (new StringBuilder()).append("Got a request to publish video stream, but the connection is in a wrong state: ").append(m).toString(), new Object[0]);
            return;

        case 3: // '\003'
        case 4: // '\004'
            n = AdlHelper.MediaTransmissionState.a;
            return;

        case 2: // '\002'
        case 5: // '\005'
            h().unpublish(AdlHelper.a("unpublish(VIDEO)"), l.scope_id, MediaType.VIDEO);
            h().unpublish(AdlHelper.a("unpublish(AUDIO)"), l.scope_id, MediaType.AUDIO);
            n = AdlHelper.MediaTransmissionState.a;
            return;
        }
    }

    void e()
    {
        Timber.c("livechat", "AddLive SDK initialized", new Object[0]);
        if (!q)
        {
            Timber.b("livechat", "Initialisation was cancelled while in-progress", new Object[0]);
            return;
        }
        c = new AdlListenerAdapter(new SnapchatServiceListener(), e);
        h().addServiceListener(AdlHelper.a("addServiceListener"), c);
        d = new AdlPerfTracking(h());
        d.a();
        if (m == AdlHelper.ConnectionState.b)
        {
            c(l);
        } else
        {
            m = AdlHelper.ConnectionState.a;
        }
        Timber.c("livechat", "AddLive SDK initialized <- done", new Object[0]);
    }

    void f()
    {
        _cls8.a[m.ordinal()];
        JVM INSTR tableswitch 1 5: default 44
    //                   1 163
    //                   2 163
    //                   3 196
    //                   4 163
    //                   5 150;
           goto _L1 _L2 _L2 _L3 _L2 _L4
_L1:
        t.a(com.snapchat.android.analytics.HereAnalytics.SetupPhase.HERE_ADL_CONNECTED);
        m = AdlHelper.ConnectionState.d;
        if (ReleaseManager.f())
        {
            h().startMeasuringStats(AdlHelper.a("startMeasuringStats"), l.scope_id, 5);
        }
        h.a();
        h.a(a);
        if (n == AdlHelper.MediaTransmissionState.b)
        {
            c();
        }
        if (i != null)
        {
            e.removeCallbacks(i);
            i = null;
        }
        return;
_L4:
        Timber.d("livechat", "Got a second call to connect. Probably remote user triggered it first", new Object[0]);
        return;
_L2:
        Timber.d("livechat", (new StringBuilder()).append("Got a connection result, after the provider is in invalid state: ").append(m).toString(), new Object[0]);
        return;
_L3:
        Timber.b("livechat", "Successfully connected to AddLive Scope", new Object[0]);
        if (true) goto _L1; else goto _L5
_L5:
    }

    void g()
    {
        _cls8.a[m.ordinal()];
        JVM INSTR tableswitch 1 5: default 44
    //                   1 45
    //                   2 94
    //                   3 81
    //                   4 58
    //                   5 81;
           goto _L1 _L2 _L3 _L4 _L5 _L4
_L1:
        return;
_L2:
        Timber.e("livechat", "Got a disconnect result while the SDK is already disconnected", new Object[0]);
        return;
_L5:
        m = AdlHelper.ConnectionState.a;
        if (l != null)
        {
            a(l);
            return;
        }
          goto _L1
_L4:
        Timber.e("livechat", "Got a disconnect result while the SDK is in the middle of setting up other connection", new Object[0]);
        return;
_L3:
        m = AdlHelper.ConnectionState.a;
        return;
    }
}
