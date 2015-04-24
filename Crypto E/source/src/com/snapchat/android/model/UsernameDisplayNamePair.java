// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import android.util.Pair;

public class UsernameDisplayNamePair
{

    private final Pair pair;

    public UsernameDisplayNamePair(String s, String s1)
    {
        pair = new Pair(s, s1);
    }

    public String a()
    {
        return (String)pair.first;
    }

    public String b()
    {
        return (String)pair.second;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof UsernameDisplayNamePair)
        {
            return pair.equals(((UsernameDisplayNamePair)obj).pair);
        } else
        {
            return false;
        }
    }

    public int hashCode()
    {
        return pair.hashCode();
    }
}
