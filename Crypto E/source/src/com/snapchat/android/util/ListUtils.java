// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import java.util.ArrayList;
import java.util.List;

public class ListUtils
{

    public ListUtils()
    {
    }

    public static List a(Object obj)
    {
        ArrayList arraylist = new ArrayList(1);
        arraylist.add(obj);
        return arraylist;
    }
}
