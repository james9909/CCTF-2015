// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.memory;

import java.util.concurrent.LinkedBlockingQueue;
import javax.inject.Provider;

public class ResourcePool
{

    private final LinkedBlockingQueue a;
    private final int b;

    ResourcePool(LinkedBlockingQueue linkedblockingqueue)
    {
        a = linkedblockingqueue;
        b = linkedblockingqueue.size();
    }

    public ResourcePool(Provider provider, int i)
    {
        this(a(provider, i));
    }

    private static LinkedBlockingQueue a(Provider provider, int i)
    {
        LinkedBlockingQueue linkedblockingqueue = new LinkedBlockingQueue(i);
        for (int j = 0; j < i; j++)
        {
            linkedblockingqueue.offer(provider.get());
        }

        return linkedblockingqueue;
    }

    public int a()
    {
        return b;
    }

    public void a(Object obj)
    {
        a.offer(obj);
    }

    public int b()
    {
        return a.size();
    }

    public Object c()
    {
        return a.poll();
    }
}
