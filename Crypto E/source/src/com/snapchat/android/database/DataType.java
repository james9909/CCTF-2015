// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database;


public final class DataType extends Enum
{

    public static final DataType a;
    public static final DataType b;
    public static final DataType c;
    public static final DataType d;
    public static final DataType e;
    private static final DataType g[];
    private String f;

    private DataType(String s, int i, String s1)
    {
        super(s, i);
        f = s1;
    }

    public static DataType valueOf(String s)
    {
        return (DataType)Enum.valueOf(com/snapchat/android/database/DataType, s);
    }

    public static DataType[] values()
    {
        return (DataType[])g.clone();
    }

    public String toString()
    {
        return f;
    }

    static 
    {
        a = new DataType("TEXT", 0, "TEXT");
        b = new DataType("INTEGER", 1, "INTEGER");
        c = new DataType("LONG", 2, "INTEGER");
        d = new DataType("BOOLEAN", 3, "INTEGER");
        e = new DataType("REAL", 4, "REAL");
        DataType adatatype[] = new DataType[5];
        adatatype[0] = a;
        adatatype[1] = b;
        adatatype[2] = c;
        adatatype[3] = d;
        adatatype[4] = e;
        g = adatatype;
    }
}
