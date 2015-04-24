// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager;


public class BandwidthEstimate
{

    private final String a;
    private final long b;

    public String a()
    {
        return a;
    }

    public long b()
    {
        return b;
    }

    public String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = a();
        aobj[1] = Long.valueOf(b());
        return String.format("[%s - %d bps]", aobj);
    }
}
