// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager;


public final class DownloadPriority extends Enum
{

    public static final DownloadPriority a;
    public static final DownloadPriority b;
    public static final DownloadPriority c;
    public static final DownloadPriority d;
    private static final DownloadPriority e[];

    private DownloadPriority(String s, int i)
    {
        super(s, i);
    }

    public static DownloadPriority valueOf(String s)
    {
        return (DownloadPriority)Enum.valueOf(com/snapchat/android/networkmanager/DownloadPriority, s);
    }

    public static DownloadPriority[] values()
    {
        return (DownloadPriority[])e.clone();
    }

    static 
    {
        a = new DownloadPriority("LOW", 0);
        b = new DownloadPriority("MEDIUM", 1);
        c = new DownloadPriority("MEDIUM_HIGH", 2);
        d = new DownloadPriority("HIGH", 3);
        DownloadPriority adownloadpriority[] = new DownloadPriority[4];
        adownloadpriority[0] = a;
        adownloadpriority[1] = b;
        adownloadpriority[2] = c;
        adownloadpriority[3] = d;
        e = adownloadpriority;
    }
}
