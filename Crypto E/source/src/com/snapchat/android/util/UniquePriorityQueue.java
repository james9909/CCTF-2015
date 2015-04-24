// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.util.PriorityQueue;

public class UniquePriorityQueue extends PriorityQueue
{

    public UniquePriorityQueue()
    {
    }

    public boolean offer(Object obj)
    {
        if (contains(obj))
        {
            return false;
        } else
        {
            return super.offer(obj);
        }
    }
}
