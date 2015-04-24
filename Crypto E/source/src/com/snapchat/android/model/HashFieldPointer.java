// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;


public class HashFieldPointer
{

    protected String mField;
    protected String mKey;

    public HashFieldPointer()
    {
    }

    public HashFieldPointer(String s, String s1)
    {
        mKey = s;
        mField = s1;
    }

    public String a()
    {
        return mKey;
    }

    public String b()
    {
        return mField;
    }
}
