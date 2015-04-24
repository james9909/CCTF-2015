// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.util.system.Clock;
import java.util.Comparator;
import java.util.Iterator;
import java.util.PriorityQueue;

public class ReleaseWindow
{
    class TimestampPair
    {

        public long a;
        public long b;
        final ReleaseWindow c;

        public TimestampPair(long l, long l1)
        {
            c = ReleaseWindow.this;
            super();
            a = l;
            b = l1;
        }
    }


    protected Clock a;
    private boolean b;
    private long c;
    private TimestampPair d;
    private PriorityQueue e;

    public ReleaseWindow()
    {
        d = new TimestampPair(0L, 0L);
        e = new PriorityQueue(5, new Comparator() {

            final ReleaseWindow a;

            public int a(TimestampPair timestamppair, TimestampPair timestamppair1)
            {
                return Long.signum(timestamppair.b - timestamppair1.b);
            }

            public int compare(Object obj, Object obj1)
            {
                return a((TimestampPair)obj, (TimestampPair)obj1);
            }

            
            {
                a = ReleaseWindow.this;
                super();
            }
        });
        SnapchatApplication.e().a(this);
    }

    private void a(TimestampPair timestamppair)
    {
        if (timestamppair.b > d.b)
        {
            d = timestamppair;
        }
    }

    private void b(long l)
    {
        Iterator iterator = e.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            TimestampPair timestamppair = (TimestampPair)iterator.next();
            if (l - timestamppair.b > 1500L)
            {
                a(timestamppair);
                iterator.remove();
            }
        } while (true);
    }

    public void a()
    {
        d = new TimestampPair(0L, 0L);
        c = 0L;
        e.clear();
    }

    public void a(long l)
    {
        if (b)
        {
            long l1 = a.a();
            if (l > c)
            {
                c = l;
                e.add(new TimestampPair(l, l1));
            }
            b(l1);
        }
    }

    public void a(boolean flag)
    {
        b = flag;
    }

    public long b()
    {
        b(a.a());
        Timber.c("ReleaseWindow", (new StringBuilder()).append("getLatestSeenItemTimestamp - latestItemTimestamp ").append(d.a).append(" lastNotifiedTimestamp ").append(d.b).toString(), new Object[0]);
        return d.a;
    }
}
