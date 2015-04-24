// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.os.Handler;
import com.addlive.service.listener.AddLiveServiceListener;
import com.addlive.service.listener.AddLiveServiceListenerAdapter;
import com.addlive.service.listener.ConnectionLostEvent;
import com.addlive.service.listener.MessageEvent;
import com.addlive.service.listener.SessionReconnectedEvent;
import com.addlive.service.listener.UserStateChangedEvent;
import com.addlive.service.listener.VideoFrameSizeChangedEvent;

public class AdlListenerAdapter extends AddLiveServiceListenerAdapter
{

    private final AddLiveServiceListener a;
    private final Handler b;

    public AdlListenerAdapter(AddLiveServiceListener addliveservicelistener, Handler handler)
    {
        a = addliveservicelistener;
        b = handler;
    }

    static AddLiveServiceListener a(AdlListenerAdapter adllisteneradapter)
    {
        return adllisteneradapter.a;
    }

    public void onConnectionLost(ConnectionLostEvent connectionlostevent)
    {
        b.post(new Runnable(connectionlostevent) {

            final ConnectionLostEvent a;
            final AdlListenerAdapter b;

            public void run()
            {
                AdlListenerAdapter.a(b).onConnectionLost(a);
            }

            
            {
                b = AdlListenerAdapter.this;
                a = connectionlostevent;
                super();
            }
        });
    }

    public void onMediaStreamEvent(UserStateChangedEvent userstatechangedevent)
    {
        b.post(new Runnable(userstatechangedevent) {

            final UserStateChangedEvent a;
            final AdlListenerAdapter b;

            public void run()
            {
                AdlListenerAdapter.a(b).onMediaStreamEvent(a);
            }

            
            {
                b = AdlListenerAdapter.this;
                a = userstatechangedevent;
                super();
            }
        });
    }

    public void onMessage(MessageEvent messageevent)
    {
        b.post(new Runnable(messageevent) {

            final MessageEvent a;
            final AdlListenerAdapter b;

            public void run()
            {
                AdlListenerAdapter.a(b).onMessage(a);
            }

            
            {
                b = AdlListenerAdapter.this;
                a = messageevent;
                super();
            }
        });
    }

    public void onSessionReconnected(SessionReconnectedEvent sessionreconnectedevent)
    {
        b.post(new Runnable(sessionreconnectedevent) {

            final SessionReconnectedEvent a;
            final AdlListenerAdapter b;

            public void run()
            {
                AdlListenerAdapter.a(b).onSessionReconnected(a);
            }

            
            {
                b = AdlListenerAdapter.this;
                a = sessionreconnectedevent;
                super();
            }
        });
    }

    public void onUserEvent(UserStateChangedEvent userstatechangedevent)
    {
        b.post(new Runnable(userstatechangedevent) {

            final UserStateChangedEvent a;
            final AdlListenerAdapter b;

            public void run()
            {
                AdlListenerAdapter.a(b).onUserEvent(a);
            }

            
            {
                b = AdlListenerAdapter.this;
                a = userstatechangedevent;
                super();
            }
        });
    }

    public void onVideoFrameSizeChanged(VideoFrameSizeChangedEvent videoframesizechangedevent)
    {
        b.post(new Runnable(videoframesizechangedevent) {

            final VideoFrameSizeChangedEvent a;
            final AdlListenerAdapter b;

            public void run()
            {
                AdlListenerAdapter.a(b).onVideoFrameSizeChanged(a);
            }

            
            {
                b = AdlListenerAdapter.this;
                a = videoframesizechangedevent;
                super();
            }
        });
    }
}
