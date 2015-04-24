// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser;

import com.coremedia.iso.BoxParser;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.util.CastUtils;
import com.googlecode.mp4parser.util.LazyList;
import com.googlecode.mp4parser.util.Logger;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

// Referenced classes of package com.googlecode.mp4parser:
//            DataSource, AbstractBox

public class BasicContainer
    implements Container, Closeable, Iterator
{

    private static final Box a = new AbstractBox("eof ") {

        protected void a(ByteBuffer bytebuffer)
        {
        }

        protected void b(ByteBuffer bytebuffer)
        {
        }

        protected long d()
        {
            return 0L;
        }

    };
    private static Logger b = Logger.a(com/googlecode/mp4parser/BasicContainer);
    private List c;
    protected BoxParser f;
    public DataSource g;
    Box h;
    long i;
    long j;
    long k;

    public BasicContainer()
    {
        h = null;
        i = 0L;
        j = 0L;
        k = 0L;
        c = new ArrayList();
    }

    public ByteBuffer a(long l, long l1)
    {
        if (g != null)
        {
            ByteBuffer bytebuffer1;
            synchronized (g)
            {
                bytebuffer1 = g.a(l + j, l1);
            }
            return bytebuffer1;
        }
        break MISSING_BLOCK_LABEL_48;
        exception;
        datasource;
        JVM INSTR monitorexit ;
        throw exception;
        ByteBuffer bytebuffer = ByteBuffer.allocate(CastUtils.a(l1));
        long l2 = l + l1;
        Iterator iterator = c.iterator();
        long l3 = 0L;
        do
        {
            if (!iterator.hasNext())
            {
                return (ByteBuffer)bytebuffer.rewind();
            }
            Box box = (Box)iterator.next();
            long l4 = l3 + box.f();
            if (l4 > l && l3 < l2)
            {
                ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                WritableByteChannel writablebytechannel = Channels.newChannel(bytearrayoutputstream);
                box.a(writablebytechannel);
                writablebytechannel.close();
                if (l3 >= l && l4 <= l2)
                {
                    bytebuffer.put(bytearrayoutputstream.toByteArray());
                    l3 = l4;
                    continue;
                }
                if (l3 < l && l4 > l2)
                {
                    int k1 = CastUtils.a(box.f() - (l - l3) - (l4 - l2));
                    bytebuffer.put(bytearrayoutputstream.toByteArray(), CastUtils.a(l - l3), k1);
                    l3 = l4;
                    continue;
                }
                if (l3 < l && l4 <= l2)
                {
                    int j1 = CastUtils.a(box.f() - (l - l3));
                    bytebuffer.put(bytearrayoutputstream.toByteArray(), CastUtils.a(l - l3), j1);
                    l3 = l4;
                    continue;
                }
                if (l3 >= l && l4 > l2)
                {
                    int i1 = CastUtils.a(box.f() - (l4 - l2));
                    bytebuffer.put(bytearrayoutputstream.toByteArray(), 0, i1);
                }
            }
            l3 = l4;
        } while (true);
    }

    public List a()
    {
        if (g != null && h != a)
        {
            return new LazyList(c, this);
        } else
        {
            return c;
        }
    }

    public List a(Class class1)
    {
        Box box;
        List list;
        int l;
        Object obj;
        box = null;
        list = a();
        l = 0;
        obj = null;
_L2:
        Box box1;
        Object obj1;
        if (l >= list.size())
        {
            if (obj != null)
            {
                return ((List) (obj));
            }
            break MISSING_BLOCK_LABEL_119;
        }
        box1 = (Box)list.get(l);
        if (!class1.isInstance(box1))
        {
            break MISSING_BLOCK_LABEL_109;
        }
        if (box != null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = obj;
_L3:
        l++;
        obj = obj1;
        box = box1;
        if (true) goto _L2; else goto _L1
_L1:
        if (obj == null)
        {
            obj = new ArrayList(2);
            ((List) (obj)).add(box);
        }
        ((List) (obj)).add(box1);
        box1 = box;
        obj1 = obj;
          goto _L3
        if (box != null)
        {
            return Collections.singletonList(box);
        } else
        {
            return Collections.emptyList();
        }
    }

    public List a(Class class1, boolean flag)
    {
        ArrayList arraylist = new ArrayList(2);
        List list = a();
        int l = 0;
        do
        {
            if (l >= list.size())
            {
                return arraylist;
            }
            Box box = (Box)list.get(l);
            if (class1.isInstance(box))
            {
                arraylist.add(box);
            }
            if (flag && (box instanceof Container))
            {
                arraylist.addAll(((Container)box).a(class1, flag));
            }
            l++;
        } while (true);
    }

    public void a(Box box)
    {
        if (box != null)
        {
            c = new ArrayList(a());
            box.a(this);
            c.add(box);
        }
    }

    public void a(DataSource datasource, long l, BoxParser boxparser)
    {
        g = datasource;
        long l1 = datasource.b();
        j = l1;
        i = l1;
        datasource.a(l + datasource.b());
        k = datasource.b();
        f = boxparser;
    }

    public void a(List list)
    {
        c = new ArrayList(list);
        h = a;
        g = null;
    }

    public final void b(WritableByteChannel writablebytechannel)
    {
        Iterator iterator = a().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((Box)iterator.next()).a(writablebytechannel);
        } while (true);
    }

    public void close()
    {
        g.close();
    }

    public boolean hasNext()
    {
        if (h == a)
        {
            return false;
        }
        if (h != null)
        {
            return true;
        }
        try
        {
            h = n();
        }
        catch (NoSuchElementException nosuchelementexception)
        {
            h = a;
            return false;
        }
        return true;
    }

    public long m()
    {
        long l = 0L;
        int i1 = 0;
        do
        {
            if (i1 >= a().size())
            {
                return l;
            }
            l += ((Box)c.get(i1)).f();
            i1++;
        } while (true);
    }

    public Box n()
    {
        if (h != null && h != a)
        {
            Box box1 = h;
            h = null;
            return box1;
        }
        if (g == null || i >= k)
        {
            h = a;
            throw new NoSuchElementException();
        }
        Box box;
        synchronized (g)
        {
            g.a(i);
            box = f.a(g, this);
            i = g.b();
        }
        return box;
        exception;
        datasource;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (EOFException eofexception)
        {
            throw new NoSuchElementException();
        }
        catch (IOException ioexception)
        {
            throw new NoSuchElementException();
        }
    }

    public Object next()
    {
        return n();
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(getClass().getSimpleName()).append("[");
        int l = 0;
        do
        {
            if (l >= c.size())
            {
                stringbuilder.append("]");
                return stringbuilder.toString();
            }
            if (l > 0)
            {
                stringbuilder.append(";");
            }
            stringbuilder.append(((Box)c.get(l)).toString());
            l++;
        } while (true);
    }

}
