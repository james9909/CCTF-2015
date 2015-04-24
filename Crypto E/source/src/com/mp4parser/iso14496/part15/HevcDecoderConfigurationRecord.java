// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mp4parser.iso14496.part15;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class HevcDecoderConfigurationRecord
{
    public static class Array
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
                        Array array = (Array)obj;
                        boolean flag1 = a;
                        boolean flag2 = array.a;
                        flag = false;
                        if (flag1 == flag2)
                        {
                            int i1 = c;
                            int j1 = array.c;
                            flag = false;
                            if (i1 == j1)
                            {
                                boolean flag3 = b;
                                boolean flag4 = array.b;
                                flag = false;
                                if (flag3 == flag4)
                                {
                                    ListIterator listiterator = d.listIterator();
                                    ListIterator listiterator1 = array.d.listIterator();
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
            int i1 = 1;
            int j1;
            int k1;
            int l1;
            List list;
            int i2;
            if (a)
            {
                j1 = i1;
            } else
            {
                j1 = 0;
            }
            k1 = j1 * 31;
            if (!b)
            {
                i1 = 0;
            }
            l1 = 31 * (31 * (k1 + i1) + c);
            list = d;
            i2 = 0;
            if (list != null)
            {
                i2 = d.hashCode();
            }
            return l1 + i2;
        }

        public String toString()
        {
            return (new StringBuilder("Array{nal_unit_type=")).append(c).append(", reserved=").append(b).append(", array_completeness=").append(a).append(", num_nals=").append(d.size()).append('}').toString();
        }

        public Array()
        {
        }
    }


    boolean A;
    int a;
    int b;
    boolean c;
    int d;
    long e;
    long f;
    int g;
    int h;
    int i;
    int j;
    int k;
    int l;
    int m;
    int n;
    int o;
    int p;
    int q;
    int r;
    int s;
    int t;
    boolean u;
    int v;
    List w;
    boolean x;
    boolean y;
    boolean z;

    public HevcDecoderConfigurationRecord()
    {
        h = 15;
        j = 63;
        l = 63;
        n = 31;
        p = 31;
    }

    public int a()
    {
        Iterator iterator = w.iterator();
        int i1 = 23;
        do
        {
            if (!iterator.hasNext())
            {
                return i1;
            }
            Array array = (Array)iterator.next();
            i1 += 3;
            Iterator iterator1 = array.d.iterator();
            while (iterator1.hasNext()) 
            {
                byte abyte0[] = (byte[])iterator1.next();
                i1 = i1 + 2 + abyte0.length;
            }
        } while (true);
    }

    public void a(ByteBuffer bytebuffer)
    {
        int i3;
        a = IsoTypeReader.f(bytebuffer);
        int i1 = IsoTypeReader.f(bytebuffer);
        b = (i1 & 0xc0) >> 6;
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        boolean flag5;
        int l2;
        if ((i1 & 0x20) > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
        d = i1 & 0x1f;
        e = IsoTypeReader.b(bytebuffer);
        f = IsoTypeReader.n(bytebuffer);
        if ((8L & f >> 44) > 0L)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        x = flag1;
        if ((4L & f >> 44) > 0L)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        y = flag2;
        if ((2L & f >> 44) > 0L)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        z = flag3;
        if ((1L & f >> 44) > 0L)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        A = flag4;
        f = 0x7fffffffffffL & f;
        g = IsoTypeReader.f(bytebuffer);
        j1 = IsoTypeReader.d(bytebuffer);
        h = (0xf000 & j1) >> 12;
        i = j1 & 0xfff;
        k1 = IsoTypeReader.f(bytebuffer);
        j = (k1 & 0xfc) >> 2;
        k = k1 & 3;
        l1 = IsoTypeReader.f(bytebuffer);
        l = (l1 & 0xfc) >> 2;
        m = l1 & 3;
        i2 = IsoTypeReader.f(bytebuffer);
        n = (i2 & 0xf8) >> 3;
        o = i2 & 7;
        j2 = IsoTypeReader.f(bytebuffer);
        p = (j2 & 0xf8) >> 3;
        q = j2 & 7;
        r = IsoTypeReader.d(bytebuffer);
        k2 = IsoTypeReader.f(bytebuffer);
        s = (k2 & 0xc0) >> 6;
        t = (k2 & 0x38) >> 3;
        if ((k2 & 4) > 0)
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        u = flag5;
        v = k2 & 3;
        l2 = IsoTypeReader.f(bytebuffer);
        w = new ArrayList();
        i3 = 0;
_L1:
        Array array;
        int l3;
        if (i3 >= l2)
        {
            return;
        }
        array = new Array();
        int j3 = IsoTypeReader.f(bytebuffer);
        boolean flag6;
        boolean flag7;
        int k3;
        if ((j3 & 0x80) > 0)
        {
            flag6 = true;
        } else
        {
            flag6 = false;
        }
        array.a = flag6;
        if ((j3 & 0x40) > 0)
        {
            flag7 = true;
        } else
        {
            flag7 = false;
        }
        array.b = flag7;
        array.c = j3 & 0x3f;
        k3 = IsoTypeReader.d(bytebuffer);
        array.d = new ArrayList();
        l3 = 0;
_L2:
label0:
        {
            if (l3 < k3)
            {
                break label0;
            }
            w.add(array);
            i3++;
        }
          goto _L1
        byte abyte0[] = new byte[IsoTypeReader.d(bytebuffer)];
        bytebuffer.get(abyte0);
        array.d.add(abyte0);
        l3++;
          goto _L2
    }

    public void b(ByteBuffer bytebuffer)
    {
        IsoTypeWriter.d(bytebuffer, a);
        int i1 = b << 6;
        byte byte0;
        long l1;
        int j1;
        byte byte1;
        Iterator iterator;
        if (c)
        {
            byte0 = 32;
        } else
        {
            byte0 = 0;
        }
        IsoTypeWriter.d(bytebuffer, byte0 + i1 + d);
        IsoTypeWriter.b(bytebuffer, e);
        l1 = f;
        if (x)
        {
            l1 |= 0x800000000000L;
        }
        if (y)
        {
            l1 |= 0x400000000000L;
        }
        if (z)
        {
            l1 |= 0x200000000000L;
        }
        if (A)
        {
            l1 |= 0x100000000000L;
        }
        IsoTypeWriter.d(bytebuffer, l1);
        IsoTypeWriter.d(bytebuffer, g);
        IsoTypeWriter.b(bytebuffer, (h << 12) + i);
        IsoTypeWriter.d(bytebuffer, (j << 2) + k);
        IsoTypeWriter.d(bytebuffer, (l << 2) + m);
        IsoTypeWriter.d(bytebuffer, (n << 3) + o);
        IsoTypeWriter.d(bytebuffer, (p << 3) + q);
        IsoTypeWriter.b(bytebuffer, r);
        j1 = (s << 6) + (t << 3);
        if (u)
        {
            byte1 = 4;
        } else
        {
            byte1 = 0;
        }
        IsoTypeWriter.d(bytebuffer, byte1 + j1 + v);
        IsoTypeWriter.d(bytebuffer, w.size());
        iterator = w.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            Array array = (Array)iterator.next();
            char c1;
            byte byte2;
            Iterator iterator1;
            if (array.a)
            {
                c1 = '\200';
            } else
            {
                c1 = '\0';
            }
            if (array.b)
            {
                byte2 = 64;
            } else
            {
                byte2 = 0;
            }
            IsoTypeWriter.d(bytebuffer, c1 + byte2 + array.c);
            IsoTypeWriter.b(bytebuffer, array.d.size());
            iterator1 = array.d.iterator();
            while (iterator1.hasNext()) 
            {
                byte abyte0[] = (byte[])iterator1.next();
                IsoTypeWriter.b(bytebuffer, abyte0.length);
                bytebuffer.put(abyte0);
            }
        } while (true);
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            HevcDecoderConfigurationRecord hevcdecoderconfigurationrecord = (HevcDecoderConfigurationRecord)obj;
            if (r != hevcdecoderconfigurationrecord.r)
            {
                return false;
            }
            if (q != hevcdecoderconfigurationrecord.q)
            {
                return false;
            }
            if (o != hevcdecoderconfigurationrecord.o)
            {
                return false;
            }
            if (m != hevcdecoderconfigurationrecord.m)
            {
                return false;
            }
            if (a != hevcdecoderconfigurationrecord.a)
            {
                return false;
            }
            if (s != hevcdecoderconfigurationrecord.s)
            {
                return false;
            }
            if (f != hevcdecoderconfigurationrecord.f)
            {
                return false;
            }
            if (g != hevcdecoderconfigurationrecord.g)
            {
                return false;
            }
            if (e != hevcdecoderconfigurationrecord.e)
            {
                return false;
            }
            if (d != hevcdecoderconfigurationrecord.d)
            {
                return false;
            }
            if (b != hevcdecoderconfigurationrecord.b)
            {
                return false;
            }
            if (c != hevcdecoderconfigurationrecord.c)
            {
                return false;
            }
            if (v != hevcdecoderconfigurationrecord.v)
            {
                return false;
            }
            if (i != hevcdecoderconfigurationrecord.i)
            {
                return false;
            }
            if (t != hevcdecoderconfigurationrecord.t)
            {
                return false;
            }
            if (k != hevcdecoderconfigurationrecord.k)
            {
                return false;
            }
            if (h != hevcdecoderconfigurationrecord.h)
            {
                return false;
            }
            if (j != hevcdecoderconfigurationrecord.j)
            {
                return false;
            }
            if (l != hevcdecoderconfigurationrecord.l)
            {
                return false;
            }
            if (n != hevcdecoderconfigurationrecord.n)
            {
                return false;
            }
            if (p != hevcdecoderconfigurationrecord.p)
            {
                return false;
            }
            if (u != hevcdecoderconfigurationrecord.u)
            {
                return false;
            }
            if (w == null ? hevcdecoderconfigurationrecord.w != null : !w.equals(hevcdecoderconfigurationrecord.w))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i1 = 1;
        int j1 = 31 * (31 * a + b);
        int k1;
        int l1;
        int i2;
        List list;
        int j2;
        if (c)
        {
            k1 = i1;
        } else
        {
            k1 = 0;
        }
        l1 = 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (k1 + j1) + d) + (int)(e ^ e >>> 32)) + (int)(f ^ f >>> 32)) + g) + h) + i) + j) + k) + l) + m) + n) + o) + p) + q) + r) + s) + t);
        if (!u)
        {
            i1 = 0;
        }
        i2 = 31 * (31 * (l1 + i1) + v);
        list = w;
        j2 = 0;
        if (list != null)
        {
            j2 = w.hashCode();
        }
        return i2 + j2;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder("HEVCDecoderConfigurationRecord{configurationVersion=")).append(a).append(", general_profile_space=").append(b).append(", general_tier_flag=").append(c).append(", general_profile_idc=").append(d).append(", general_profile_compatibility_flags=").append(e).append(", general_constraint_indicator_flags=").append(f).append(", general_level_idc=").append(g);
        String s1;
        StringBuilder stringbuilder1;
        String s2;
        StringBuilder stringbuilder2;
        String s3;
        StringBuilder stringbuilder3;
        String s4;
        StringBuilder stringbuilder4;
        String s5;
        if (h != 15)
        {
            s1 = (new StringBuilder(", reserved1=")).append(h).toString();
        } else
        {
            s1 = "";
        }
        stringbuilder1 = stringbuilder.append(s1).append(", min_spatial_segmentation_idc=").append(i);
        if (j != 63)
        {
            s2 = (new StringBuilder(", reserved2=")).append(j).toString();
        } else
        {
            s2 = "";
        }
        stringbuilder2 = stringbuilder1.append(s2).append(", parallelismType=").append(k);
        if (l != 63)
        {
            s3 = (new StringBuilder(", reserved3=")).append(l).toString();
        } else
        {
            s3 = "";
        }
        stringbuilder3 = stringbuilder2.append(s3).append(", chromaFormat=").append(m);
        if (n != 31)
        {
            s4 = (new StringBuilder(", reserved4=")).append(n).toString();
        } else
        {
            s4 = "";
        }
        stringbuilder4 = stringbuilder3.append(s4).append(", bitDepthLumaMinus8=").append(o);
        if (p != 31)
        {
            s5 = (new StringBuilder(", reserved5=")).append(p).toString();
        } else
        {
            s5 = "";
        }
        return stringbuilder4.append(s5).append(", bitDepthChromaMinus8=").append(q).append(", avgFrameRate=").append(r).append(", constantFrameRate=").append(s).append(", numTemporalLayers=").append(t).append(", temporalIdNested=").append(u).append(", lengthSizeMinusOne=").append(v).append(", arrays=").append(w).append('}').toString();
    }
}
