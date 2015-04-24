// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapview;

import android.os.Handler;

// Referenced classes of package com.snapchat.android.ui.snapview:
//            SnapViewSessionListener, SnapViewSession, SnapViewSessionStopReason

public class SnapViewSessionListenerHandlerProxy
    implements SnapViewSessionListener
{

    private final Handler a;
    private final SnapViewSessionListener b;

    public SnapViewSessionListenerHandlerProxy(Handler handler, SnapViewSessionListener snapviewsessionlistener)
    {
        a = handler;
        b = snapviewsessionlistener;
    }

    static SnapViewSessionListener a(SnapViewSessionListenerHandlerProxy snapviewsessionlistenerhandlerproxy)
    {
        return snapviewsessionlistenerhandlerproxy.b;
    }

    public void a(SnapViewSession snapviewsession)
    {
        a.post(new Runnable(snapviewsession) {

            final SnapViewSession a;
            final SnapViewSessionListenerHandlerProxy b;

            public void run()
            {
                SnapViewSessionListenerHandlerProxy.a(b).a(a);
            }

            
            {
                b = SnapViewSessionListenerHandlerProxy.this;
                a = snapviewsession;
                super();
            }
        });
    }

    public void a(SnapViewSession snapviewsession, SnapViewSessionStopReason snapviewsessionstopreason)
    {
        a.post(new Runnable(snapviewsession, snapviewsessionstopreason) {

            final SnapViewSession a;
            final SnapViewSessionStopReason b;
            final SnapViewSessionListenerHandlerProxy c;

            public void run()
            {
                SnapViewSessionListenerHandlerProxy.a(c).a(a, b);
            }

            
            {
                c = SnapViewSessionListenerHandlerProxy.this;
                a = snapviewsession;
                b = snapviewsessionstopreason;
                super();
            }
        });
    }
}
