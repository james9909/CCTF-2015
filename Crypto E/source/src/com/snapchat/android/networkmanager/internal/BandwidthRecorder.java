// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.internal;

import com.snapchat.android.Timber;
import com.snapchat.android.networkmanager.BandwidthEstimator;
import com.snapchat.android.util.system.Clock;

public class BandwidthRecorder
{

    private final BandwidthEstimator a;
    private final Clock b;
    private long c;

    public BandwidthRecorder()
    {
        this(BandwidthEstimator.a(), new Clock());
    }

    protected BandwidthRecorder(BandwidthEstimator bandwidthestimator, Clock clock)
    {
        c = 0x7fffffffffffffffL;
        a = bandwidthestimator;
        b = clock;
    }

    public void a()
    {
        c = b.b();
    }

    public void a(long l)
    {
        if (l == 0L)
        {
            Timber.d("BandwidthRecorder", "Ignoring bandwidth report of 0 bytes downloaded.", new Object[0]);
            return;
        }
        if (c == 0x7fffffffffffffffL)
        {
            throw new IllegalStateException("Must call start before stop.");
        } else
        {
            long l1 = b.b() - c;
            long l2 = (long)((double)(8L * l) / ((double)l1 / 1000D));
            Object aobj[] = new Object[4];
            aobj[0] = Long.valueOf(l);
            aobj[1] = Long.valueOf(l1);
            aobj[2] = Double.valueOf((double)l1 / 1000D);
            aobj[3] = Long.valueOf(l2);
            Timber.c("BandwidthRecorder", "BANDWIDTH: Downloaded %d bytes in %d milliseconds (%d seconds). Computed bandwidth of %d bps.", aobj);
            a.a(l2);
            return;
        }
    }
}
