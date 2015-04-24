// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            rj, rl, rs

class rn
{

    private rl aGv;
    private Object aGw;
    private List aGx;

    rn()
    {
        aGx = new ArrayList();
    }

    private byte[] toByteArray()
    {
        byte abyte0[] = new byte[c()];
        a(rj.q(abyte0));
        return abyte0;
    }

    void a(rj rj1)
    {
        if (aGw != null)
        {
            aGv.a(aGw, rj1);
        } else
        {
            Iterator iterator = aGx.iterator();
            while (iterator.hasNext()) 
            {
                ((rs)iterator.next()).a(rj1);
            }
        }
    }

    void a(rs rs1)
    {
        aGx.add(rs1);
    }

    Object b(rl rl1)
    {
        if (aGw != null)
        {
            if (aGv != rl1)
            {
                throw new IllegalStateException("Tried to getExtension with a differernt Extension.");
            }
        } else
        {
            aGv = rl1;
            aGw = rl1.m(aGx);
            aGx = null;
        }
        return aGw;
    }

    int c()
    {
        int i;
        if (aGw != null)
        {
            i = aGv.F(aGw);
        } else
        {
            Iterator iterator = aGx.iterator();
            i = 0;
            while (iterator.hasNext()) 
            {
                i += ((rs)iterator.next()).c();
            }
        }
        return i;
    }

    public boolean equals(Object obj)
    {
        boolean flag1;
        if (obj == this)
        {
            flag1 = true;
        } else
        {
            boolean flag = obj instanceof rn;
            flag1 = false;
            if (flag)
            {
                rn rn1 = (rn)obj;
                if (aGw != null && rn1.aGw != null)
                {
                    rl rl1 = aGv;
                    rl rl2 = rn1.aGv;
                    flag1 = false;
                    if (rl1 == rl2)
                    {
                        if (!aGv.aGp.isArray())
                        {
                            return aGw.equals(rn1.aGw);
                        }
                        if (aGw instanceof byte[])
                        {
                            return Arrays.equals((byte[])(byte[])aGw, (byte[])(byte[])rn1.aGw);
                        }
                        if (aGw instanceof int[])
                        {
                            return Arrays.equals((int[])(int[])aGw, (int[])(int[])rn1.aGw);
                        }
                        if (aGw instanceof long[])
                        {
                            return Arrays.equals((long[])(long[])aGw, (long[])(long[])rn1.aGw);
                        }
                        if (aGw instanceof float[])
                        {
                            return Arrays.equals((float[])(float[])aGw, (float[])(float[])rn1.aGw);
                        }
                        if (aGw instanceof double[])
                        {
                            return Arrays.equals((double[])(double[])aGw, (double[])(double[])rn1.aGw);
                        }
                        if (aGw instanceof boolean[])
                        {
                            return Arrays.equals((boolean[])(boolean[])aGw, (boolean[])(boolean[])rn1.aGw);
                        } else
                        {
                            return Arrays.deepEquals((Object[])(Object[])aGw, (Object[])(Object[])rn1.aGw);
                        }
                    }
                } else
                {
                    if (aGx != null && rn1.aGx != null)
                    {
                        return aGx.equals(rn1.aGx);
                    }
                    boolean flag2;
                    try
                    {
                        flag2 = Arrays.equals(toByteArray(), rn1.toByteArray());
                    }
                    catch (IOException ioexception)
                    {
                        throw new IllegalStateException(ioexception);
                    }
                    return flag2;
                }
            }
        }
        return flag1;
    }

    public int hashCode()
    {
        int i;
        try
        {
            i = Arrays.hashCode(toByteArray());
        }
        catch (IOException ioexception)
        {
            throw new IllegalStateException(ioexception);
        }
        return i + 527;
    }
}
