// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public class ha
    implements Future
{

    private final Object xC;

    public ha(Object obj)
    {
        xC = obj;
    }

    public boolean cancel(boolean flag)
    {
        return false;
    }

    public Object get()
    {
        return xC;
    }

    public Object get(long l, TimeUnit timeunit)
    {
        return xC;
    }

    public boolean isCancelled()
    {
        return false;
    }

    public boolean isDone()
    {
        return true;
    }
}
