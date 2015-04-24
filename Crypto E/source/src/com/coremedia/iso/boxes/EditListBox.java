// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import com.googlecode.mp4parser.util.CastUtils;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class EditListBox extends AbstractFullBox
{
    public static class Entry
    {

        EditListBox a;
        private long b;
        private long c;
        private double d;

        public void a(ByteBuffer bytebuffer)
        {
            if (a.q() == 1)
            {
                IsoTypeWriter.a(bytebuffer, b);
                bytebuffer.putLong(c);
            } else
            {
                IsoTypeWriter.b(bytebuffer, CastUtils.a(b));
                bytebuffer.putInt(CastUtils.a(c));
            }
            IsoTypeWriter.a(bytebuffer, d);
        }

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null || getClass() != obj.getClass())
                {
                    return false;
                }
                Entry entry = (Entry)obj;
                if (c != entry.c)
                {
                    return false;
                }
                if (b != entry.b)
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return 31 * (int)(b ^ b >>> 32) + (int)(c ^ c >>> 32);
        }

        public String toString()
        {
            return (new StringBuilder("Entry{segmentDuration=")).append(b).append(", mediaTime=").append(c).append(", mediaRate=").append(d).append('}').toString();
        }

        public Entry(EditListBox editlistbox, ByteBuffer bytebuffer)
        {
            if (editlistbox.q() == 1)
            {
                b = IsoTypeReader.h(bytebuffer);
                c = bytebuffer.getLong();
                d = IsoTypeReader.i(bytebuffer);
            } else
            {
                b = IsoTypeReader.b(bytebuffer);
                c = bytebuffer.getInt();
                d = IsoTypeReader.i(bytebuffer);
            }
            a = editlistbox;
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart b;
    private static final org.aspectj.lang.JoinPoint.StaticPart c;
    private static final org.aspectj.lang.JoinPoint.StaticPart d;
    private List a;

    public EditListBox()
    {
        super("elst");
        a = new LinkedList();
    }

    private static void a()
    {
        Factory factory = new Factory("EditListBox.java", com/coremedia/iso/boxes/EditListBox);
        b = factory.a("method-execution", factory.a("1", "getEntries", "com.coremedia.iso.boxes.EditListBox", "", "", "", "java.util.List"), 68);
        c = factory.a("method-execution", factory.a("1", "setEntries", "com.coremedia.iso.boxes.EditListBox", "java.util.List", "entries", "", "void"), 72);
        d = factory.a("method-execution", factory.a("1", "toString", "com.coremedia.iso.boxes.EditListBox", "", "", "", "java.lang.String"), 108);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        int i = CastUtils.a(IsoTypeReader.b(bytebuffer));
        a = new LinkedList();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            a.add(new Entry(this, bytebuffer));
            j++;
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.b(bytebuffer, a.size());
        Iterator iterator = a.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((Entry)iterator.next()).a(bytebuffer);
        } while (true);
    }

    protected long d()
    {
        if (q() == 1)
        {
            return 8L + (long)(20 * a.size());
        } else
        {
            return 8L + (long)(12 * a.size());
        }
    }

    public String toString()
    {
        org.aspectj.lang.JoinPoint joinpoint = Factory.a(d, this, this);
        RequiresParseDetailAspect.a().a(joinpoint);
        return (new StringBuilder("EditListBox{entries=")).append(a).append('}').toString();
    }

    static 
    {
        a();
    }
}
