// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.authoring;

import com.googlecode.mp4parser.util.Matrix;
import java.util.Date;

public class TrackMetaData
    implements Cloneable
{

    private String a;
    private long b;
    private Date c;
    private Date d;
    private Matrix e;
    private long f;
    private int g;

    public TrackMetaData()
    {
        a = "eng";
        c = new Date();
        d = new Date();
        e = Matrix.j;
        f = 1L;
        g = 0;
    }

    public long a()
    {
        return b;
    }

    public void a(long l)
    {
        b = l;
    }

    public void a(Date date)
    {
        c = date;
    }

    public long b()
    {
        return f;
    }

    public void b(Date date)
    {
        d = date;
    }

    public Object clone()
    {
        Object obj;
        try
        {
            obj = super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            return null;
        }
        return obj;
    }
}
