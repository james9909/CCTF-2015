// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part15;

import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;

// Referenced classes of package com.mp4parser.iso14496.part15:
//            HevcDecoderConfigurationRecord

public static class 
{

    public boolean a;
    public boolean b;
    public int c;
    public List d;

    public boolean equals(Object obj)
    {
        boolean flag;
        if (this == obj)
        {
            flag = true;
        } else
        {
            flag = false;
            if (obj != null)
            {
                Class class1 = getClass();
                Class class2 = obj.getClass();
                flag = false;
                if (class1 == class2)
                {
                      = ()obj;
                    boolean flag1 = a;
                    boolean flag2 = .a;
                    flag = false;
                    if (flag1 == flag2)
                    {
                        int i = c;
                        int j = .c;
                        flag = false;
                        if (i == j)
                        {
                            boolean flag3 = b;
                            boolean flag4 = .b;
                            flag = false;
                            if (flag3 == flag4)
                            {
                                ListIterator listiterator = d.listIterator();
                                ListIterator listiterator1 = .d.listIterator();
label0:
                                do
                                {
                                    do
                                    {
                                        if (!listiterator.hasNext() || !listiterator1.hasNext())
                                        {
                                            boolean flag5;
                                            byte abyte0[];
                                            byte abyte1[];
                                            if (listiterator.hasNext() || listiterator1.hasNext())
                                            {
                                                flag5 = false;
                                            } else
                                            {
                                                flag5 = true;
                                            }
                                            return flag5;
                                        }
                                        abyte0 = (byte[])listiterator.next();
                                        abyte1 = (byte[])listiterator1.next();
                                        if (abyte0 != null)
                                        {
                                            continue label0;
                                        }
                                    } while (abyte1 == null);
                                    return false;
                                } while (Arrays.equals(abyte0, abyte1));
                                return false;
                            }
                        }
                    }
                }
            }
        }
        return flag;
    }

    public int hashCode()
    {
        int i = 1;
        int j;
        int k;
        int l;
        List list;
        int i1;
        if (a)
        {
            j = i;
        } else
        {
            j = 0;
        }
        k = j * 31;
        if (!b)
        {
            i = 0;
        }
        l = 31 * (31 * (k + i) + c);
        list = d;
        i1 = 0;
        if (list != null)
        {
            i1 = d.hashCode();
        }
        return l + i1;
    }

    public String toString()
    {
        return (new StringBuilder("Array{nal_unit_type=")).append(c).append(", reserved=").append(b).append(", array_completeness=").append(a).append(", num_nals=").append(d.size()).append('}').toString();
    }

    public ()
    {
    }
}
