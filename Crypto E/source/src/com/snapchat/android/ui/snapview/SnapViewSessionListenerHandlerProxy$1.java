// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapview;


// Referenced classes of package com.snapchat.android.ui.snapview:
//            SnapViewSessionListenerHandlerProxy, SnapViewSessionListener, SnapViewSession

class a
    implements Runnable
{

    final SnapViewSession a;
    final SnapViewSessionListenerHandlerProxy b;

    public void run()
    {
        SnapViewSessionListenerHandlerProxy.a(b).a(a);
    }

    (SnapViewSessionListenerHandlerProxy snapviewsessionlistenerhandlerproxy, SnapViewSession snapviewsession)
    {
        b = snapviewsessionlistenerhandlerproxy;
        a = snapviewsession;
        super();
    }
}
