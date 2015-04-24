// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;


class PositionMap
    implements Cloneable
{
    static class ContainerHelpers
    {

        static final boolean a[] = new boolean[0];
        static final int b[] = new int[0];
        static final long c[] = new long[0];
        static final Object d[] = new Object[0];


        ContainerHelpers()
        {
        }
    }


    private static final Object a = new Object();
    private boolean b;
    private int c[];
    private Object d[];
    private int e;

    public PositionMap()
    {
        this(10);
    }

    public PositionMap(int i)
    {
        b = false;
        if (i == 0)
        {
            c = ContainerHelpers.b;
            d = ContainerHelpers.d;
        } else
        {
            int j = d(i);
            c = new int[j];
            d = new Object[j];
        }
        e = 0;
    }

    static int c(int i)
    {
        int j = 4;
        do
        {
label0:
            {
                if (j < 32)
                {
                    if (i > -12 + (1 << j))
                    {
                        break label0;
                    }
                    i = -12 + (1 << j);
                }
                return i;
            }
            j++;
        } while (true);
    }

    private void c()
    {
        int i = e;
        int ai[] = c;
        Object aobj[] = d;
        int j = 0;
        int k = 0;
        for (; j < i; j++)
        {
            Object obj = aobj[j];
            if (obj == a)
            {
                continue;
            }
            if (j != k)
            {
                ai[k] = ai[j];
                aobj[k] = obj;
                aobj[j] = null;
            }
            k++;
        }

        b = false;
        e = k;
    }

    static int d(int i)
    {
        return c(i * 4) / 4;
    }

    public int a(int i)
    {
        if (b)
        {
            c();
        }
        return c[i];
    }

    public PositionMap a()
    {
        PositionMap positionmap;
        try
        {
            positionmap = (PositionMap)super.clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            return null;
        }
        try
        {
            positionmap.c = (int[])c.clone();
            positionmap.d = (Object[])((Object []) (d)).clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception1)
        {
            return positionmap;
        }
        return positionmap;
    }

    public int b()
    {
        if (b)
        {
            c();
        }
        return e;
    }

    public Object b(int i)
    {
        if (b)
        {
            c();
        }
        return d[i];
    }

    public Object clone()
    {
        return a();
    }

    public String toString()
    {
        if (b() <= 0)
        {
            return "{}";
        }
        StringBuilder stringbuilder = new StringBuilder(28 * e);
        stringbuilder.append('{');
        int i = 0;
        while (i < e) 
        {
            if (i > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append(a(i));
            stringbuilder.append('=');
            Object obj = b(i);
            if (obj != this)
            {
                stringbuilder.append(obj);
            } else
            {
                stringbuilder.append("(this Map)");
            }
            i++;
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
