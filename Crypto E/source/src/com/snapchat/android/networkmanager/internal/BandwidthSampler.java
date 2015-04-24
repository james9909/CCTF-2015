// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.internal;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

public class BandwidthSampler
{
    static class BandwidthSample
    {

        public final long a;

        public BandwidthSample(long l)
        {
            a = l;
        }
    }


    private final Object a;
    private final Queue b;
    private final int c;

    public BandwidthSampler()
    {
        this(5);
    }

    public BandwidthSampler(int i)
    {
        a = new Object();
        b = new LinkedList();
        c = i;
    }

    public long a()
    {
label0:
        {
            synchronized (a)
            {
                if (b.size() != 0)
                {
                    break label0;
                }
            }
            return 0L;
        }
        Iterator iterator = b.iterator();
        long l = 0L;
        while (iterator.hasNext()) 
        {
            l += ((BandwidthSample)iterator.next()).a;
        }
        long l1 = l / (long)b.size();
        obj;
        JVM INSTR monitorexit ;
        return l1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(long l)
    {
        synchronized (a)
        {
            if (b.size() == c)
            {
                b.remove();
            }
            b.add(new BandwidthSample(l));
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
