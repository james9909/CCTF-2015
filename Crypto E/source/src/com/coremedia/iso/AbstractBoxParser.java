// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso;

import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.Container;
import com.googlecode.mp4parser.DataSource;
import java.io.EOFException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

// Referenced classes of package com.coremedia.iso:
//            BoxParser, IsoTypeReader

public abstract class AbstractBoxParser
    implements BoxParser
{

    private static Logger b = Logger.getLogger(com/coremedia/iso/AbstractBoxParser.getName());
    ThreadLocal a;

    public AbstractBoxParser()
    {
        a = new ThreadLocal() {

            final AbstractBoxParser a;

            protected ByteBuffer a()
            {
                return ByteBuffer.allocate(32);
            }

            protected Object initialValue()
            {
                return a();
            }

            
            {
                a = AbstractBoxParser.this;
                super();
            }
        };
    }

    public Box a(DataSource datasource, Container container)
    {
        long l2;
        long l3;
        byte abyte0[];
        byte abyte1[];
        int j;
        long l = datasource.b();
        ((ByteBuffer)a.get()).rewind().limit(8);
        long l1;
        do
        {
            int i = datasource.a((ByteBuffer)a.get());
            if (i == 8)
            {
                ((ByteBuffer)a.get()).rewind();
                l1 = IsoTypeReader.b((ByteBuffer)a.get());
                if (l1 < 8L && l1 > 1L)
                {
                    b.severe((new StringBuilder("Plausibility check failed: size < 8 (size = ")).append(l1).append("). Stop parsing!").toString());
                    return null;
                }
                break;
            }
            if (i < 0)
            {
                datasource.a(l);
                throw new EOFException();
            }
        } while (true);
        String s = IsoTypeReader.m((ByteBuffer)a.get());
        Box box;
        if (l1 == 1L)
        {
            ((ByteBuffer)a.get()).limit(16);
            datasource.a((ByteBuffer)a.get());
            ((ByteBuffer)a.get()).position(8);
            l2 = IsoTypeReader.h((ByteBuffer)a.get()) - 16L;
        } else
        if (l1 == 0L)
        {
            long l4 = datasource.a() - datasource.b();
            l4 + 8L;
            l2 = l4;
        } else
        {
            l2 = l1 - 8L;
        }
        if (!"uuid".equals(s))
        {
            break MISSING_BLOCK_LABEL_520;
        }
        ((ByteBuffer)a.get()).limit(16 + ((ByteBuffer)a.get()).limit());
        datasource.a((ByteBuffer)a.get());
        abyte1 = new byte[16];
        j = -16 + ((ByteBuffer)a.get()).position();
_L3:
        if (j < ((ByteBuffer)a.get()).position()) goto _L2; else goto _L1
_L1:
        l3 = l2 - 16L;
        abyte0 = abyte1;
_L4:
        String s1;
        if (container instanceof Box)
        {
            s1 = ((Box)container).g();
        } else
        {
            s1 = "";
        }
        box = a(s, abyte0, s1);
        box.a(container);
        ((ByteBuffer)a.get()).rewind();
        box.a(datasource, (ByteBuffer)a.get(), l3, this);
        return box;
_L2:
        abyte1[j - (-16 + ((ByteBuffer)a.get()).position())] = ((ByteBuffer)a.get()).get(j);
        j++;
          goto _L3
        l3 = l2;
        abyte0 = null;
          goto _L4
    }

    public abstract Box a(String s, byte abyte0[], String s1);

}
