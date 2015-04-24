// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;


// Referenced classes of package com.snapchat.android.util.crypto:
//            DeviceTokenManager

class a
    implements Runnable
{

    final DeviceTokenManager a;

    public void run()
    {
        Thread.currentThread().setName("DeviceTokenManager.checkForDeviceTokenOnDisk");
        a.a(true);
    }

    (DeviceTokenManager devicetokenmanager)
    {
        a = devicetokenmanager;
        super();
    }
}
