// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware.callback;


// Referenced classes of package com.snapchat.android.camera.hardware.callback:
//            AutofocusCallbackMessenger

class a
    implements Runnable
{

    final boolean a;
    final AutofocusCallbackMessenger b;

    public void run()
    {
        AutofocusCallbackMessenger.b(b).a(a, AutofocusCallbackMessenger.a(b));
    }

    back(AutofocusCallbackMessenger autofocuscallbackmessenger, boolean flag)
    {
        b = autofocuscallbackmessenger;
        a = flag;
        super();
    }
}
