// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.CastUtils;
import com.mp4parser.iso14496.part15.StepwiseTemporalLayerEntry;
import com.mp4parser.iso14496.part15.SyncSampleEntry;
import com.mp4parser.iso14496.part15.TemporalLayerSampleGroup;
import com.mp4parser.iso14496.part15.TemporalSubLayerSampleGroup;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

// Referenced classes of package com.googlecode.mp4parser.boxes.mp4.samplegrouping:
//            RollRecoveryEntry, GroupEntry, RateShareEntry, CencSampleEncryptionInformationGroupEntry, 
//            VisualRandomAccessEntry, TemporalLevelEntry, UnknownEntry

public class SampleGroupDescriptionBox extends AbstractFullBox
{

    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private static final org.aspectj.lang.JoinPoint.StaticPart e;
    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private int a;
    private List b;

    public SampleGroupDescriptionBox()
    {
        super("sgpd");
        b = new LinkedList();
        b(1);
    }

    private GroupEntry a(ByteBuffer bytebuffer, String s)
    {
        Object obj;
        if ("roll".equals(s))
        {
            obj = new RollRecoveryEntry();
        } else
        if ("rash".equals(s))
        {
            obj = new RateShareEntry();
        } else
        if ("seig".equals(s))
        {
            obj = new CencSampleEncryptionInformationGroupEntry();
        } else
        if ("rap ".equals(s))
        {
            obj = new VisualRandomAccessEntry();
        } else
        if ("tele".equals(s))
        {
            obj = new TemporalLevelEntry();
        } else
        if ("sync".equals(s))
        {
            obj = new SyncSampleEntry();
        } else
        if ("tscl".equals(s))
        {
            obj = new TemporalLayerSampleGroup();
        } else
        if ("tsas".equals(s))
        {
            obj = new TemporalSubLayerSampleGroup();
        } else
        if ("stsa".equals(s))
        {
            obj = new StepwiseTemporalLayerEntry();
        } else
        {
            obj = new UnknownEntry(s);
        }
        ((GroupEntry) (obj)).a(bytebuffer);
        return ((GroupEntry) (obj));
    }

    private static void a()
    {
        Factory factory = new Factory("SampleGroupDescriptionBox.java", com/googlecode/mp4parser/boxes/mp4/samplegrouping/SampleGroupDescriptionBox);
        c = factory.a("method-execution", factory.a("1", "getDefaultLength", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "int"), 145);
        d = factory.a("method-execution", factory.a("1", "setDefaultLength", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "int", "defaultLength", "", "void"), 149);
        e = factory.a("method-execution", factory.a("1", "getGroupEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "java.util.List"), 153);
        n = factory.a("method-execution", factory.a("1", "setGroupEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "java.util.List", "groupEntries", "", "void"), 157);
        o = factory.a("method-execution", factory.a("1", "equals", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "java.lang.Object", "o", "", "boolean"), 162);
        p = factory.a("method-execution", factory.a("1", "hashCode", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "int"), 183);
        q = factory.a("method-execution", factory.a("1", "toString", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "java.lang.String"), 191);
    }

    protected void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        if (q() != 1)
        {
            throw new RuntimeException("SampleGroupDescriptionBox are only supported in version 1");
        }
        String s = IsoTypeReader.m(bytebuffer);
        if (q() == 1)
        {
            a = CastUtils.a(IsoTypeReader.b(bytebuffer));
        }
        long l = IsoTypeReader.b(bytebuffer);
        do
        {
            long l1 = l - 1L;
            if (l <= 0L)
            {
                return;
            }
            int i = a;
            if (q() == 1)
            {
                if (a == 0)
                {
                    i = CastUtils.a(IsoTypeReader.b(bytebuffer));
                }
                int j = i + bytebuffer.position();
                ByteBuffer bytebuffer1 = bytebuffer.slice();
                bytebuffer1.limit(i);
                b.add(a(bytebuffer1, s));
                bytebuffer.position(j);
                l = l1;
            } else
            {
                throw new RuntimeException("This should be implemented");
            }
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        bytebuffer.put(IsoFile.a(((GroupEntry)b.get(0)).a()));
        if (q() == 1)
        {
            IsoTypeWriter.b(bytebuffer, a);
        }
        IsoTypeWriter.b(bytebuffer, b.size());
        Iterator iterator = b.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            GroupEntry groupentry = (GroupEntry)iterator.next();
            if (q() == 1 && a == 0)
            {
                IsoTypeWriter.b(bytebuffer, groupentry.b().limit());
            }
            bytebuffer.put(groupentry.b());
        } while (true);
    }

    protected long d()
    {
        long l = 8L;
        if (q() == 1)
        {
            l += 4L;
        }
        long l1 = l + 4L;
        Iterator iterator = b.iterator();
        long l2 = l1;
        do
        {
            if (!iterator.hasNext())
            {
                return l2;
            }
            GroupEntry groupentry = (GroupEntry)iterator.next();
            if (q() == 1 && a == 0)
            {
                l2 += 4L;
            }
            l2 += groupentry.c();
        } while (true);
    }

    public boolean equals(Object obj)
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(o, this, this, obj);
        RequiresParseDetailAspect.a().a(joinpoint);
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            SampleGroupDescriptionBox samplegroupdescriptionbox = (SampleGroupDescriptionBox)obj;
            if (a != samplegroupdescriptionbox.a)
            {
                return false;
            }
            if (b == null ? samplegroupdescriptionbox.b != null : !b.equals(samplegroupdescriptionbox.b))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(p, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        int i = 31 * (0 + a);
        int j;
        if (b != null)
        {
            j = b.hashCode();
        } else
        {
            j = 0;
        }
        return j + i;
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(q, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        StringBuilder stringbuilder = new StringBuilder("SampleGroupDescriptionBox{groupingType='");
        String s;
        if (b.size() > 0)
        {
            s = ((GroupEntry)b.get(0)).a();
        } else
        {
            s = "????";
        }
        return stringbuilder.append(s).append('\'').append(", defaultLength=").append(a).append(", groupEntries=").append(b).append('}').toString();
    }

    static 
    {
        a();
    }
}
