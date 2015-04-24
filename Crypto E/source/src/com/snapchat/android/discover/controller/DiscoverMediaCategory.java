// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller;


public final class DiscoverMediaCategory extends Enum
{

    public static final DiscoverMediaCategory a;
    public static final DiscoverMediaCategory b;
    private static final DiscoverMediaCategory c[];

    private DiscoverMediaCategory(String s, int i)
    {
        super(s, i);
    }

    public static DiscoverMediaCategory valueOf(String s)
    {
        return (DiscoverMediaCategory)Enum.valueOf(com/snapchat/android/discover/controller/DiscoverMediaCategory, s);
    }

    public static DiscoverMediaCategory[] values()
    {
        return (DiscoverMediaCategory[])c.clone();
    }

    static 
    {
        a = new DiscoverMediaCategory("HOME_PAGE", 0);
        b = new DiscoverMediaCategory("EDITION", 1);
        DiscoverMediaCategory adiscovermediacategory[] = new DiscoverMediaCategory[2];
        adiscovermediacategory[0] = a;
        adiscovermediacategory[1] = b;
        c = adiscovermediacategory;
    }
}
