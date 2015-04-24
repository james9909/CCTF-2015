// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.common.internal.s;

// Referenced classes of package com.google.android.gms.common.data:
//            DataHolder

public abstract class d
{

    protected final DataHolder Rb;
    protected int Sp;
    private int Sq;

    public d(DataHolder dataholder, int i)
    {
        Rb = (DataHolder)s.l(dataholder);
        bz(i);
    }

    protected void a(String s1, CharArrayBuffer chararraybuffer)
    {
        Rb.a(s1, Sp, Sq, chararraybuffer);
    }

    public boolean aX(String s1)
    {
        return Rb.aX(s1);
    }

    protected Uri aY(String s1)
    {
        return Rb.g(s1, Sp, Sq);
    }

    public boolean aZ(String s1)
    {
        return Rb.h(s1, Sp, Sq);
    }

    protected void bz(int i)
    {
        boolean flag;
        if (i >= 0 && i < Rb.getCount())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s.N(flag);
        Sp = i;
        Sq = Rb.bB(Sp);
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof d;
        boolean flag1 = false;
        if (flag)
        {
            d d1 = (d)obj;
            boolean flag2 = r.equal(Integer.valueOf(d1.Sp), Integer.valueOf(Sp));
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = r.equal(Integer.valueOf(d1.Sq), Integer.valueOf(Sq));
                flag1 = false;
                if (flag3)
                {
                    DataHolder dataholder = d1.Rb;
                    DataHolder dataholder1 = Rb;
                    flag1 = false;
                    if (dataholder == dataholder1)
                    {
                        flag1 = true;
                    }
                }
            }
        }
        return flag1;
    }

    protected boolean getBoolean(String s1)
    {
        return Rb.d(s1, Sp, Sq);
    }

    public byte[] getByteArray(String s1)
    {
        return Rb.f(s1, Sp, Sq);
    }

    protected float getFloat(String s1)
    {
        return Rb.e(s1, Sp, Sq);
    }

    public int getInteger(String s1)
    {
        return Rb.b(s1, Sp, Sq);
    }

    public long getLong(String s1)
    {
        return Rb.a(s1, Sp, Sq);
    }

    public String getString(String s1)
    {
        return Rb.c(s1, Sp, Sq);
    }

    public int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(Sp);
        aobj[1] = Integer.valueOf(Sq);
        aobj[2] = Rb;
        return r.hashCode(aobj);
    }

    public boolean isDataValid()
    {
        return !Rb.isClosed();
    }

    protected int jl()
    {
        return Sp;
    }
}
