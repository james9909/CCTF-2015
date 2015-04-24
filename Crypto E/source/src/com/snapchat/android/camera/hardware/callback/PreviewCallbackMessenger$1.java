// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.hardware.callback;


// Referenced classes of package com.snapchat.android.camera.hardware.callback:
//            PreviewCallbackMessenger

class a
    implements Runnable
{

    final byte a[];
    final PreviewCallbackMessenger b;

    public void run()
    {
        PreviewCallbackMessenger.b(b).a(a, PreviewCallbackMessenger.a(b));
    }

    ack(PreviewCallbackMessenger previewcallbackmessenger, byte abyte0[])
    {
        b = previewcallbackmessenger;
        a = abyte0;
        super();
    }
}
