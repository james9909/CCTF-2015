// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.cloudsave.Entity;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class jq
{

    public static final DataHolder a(int i, Entity entity)
    {
        ArrayList arraylist = new ArrayList();
        if (entity != null)
        {
            arraylist.add(entity);
        }
        return a(i, ((Collection) (arraylist)));
    }

    public static final DataHolder a(int i, Collection collection)
    {
        com.google.android.gms.common.data.DataHolder.a a1 = com.google.android.gms.common.data.e.jm();
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); com.google.android.gms.common.data.e.a(a1, (Entity)iterator.next())) { }
        return a1.bD(i);
    }

    public static final DataHolder d(Entity entity)
    {
        return a(0, entity);
    }

    public static final DataHolder e(Collection collection)
    {
        return a(0, collection);
    }
}
