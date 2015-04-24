// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.IsoTypeReader;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.objectdescriptors:
//            BaseDescriptor, ObjectDescriptorFactory, DecoderConfigDescriptor, SLConfigDescriptor

public class ESDescriptor extends BaseDescriptor
{

    private static Logger n = Logger.getLogger(com/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor.getName());
    int a;
    int b;
    int c;
    int d;
    int e;
    int f;
    String g;
    int h;
    int i;
    int j;
    DecoderConfigDescriptor k;
    SLConfigDescriptor l;
    List m;

    public ESDescriptor()
    {
        f = 0;
        m = new ArrayList();
    }

    public void a(ByteBuffer bytebuffer)
    {
        a = IsoTypeReader.d(bytebuffer);
        int i1 = IsoTypeReader.f(bytebuffer);
        b = i1 >>> 7;
        c = 1 & i1 >>> 6;
        d = 1 & i1 >>> 5;
        e = i1 & 0x1f;
        if (b == 1)
        {
            i = IsoTypeReader.d(bytebuffer);
        }
        if (c == 1)
        {
            f = IsoTypeReader.f(bytebuffer);
            g = IsoTypeReader.a(bytebuffer, f);
        }
        if (d == 1)
        {
            j = IsoTypeReader.d(bytebuffer);
        }
        int j1 = 1 + (2 + (1 + c()));
        byte byte0;
        int k1;
        int l1;
        int i2;
        int j2;
        byte byte1;
        int k2;
        int l2;
        int i3;
        if (b == 1)
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        k1 = j1 + byte0;
        if (c == 1)
        {
            l1 = 1 + f;
        } else
        {
            l1 = 0;
        }
        i2 = l1 + k1;
        j2 = d;
        byte1 = 0;
        if (j2 == 1)
        {
            byte1 = 2;
        }
        k2 = i2 + byte1;
        l2 = bytebuffer.position();
        if (a() > k2 + 2)
        {
            BaseDescriptor basedescriptor2 = ObjectDescriptorFactory.a(-1, bytebuffer);
            long l5 = bytebuffer.position() - l2;
            Logger logger2 = n;
            StringBuilder stringbuilder2 = (new StringBuilder()).append(basedescriptor2).append(" - ESDescriptor1 read: ").append(l5).append(", size: ");
            int j3;
            BaseDescriptor basedescriptor1;
            Logger logger1;
            StringBuilder stringbuilder1;
            int j4;
            Integer integer2;
            if (basedescriptor2 != null)
            {
                integer2 = Integer.valueOf(basedescriptor2.a());
            } else
            {
                integer2 = null;
            }
            logger2.finer(stringbuilder2.append(integer2).toString());
            if (basedescriptor2 != null)
            {
                int k4 = basedescriptor2.a();
                bytebuffer.position(l2 + k4);
                i3 = k4 + k2;
            } else
            {
                i3 = (int)(l5 + (long)k2);
            }
            if (basedescriptor2 instanceof DecoderConfigDescriptor)
            {
                k = (DecoderConfigDescriptor)basedescriptor2;
            }
        } else
        {
            i3 = k2;
        }
        j3 = bytebuffer.position();
        if (a() > i3 + 2)
        {
            basedescriptor1 = ObjectDescriptorFactory.a(-1, bytebuffer);
            long l4 = bytebuffer.position() - j3;
            logger1 = n;
            stringbuilder1 = (new StringBuilder()).append(basedescriptor1).append(" - ESDescriptor2 read: ").append(l4).append(", size: ");
            Integer integer1;
            if (basedescriptor1 != null)
            {
                integer1 = Integer.valueOf(basedescriptor1.a());
            } else
            {
                integer1 = null;
            }
            logger1.finer(stringbuilder1.append(integer1).toString());
            if (basedescriptor1 != null)
            {
                j4 = basedescriptor1.a();
                bytebuffer.position(j3 + j4);
                i3 += j4;
            } else
            {
                i3 = (int)(l4 + (long)i3);
            }
            if (basedescriptor1 instanceof SLConfigDescriptor)
            {
                l = (SLConfigDescriptor)basedescriptor1;
            }
        } else
        {
            n.warning("SLConfigDescriptor is missing!");
        }
        do
        {
            if (a() - i3 <= 2)
            {
                return;
            }
            int k3 = bytebuffer.position();
            BaseDescriptor basedescriptor = ObjectDescriptorFactory.a(-1, bytebuffer);
            long l3 = bytebuffer.position() - k3;
            Logger logger = n;
            StringBuilder stringbuilder = (new StringBuilder()).append(basedescriptor).append(" - ESDescriptor3 read: ").append(l3).append(", size: ");
            Integer integer;
            if (basedescriptor != null)
            {
                integer = Integer.valueOf(basedescriptor.a());
            } else
            {
                integer = null;
            }
            logger.finer(stringbuilder.append(integer).toString());
            if (basedescriptor != null)
            {
                int i4 = basedescriptor.a();
                bytebuffer.position(k3 + i4);
                i3 += i4;
            } else
            {
                i3 = (int)(l3 + (long)i3);
            }
            m.add(basedescriptor);
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
            ESDescriptor esdescriptor = (ESDescriptor)obj;
            if (c != esdescriptor.c)
            {
                return false;
            }
            if (f != esdescriptor.f)
            {
                return false;
            }
            if (i != esdescriptor.i)
            {
                return false;
            }
            if (a != esdescriptor.a)
            {
                return false;
            }
            if (j != esdescriptor.j)
            {
                return false;
            }
            if (d != esdescriptor.d)
            {
                return false;
            }
            if (h != esdescriptor.h)
            {
                return false;
            }
            if (b != esdescriptor.b)
            {
                return false;
            }
            if (e != esdescriptor.e)
            {
                return false;
            }
            if (g == null ? esdescriptor.g != null : !g.equals(esdescriptor.g))
            {
                return false;
            }
            if (k == null ? esdescriptor.k != null : !k.equals(esdescriptor.k))
            {
                return false;
            }
            if (m == null ? esdescriptor.m != null : !m.equals(esdescriptor.m))
            {
                return false;
            }
            if (l == null ? esdescriptor.l != null : !l.equals(esdescriptor.l))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        int i1 = 31 * (31 * (31 * (31 * (31 * (31 * a + b) + c) + d) + e) + f);
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        List list;
        int l2;
        if (g != null)
        {
            j1 = g.hashCode();
        } else
        {
            j1 = 0;
        }
        k1 = 31 * (31 * (31 * (31 * (j1 + i1) + h) + i) + j);
        if (k != null)
        {
            l1 = k.hashCode();
        } else
        {
            l1 = 0;
        }
        i2 = 31 * (l1 + k1);
        if (l != null)
        {
            j2 = l.hashCode();
        } else
        {
            j2 = 0;
        }
        k2 = 31 * (j2 + i2);
        list = m;
        l2 = 0;
        if (list != null)
        {
            l2 = m.hashCode();
        }
        return k2 + l2;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("ESDescriptor");
        stringbuilder.append("{esId=").append(a);
        stringbuilder.append(", streamDependenceFlag=").append(b);
        stringbuilder.append(", URLFlag=").append(c);
        stringbuilder.append(", oCRstreamFlag=").append(d);
        stringbuilder.append(", streamPriority=").append(e);
        stringbuilder.append(", URLLength=").append(f);
        stringbuilder.append(", URLString='").append(g).append('\'');
        stringbuilder.append(", remoteODFlag=").append(h);
        stringbuilder.append(", dependsOnEsId=").append(i);
        stringbuilder.append(", oCREsId=").append(j);
        stringbuilder.append(", decoderConfigDescriptor=").append(k);
        stringbuilder.append(", slConfigDescriptor=").append(l);
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
