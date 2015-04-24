// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.ContentValues;
import com.snapchat.android.database.schema.Schema;

public class ContentValuesBuilder
{

    private final ContentValues a = new ContentValues();

    public ContentValuesBuilder()
    {
    }

    public ContentValues a()
    {
        return a;
    }

    public ContentValuesBuilder a(Schema schema, double d)
    {
        a.put(schema.c(), Double.valueOf(d));
        return this;
    }

    public ContentValuesBuilder a(Schema schema, int i)
    {
        a.put(schema.c(), Integer.valueOf(i));
        return this;
    }

    public ContentValuesBuilder a(Schema schema, long l)
    {
        a.put(schema.c(), Long.valueOf(l));
        return this;
    }

    public ContentValuesBuilder a(Schema schema, String s)
    {
        a.put(schema.c(), s);
        return this;
    }

    public ContentValuesBuilder a(Schema schema, boolean flag)
    {
        ContentValues contentvalues = a;
        String s = schema.c();
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        contentvalues.put(s, Integer.valueOf(i));
        return this;
    }
}
