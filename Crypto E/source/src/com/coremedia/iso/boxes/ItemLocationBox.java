// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeReaderVariable;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.IsoTypeWriterVariable;
import com.googlecode.mp4parser.AbstractFullBox;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.runtime.reflect.Factory;

public class ItemLocationBox extends AbstractFullBox
{
    public class Extent
    {

        public long a;
        public long b;
        public long c;
        final ItemLocationBox d;

        public int a()
        {
            int i;
            if (d.d > 0)
            {
                i = d.d;
            } else
            {
                i = 0;
            }
            return i + d.a + d.b;
        }

        public void a(ByteBuffer bytebuffer)
        {
            if (d.q() == 1 && d.d > 0)
            {
                IsoTypeWriterVariable.a(c, bytebuffer, d.d);
            }
            IsoTypeWriterVariable.a(a, bytebuffer, d.a);
            IsoTypeWriterVariable.a(b, bytebuffer, d.b);
        }

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null || getClass() != obj.getClass())
                {
                    return false;
                }
                Extent extent = (Extent)obj;
                if (c != extent.c)
                {
                    return false;
                }
                if (b != extent.b)
                {
                    return false;
                }
                if (a != extent.a)
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return 31 * (31 * (int)(a ^ a >>> 32) + (int)(b ^ b >>> 32)) + (int)(c ^ c >>> 32);
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("Extent");
            stringbuilder.append("{extentOffset=").append(a);
            stringbuilder.append(", extentLength=").append(b);
            stringbuilder.append(", extentIndex=").append(c);
            stringbuilder.append('}');
            return stringbuilder.toString();
        }

        public Extent(ByteBuffer bytebuffer)
        {
            d = ItemLocationBox.this;
            super();
            if (q() == 1 && ItemLocationBox.this.d > 0)
            {
                c = IsoTypeReaderVariable.a(bytebuffer, ItemLocationBox.this.d);
            }
            a = IsoTypeReaderVariable.a(bytebuffer, ItemLocationBox.this.a);
            b = IsoTypeReaderVariable.a(bytebuffer, ItemLocationBox.this.b);
        }
    }

    public class Item
    {

        public int a;
        public int b;
        public int c;
        public long d;
        public List e;
        final ItemLocationBox f;

        public int a()
        {
            byte byte0 = 2;
            if (f.q() == 1)
            {
                byte0 = 4;
            }
            int i = 2 + (byte0 + 2 + f.c);
            Iterator iterator = e.iterator();
            int j = i;
            do
            {
                if (!iterator.hasNext())
                {
                    return j;
                }
                j += ((Extent)iterator.next()).a();
            } while (true);
        }

        public void a(ByteBuffer bytebuffer)
        {
            IsoTypeWriter.b(bytebuffer, a);
            if (f.q() == 1)
            {
                IsoTypeWriter.b(bytebuffer, b);
            }
            IsoTypeWriter.b(bytebuffer, c);
            if (f.c > 0)
            {
                IsoTypeWriterVariable.a(d, bytebuffer, f.c);
            }
            IsoTypeWriter.b(bytebuffer, e.size());
            Iterator iterator = e.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                ((Extent)iterator.next()).a(bytebuffer);
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
                Item item = (Item)obj;
                if (d != item.d)
                {
                    return false;
                }
                if (b != item.b)
                {
                    return false;
                }
                if (c != item.c)
                {
                    return false;
                }
                if (a != item.a)
                {
                    return false;
                }
                if (e == null ? item.e != null : !e.equals(item.e))
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            int i = 31 * (31 * (31 * (31 * a + b) + c) + (int)(d ^ d >>> 32));
            int j;
            if (e != null)
            {
                j = e.hashCode();
            } else
            {
                j = 0;
            }
            return j + i;
        }

        public String toString()
        {
            return (new StringBuilder("Item{baseOffset=")).append(d).append(", itemId=").append(a).append(", constructionMethod=").append(b).append(", dataReferenceIndex=").append(c).append(", extents=").append(e).append('}').toString();
        }

        public Item(ByteBuffer bytebuffer)
        {
            f = ItemLocationBox.this;
            super();
            e = new LinkedList();
            a = IsoTypeReader.d(bytebuffer);
            if (q() == 1)
            {
                b = 0xf & IsoTypeReader.d(bytebuffer);
            }
            c = IsoTypeReader.d(bytebuffer);
            int i;
            int j;
            if (ItemLocationBox.this.c > 0)
            {
                d = IsoTypeReaderVariable.a(bytebuffer, ItemLocationBox.this.c);
            } else
            {
                d = 0L;
            }
            i = IsoTypeReader.d(bytebuffer);
            j = 0;
            do
            {
                if (j >= i)
                {
                    return;
                }
                e.add(new Extent(bytebuffer));
                j++;
            } while (true);
        }
    }


    private static final org.aspectj.lang.JoinPoint.StaticPart n;
    private static final org.aspectj.lang.JoinPoint.StaticPart o;
    private static final org.aspectj.lang.JoinPoint.StaticPart p;
    private static final org.aspectj.lang.JoinPoint.StaticPart q;
    private static final org.aspectj.lang.JoinPoint.StaticPart r;
    private static final org.aspectj.lang.JoinPoint.StaticPart s;
    private static final org.aspectj.lang.JoinPoint.StaticPart t;
    private static final org.aspectj.lang.JoinPoint.StaticPart u;
    private static final org.aspectj.lang.JoinPoint.StaticPart v;
    private static final org.aspectj.lang.JoinPoint.StaticPart w;
    private static final org.aspectj.lang.JoinPoint.StaticPart x;
    private static final org.aspectj.lang.JoinPoint.StaticPart y;
    public int a;
    public int b;
    public int c;
    public int d;
    public List e;

    public ItemLocationBox()
    {
        super("iloc");
        a = 8;
        b = 8;
        c = 8;
        d = 0;
        e = new LinkedList();
    }

    private static void a()
    {
        Factory factory = new Factory("ItemLocationBox.java", com/coremedia/iso/boxes/ItemLocationBox);
        n = factory.a("method-execution", factory.a("1", "getOffsetSize", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "int"), 119);
        o = factory.a("method-execution", factory.a("1", "setOffsetSize", "com.coremedia.iso.boxes.ItemLocationBox", "int", "offsetSize", "", "void"), 123);
        x = factory.a("method-execution", factory.a("1", "createItem", "com.coremedia.iso.boxes.ItemLocationBox", "int:int:int:long:java.util.List", "itemId:constructionMethod:dataReferenceIndex:baseOffset:extents", "", "com.coremedia.iso.boxes.ItemLocationBox$Item"), 160);
        y = factory.a("method-execution", factory.a("1", "createExtent", "com.coremedia.iso.boxes.ItemLocationBox", "long:long:long", "extentOffset:extentLength:extentIndex", "", "com.coremedia.iso.boxes.ItemLocationBox$Extent"), 285);
        p = factory.a("method-execution", factory.a("1", "getLengthSize", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "int"), 127);
        q = factory.a("method-execution", factory.a("1", "setLengthSize", "com.coremedia.iso.boxes.ItemLocationBox", "int", "lengthSize", "", "void"), 131);
        r = factory.a("method-execution", factory.a("1", "getBaseOffsetSize", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "int"), 135);
        s = factory.a("method-execution", factory.a("1", "setBaseOffsetSize", "com.coremedia.iso.boxes.ItemLocationBox", "int", "baseOffsetSize", "", "void"), 139);
        t = factory.a("method-execution", factory.a("1", "getIndexSize", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "int"), 143);
        u = factory.a("method-execution", factory.a("1", "setIndexSize", "com.coremedia.iso.boxes.ItemLocationBox", "int", "indexSize", "", "void"), 147);
        v = factory.a("method-execution", factory.a("1", "getItems", "com.coremedia.iso.boxes.ItemLocationBox", "", "", "", "java.util.List"), 151);
        w = factory.a("method-execution", factory.a("1", "setItems", "com.coremedia.iso.boxes.ItemLocationBox", "java.util.List", "items", "", "void"), 155);
    }

    public void a(ByteBuffer bytebuffer)
    {
        c(bytebuffer);
        int i = IsoTypeReader.f(bytebuffer);
        a = i >>> 4;
        b = i & 0xf;
        int j = IsoTypeReader.f(bytebuffer);
        c = j >>> 4;
        if (q() == 1)
        {
            d = j & 0xf;
        }
        int k = IsoTypeReader.d(bytebuffer);
        int l = 0;
        do
        {
            if (l >= k)
            {
                return;
            }
            e.add(new Item(bytebuffer));
            l++;
        } while (true);
    }

    protected void b(ByteBuffer bytebuffer)
    {
        d(bytebuffer);
        IsoTypeWriter.d(bytebuffer, a << 4 | b);
        Iterator iterator;
        if (q() == 1)
        {
            IsoTypeWriter.d(bytebuffer, c << 4 | d);
        } else
        {
            IsoTypeWriter.d(bytebuffer, c << 4);
        }
        IsoTypeWriter.b(bytebuffer, e.size());
        iterator = e.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((Item)iterator.next()).a(bytebuffer);
        } while (true);
    }

    protected long d()
    {
        Iterator iterator = e.iterator();
        long l = 8L;
        do
        {
            if (!iterator.hasNext())
            {
                return l;
            }
            l += ((Item)iterator.next()).a();
        } while (true);
    }

    static 
    {
        a();
    }
}
