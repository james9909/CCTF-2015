// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;

public final class Challenge
{

    private final String a;
    private final String b;

    public Challenge(String s, String s1)
    {
        a = s;
        b = s1;
    }

    public String a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        return (obj instanceof Challenge) && Util.a(a, ((Challenge)obj).a) && Util.a(b, ((Challenge)obj).b);
    }

    public int hashCode()
    {
        int i;
        int j;
        String s;
        int k;
        if (b != null)
        {
            i = b.hashCode();
        } else
        {
            i = 0;
        }
        j = 31 * (i + 899);
        s = a;
        k = 0;
        if (s != null)
        {
            k = a.hashCode();
        }
        return j + k;
    }

    public String toString()
    {
        return (new StringBuilder()).append(a).append(" realm=\"").append(b).append("\"").toString();
    }
}
