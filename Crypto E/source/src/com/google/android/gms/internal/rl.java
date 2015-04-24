// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            rs, ri, rt, rq, 
//            rj

public class rl
{

    protected final Class aGp;
    protected final boolean aGq;
    public final int tag;
    protected final int type;

    private rl(int i, Class class1, int j, boolean flag)
    {
        type = i;
        aGp = class1;
        tag = j;
        aGq = flag;
    }

    public static rl a(int i, Class class1, int j)
    {
        return new rl(i, class1, j, false);
    }

    private Object n(List list)
    {
        int i = 0;
        ArrayList arraylist = new ArrayList();
        for (int j = 0; j < list.size(); j++)
        {
            rs rs1 = (rs)list.get(j);
            if (rs1.aGA.length != 0)
            {
                a(rs1, arraylist);
            }
        }

        int k = arraylist.size();
        Object obj;
        if (k == 0)
        {
            obj = null;
        } else
        {
            obj = aGp.cast(Array.newInstance(aGp.getComponentType(), k));
            while (i < k) 
            {
                Array.set(obj, i, arraylist.get(i));
                i++;
            }
        }
        return obj;
    }

    private Object o(List list)
    {
        if (list.isEmpty())
        {
            return null;
        } else
        {
            rs rs1 = (rs)list.get(-1 + list.size());
            return aGp.cast(x(ri.p(rs1.aGA)));
        }
    }

    int F(Object obj)
    {
        if (aGq)
        {
            return G(obj);
        } else
        {
            return H(obj);
        }
    }

    protected int G(Object obj)
    {
        int i = 0;
        int j = Array.getLength(obj);
        for (int k = 0; k < j; k++)
        {
            if (Array.get(obj, k) != null)
            {
                i += H(Array.get(obj, k));
            }
        }

        return i;
    }

    protected int H(Object obj)
    {
        int i = rt.iq(tag);
        switch (type)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unknown type ").append(type).toString());

        case 10: // '\n'
            return rj.b(i, (rq)obj);

        case 11: // '\013'
            return rj.c(i, (rq)obj);
        }
    }

    protected void a(rs rs1, List list)
    {
        list.add(x(ri.p(rs1.aGA)));
    }

    void a(Object obj, rj rj1)
    {
        if (aGq)
        {
            c(obj, rj1);
            return;
        } else
        {
            b(obj, rj1);
            return;
        }
    }

    protected void b(Object obj, rj rj1)
    {
        rj1.ii(tag);
        type;
        JVM INSTR tableswitch 10 11: default 36
    //                   10 76
    //                   11 105;
           goto _L1 _L2 _L3
_L1:
        IOException ioexception;
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown type ").append(type).toString());
_L2:
        try
        {
            rq rq1 = (rq)obj;
            int i = rt.iq(tag);
            rj1.b(rq1);
            rj1.D(i, 4);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            throw new IllegalStateException(ioexception);
        }
_L3:
        rj1.c((rq)obj);
        return;
    }

    protected void c(Object obj, rj rj1)
    {
        int i = Array.getLength(obj);
        for (int j = 0; j < i; j++)
        {
            Object obj1 = Array.get(obj, j);
            if (obj1 != null)
            {
                b(obj1, rj1);
            }
        }

    }

    final Object m(List list)
    {
        if (list == null)
        {
            return null;
        }
        if (aGq)
        {
            return n(list);
        } else
        {
            return o(list);
        }
    }

    protected Object x(ri ri1)
    {
        Class class1;
        InstantiationException instantiationexception;
        if (aGq)
        {
            class1 = aGp.getComponentType();
        } else
        {
            class1 = aGp;
        }
        type;
        JVM INSTR tableswitch 10 11: default 40
    //                   10 109
    //                   11 134;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown type ").append(type).toString());
_L2:
        rq rq1;
        rq rq2;
        try
        {
            rq2 = (rq)class1.newInstance();
            ri1.a(rq2, rt.iq(tag));
        }
        // Misplaced declaration of an exception variable
        catch (InstantiationException instantiationexception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Error creating instance of class ").append(class1).toString(), instantiationexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Error creating instance of class ").append(class1).toString(), illegalaccessexception);
        }
        catch (IOException ioexception)
        {
            throw new IllegalArgumentException("Error reading extension field", ioexception);
        }
        return rq2;
_L3:
        rq1 = (rq)class1.newInstance();
        ri1.a(rq1);
        return rq1;
    }
}
