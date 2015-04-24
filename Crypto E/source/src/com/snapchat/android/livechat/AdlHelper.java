// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.livechat;

import android.content.Context;
import android.os.Handler;
import com.addlive.platform.ADL;
import com.addlive.platform.InitProgressChangedEvent;
import com.addlive.platform.InitState;
import com.addlive.platform.InitStateChangedEvent;
import com.addlive.platform.PlatformInitListener;
import com.addlive.platform.PlatformInitOptions;
import com.addlive.service.AddLiveService;
import com.addlive.service.Responder;
import com.snapchat.android.Timber;

public class AdlHelper
{
    static interface AdlWrapper
    {

        public abstract InitState a();

        public abstract void a(PlatformInitListener platforminitlistener, PlatformInitOptions platforminitoptions, Context context);

        public abstract AddLiveService b();
    }

    static final class ConnectionState extends Enum
    {

        public static final ConnectionState a;
        public static final ConnectionState b;
        public static final ConnectionState c;
        public static final ConnectionState d;
        public static final ConnectionState e;
        private static final ConnectionState f[];

        public static ConnectionState valueOf(String s)
        {
            return (ConnectionState)Enum.valueOf(com/snapchat/android/livechat/AdlHelper$ConnectionState, s);
        }

        public static ConnectionState[] values()
        {
            return (ConnectionState[])f.clone();
        }

        static 
        {
            a = new ConnectionState("DISCONNECTED", 0);
            b = new ConnectionState("REQUESTED", 1);
            c = new ConnectionState("CONNECTING", 2);
            d = new ConnectionState("CONNECTED", 3);
            e = new ConnectionState("DEFERRED_DISCONNECTING", 4);
            ConnectionState aconnectionstate[] = new ConnectionState[5];
            aconnectionstate[0] = a;
            aconnectionstate[1] = b;
            aconnectionstate[2] = c;
            aconnectionstate[3] = d;
            aconnectionstate[4] = e;
            f = aconnectionstate;
        }

        private ConnectionState(String s, int i)
        {
            super(s, i);
        }
    }

    static class ErrorHandlingResponder
        implements Responder
    {

        private final String a;

        public void errHandler(int i, String s)
        {
            Object aobj[] = new Object[3];
            aobj[0] = a;
            aobj[1] = s;
            aobj[2] = Integer.valueOf(i);
            Timber.e("livechat", "Got an error processing AddLive request %s: %s (ERR: %d)", aobj);
        }

        public void resultHandler(Object obj)
        {
            Object aobj[] = new Object[1];
            aobj[0] = a;
            Timber.c("livechat", "Got a successful result processing AddLive request %s", aobj);
        }

        ErrorHandlingResponder(String s)
        {
            a = s;
        }
    }

    static final class MediaTransmissionState extends Enum
    {

        public static final MediaTransmissionState a;
        public static final MediaTransmissionState b;
        public static final MediaTransmissionState c;
        private static final MediaTransmissionState d[];

        public static MediaTransmissionState valueOf(String s)
        {
            return (MediaTransmissionState)Enum.valueOf(com/snapchat/android/livechat/AdlHelper$MediaTransmissionState, s);
        }

        public static MediaTransmissionState[] values()
        {
            return (MediaTransmissionState[])d.clone();
        }

        static 
        {
            a = new MediaTransmissionState("INACTIVE", 0);
            b = new MediaTransmissionState("SETTING_UP", 1);
            c = new MediaTransmissionState("ACTIVE", 2);
            MediaTransmissionState amediatransmissionstate[] = new MediaTransmissionState[3];
            amediatransmissionstate[0] = a;
            amediatransmissionstate[1] = b;
            amediatransmissionstate[2] = c;
            d = amediatransmissionstate;
        }

        private MediaTransmissionState(String s, int i)
        {
            super(s, i);
        }
    }


    public AdlHelper()
    {
    }

    static PlatformInitListener a(PlatformInitListener platforminitlistener, Handler handler)
    {
        return new PlatformInitListener(handler, platforminitlistener) {

            final Handler a;
            final PlatformInitListener b;

            public void onInitProgressChanged(InitProgressChangedEvent initprogresschangedevent)
            {
                a.post(new Runnable(this, initprogresschangedevent) {

                    final InitProgressChangedEvent a;
                    final _cls3 b;

                    public void run()
                    {
                        b.b.onInitProgressChanged(a);
                    }

            
            {
                b = _pcls3;
                a = initprogresschangedevent;
                super();
            }
                });
            }

            public void onInitStateChanged(InitStateChangedEvent initstatechangedevent)
            {
                a.post(new Runnable(this, initstatechangedevent) {

                    final InitStateChangedEvent a;
                    final _cls3 b;

                    public void run()
                    {
                        b.b.onInitStateChanged(a);
                    }

            
            {
                b = _pcls3;
                a = initstatechangedevent;
                super();
            }
                });
            }

            
            {
                a = handler;
                b = platforminitlistener;
                super();
            }
        };
    }

    static Responder a(Responder responder, Handler handler)
    {
        return new Responder(handler, responder) {

            final Handler a;
            final Responder b;

            public void errHandler(int i, String s)
            {
                a.post(new Runnable(this, i, s) {

                    final int a;
                    final String b;
                    final _cls2 c;

                    public void run()
                    {
                        c.b.errHandler(a, b);
                    }

            
            {
                c = _pcls2;
                a = i;
                b = s;
                super();
            }
                });
            }

            public void resultHandler(Object obj)
            {
                a.post(new Runnable(this, obj) {

                    final Object a;
                    final _cls2 b;

                    public void run()
                    {
                        b.b.resultHandler(a);
                    }

            
            {
                b = _pcls2;
                a = obj;
                super();
            }
                });
            }

            
            {
                a = handler;
                b = responder;
                super();
            }
        };
    }

    static AdlWrapper a()
    {
        return new AdlWrapper() {

            public InitState a()
            {
                return ADL.getInitState();
            }

            public void a(PlatformInitListener platforminitlistener, PlatformInitOptions platforminitoptions, Context context)
            {
                ADL.init(platforminitlistener, platforminitoptions, context);
            }

            public AddLiveService b()
            {
                return ADL.getService();
            }

        };
    }

    static ErrorHandlingResponder a(String s)
    {
        return new ErrorHandlingResponder(s);
    }
}
