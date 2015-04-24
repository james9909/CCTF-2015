// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.primitives;


public final class LongUtils
{

    private LongUtils()
    {
    }

    public static int a(long l, long l1)
    {
        if (l < l1)
        {
            return -1;
        }
        return l != l1 ? 1 : 0;
    }
}
