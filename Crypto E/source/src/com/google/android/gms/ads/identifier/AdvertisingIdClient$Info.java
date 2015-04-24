// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.identifier;


// Referenced classes of package com.google.android.gms.ads.identifier:
//            AdvertisingIdClient

public static final class lr
{

    private final String lq;
    private final boolean lr;

    public String getId()
    {
        return lq;
    }

    public boolean isLimitAdTrackingEnabled()
    {
        return lr;
    }

    public String toString()
    {
        return (new StringBuilder()).append("{").append(lq).append("}").append(lr).toString();
    }

    public (String s, boolean flag)
    {
        lq = s;
        lr = flag;
    }
}
