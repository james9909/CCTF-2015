// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public abstract class AbstractSampleEncryptionBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    protected int a;
    protected int b;
    protected byte c[] = {
        -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
        -1, -1, -1, -1, -1, -1
    };
    List d;

    public AbstractSampleEncryptionBox(String s)
    {
        super(s);
        a = -1;
        b = -1;
        d = Collections.emptyList();
    }

    private List a(ByteBuffer bytebuffer, long l, int i)
    {
        ArrayList arraylist = new ArrayList();
_L6:
        long l1;
        l1 = l - 1L;
        if (l <= 0L)
        {
            return arraylist;
        }
        CencSampleAuxiliaryDataFormat cencsampleauxiliarydataformat;
        cencsampleauxiliarydataformat = new CencSampleAuxiliaryDataFormat();
        cencsampleauxiliarydataformat.a = new byte[i];
        bytebuffer.get(cencsampleauxiliarydataformat.a);
        if ((2 & r()) <= 0) goto _L2; else goto _L1
_L1:
        cencsampleauxiliarydataformat.b = new com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat.Pair[IsoTypeReader.d(bytebuffer)];
        int j = 0;
_L4:
        if (j < cencsampleauxiliarydataformat.b.length) goto _L3; else goto _L2
_L2:
        arraylist.add(cencsampleauxiliarydataformat);
        l = l1;
        continue; /* Loop/switch isn't completed */
_L3:
        cencsampleauxiliarydataformat.b[j] = cencsampleauxiliarydataformat.a(IsoTypeReader.d(bytebuffer), IsoTypeReader.b(bytebuffer));
        j++;
          goto _L4
        BufferUnderflowException bufferunderflowexception;
        bufferunderflowexception;
        return null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static void c()
    {
        Factory factory = new Factory("AbstractSampleEncryptionBox.java", com/googlecode/mp4parser/boxes/AbstractSampleEncryptionBox);
        e = factory.a("method-execution", factory.a("1", "getOffsetToFirstIV", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "int"), 29);
        n = factory.a("method-execution", factory.a("1", "getEntries", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "java.util.List"), 89);
        o = factory.a("method-execution", factory.a("1", "setEntries", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "java.util.List", "entries", "", "void"), 93);
        p = factory.a("method-execution", factory.a("1", "equals", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "java.lang.Object", "o", "", "boolean"), 162);
        q = factory.a("method-execution", factory.a("1", "hashCode", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "int"), 189);
        r = factory.a("method-execution", factory.a("1", "getEntrySizes", "com.googlecode.mp4parser.boxes.AbstractSampleEncryptionBox", "", "", "", "java.util.List"), 197);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        if ((1 & r()) > 0)
        {
            a = IsoTypeReader.c(bytebuffer);
            b = IsoTypeReader.f(bytebuffer);
            c = new byte[16];
            bytebuffer.get(c);
        }
        long l = IsoTypeReader.b(bytebuffer);
        ByteBuffer bytebuffer1 = bytebuffer.duplicate();
        ByteBuffer bytebuffer2 = bytebuffer.duplicate();
        d = a(bytebuffer1, l, 8);
        if (d == null)
        {
            d = a(bytebuffer2, l, 16);
            bytebuffer.position((bytebuffer.position() + bytebuffer.remaining()) - bytebuffer2.remaining());
        } else
        {
            bytebuffer.position((bytebuffer.position() + bytebuffer.remaining()) - bytebuffer1.remaining());
        }
        if (d == null)
        {
            throw new RuntimeException("Cannot parse SampleEncryptionBox");
        } else
        {
            return;
        }
    }

    public void a(WritableByteChannel writablebytechannel)
    {
        super.a(writablebytechannel);
    }

    public boolean a()
    {
        return (2 & r()) > 0;
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        if (b())
        {
            IsoTypeWriter.a(bytebuffer, a);
            IsoTypeWriter.d(bytebuffer, b);
            bytebuffer.put(c);
        }
        IsoTypeWriter.b(bytebuffer, d.size());
        Iterator iterator = d.iterator();
        do
        {
            CencSampleAuxiliaryDataFormat cencsampleauxiliarydataformat;
            do
            {
                do
                {
                    if (!iterator.hasNext())
                    {
                        return;
                    }
                    cencsampleauxiliarydataformat = (CencSampleAuxiliaryDataFormat)iterator.next();
                } while (cencsampleauxiliarydataformat.a() <= 0);
                if (cencsampleauxiliarydataformat.a.length != 8 && cencsampleauxiliarydataformat.a.length != 16)
                {
                    throw new RuntimeException("IV must be either 8 or 16 bytes");
                }
                bytebuffer.put(cencsampleauxiliarydataformat.a);
            } while (!a());
            IsoTypeWriter.b(bytebuffer, cencsampleauxiliarydataformat.b.length);
            com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat.Pair apair[] = cencsampleauxiliarydataformat.b;
            int i = apair.length;
            int j = 0;
            while (j < i) 
            {
                com.mp4parser.iso23001.part7.CencSampleAuxiliaryDataFormat.Pair pair = apair[j];
                IsoTypeWriter.b(bytebuffer, pair.a());
                IsoTypeWriter.b(bytebuffer, pair.b());
                j++;
            }
        } while (true);
    }

    public boolean b()
    {
        return (1 & r()) > 0;
    }

    protected long d()
    {
        long l;
        long l1;
        Iterator iterator;
        long l2;
        if (b())
        {
            l = 4L + 4L + (long)c.length;
        } else
        {
            l = 4L;
        }
        l1 = l + 4L;
        iterator = d.iterator();
        l2 = l1;
        do
        {
            if (!iterator.hasNext())
            {
                return l2;
            }
            l2 += ((CencSampleAuxiliaryDataFormat)iterator.next()).a();
        } while (true);
    }

    public boolean equals(Object obj)
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(p, this, this, obj);
        RequiresParseDetailAspect.a().a(joinpoint);
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            AbstractSampleEncryptionBox abstractsampleencryptionbox = (AbstractSampleEncryptionBox)obj;
            if (a != abstractsampleencryptionbox.a)
            {
                return false;
            }
            if (b != abstractsampleencryptionbox.b)
            {
                return false;
            }
            if (d == null ? abstractsampleencryptionbox.d != null : !d.equals(abstractsampleencryptionbox.d))
            {
                return false;
            }
            if (!Arrays.equals(c, abstractsampleencryptionbox.c))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(q, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        int i = 31 * (31 * a + b);
        int j;
        int k;
        List list;
        int l;
        if (c != null)
        {
            j = Arrays.hashCode(c);
        } else
        {
            j = 0;
        }
        k = 31 * (j + i);
        list = d;
        l = 0;
        if (list != null)
        {
            l = d.hashCode();
        }
        return k + l;
    }

    static 
    {
        c();
    }
}
