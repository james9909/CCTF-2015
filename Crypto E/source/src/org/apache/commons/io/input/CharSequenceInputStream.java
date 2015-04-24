// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.input;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

public class CharSequenceInputStream extends InputStream
{

    private final ByteBuffer bbuf;
    private final CharBuffer cbuf;
    private final CharsetEncoder encoder;
    private int mark;

    public CharSequenceInputStream(CharSequence charsequence, String s)
    {
        this(charsequence, s, 2048);
    }

    public CharSequenceInputStream(CharSequence charsequence, String s, int i)
    {
        this(charsequence, Charset.forName(s), i);
    }

    public CharSequenceInputStream(CharSequence charsequence, Charset charset)
    {
        this(charsequence, charset, 2048);
    }

    public CharSequenceInputStream(CharSequence charsequence, Charset charset, int i)
    {
        encoder = charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
        bbuf = ByteBuffer.allocate(i);
        bbuf.flip();
        cbuf = CharBuffer.wrap(charsequence);
        mark = -1;
    }

    private void fillBuffer()
    {
        bbuf.compact();
        CoderResult coderresult = encoder.encode(cbuf, bbuf, true);
        if (coderresult.isError())
        {
            coderresult.throwException();
        }
        bbuf.flip();
    }

    public int available()
    {
        return cbuf.remaining();
    }

    public void close()
    {
    }

    public void mark(int i)
    {
        this;
        JVM INSTR monitorenter ;
        mark = cbuf.position();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean markSupported()
    {
        return true;
    }

    public int read()
    {
        do
        {
            if (bbuf.hasRemaining())
            {
                return 0xff & bbuf.get();
            }
            fillBuffer();
        } while (bbuf.hasRemaining() || cbuf.hasRemaining());
        return -1;
    }

    public int read(byte abyte0[])
    {
        return read(abyte0, 0, abyte0.length);
    }

    public int read(byte abyte0[], int i, int j)
    {
        byte byte0;
        byte0 = -1;
        if (abyte0 == null)
        {
            throw new NullPointerException("Byte array is null");
        }
        if (j < 0 || i + j > abyte0.length)
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Array Size=").append(abyte0.length).append(", offset=").append(i).append(", length=").append(j).toString());
        }
        if (j != 0) goto _L2; else goto _L1
_L1:
        byte0 = 0;
_L4:
        return byte0;
_L2:
        int k;
        boolean flag1;
        boolean flag = bbuf.hasRemaining();
        k = 0;
        if (flag)
        {
            break; /* Loop/switch isn't completed */
        }
        flag1 = cbuf.hasRemaining();
        k = 0;
        if (!flag1) goto _L4; else goto _L3
_L3:
label0:
        do
        {
            do
            {
                if (j <= 0)
                {
                    break label0;
                }
                if (!bbuf.hasRemaining())
                {
                    break;
                }
                int l = Math.min(bbuf.remaining(), j);
                bbuf.get(abyte0, i, l);
                i += l;
                j -= l;
                k += l;
            } while (true);
            fillBuffer();
        } while (bbuf.hasRemaining() || cbuf.hasRemaining());
        if (k != 0 || cbuf.hasRemaining())
        {
            return k;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void reset()
    {
        this;
        JVM INSTR monitorenter ;
        if (mark != -1)
        {
            cbuf.position(mark);
            mark = -1;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public long skip(long l)
    {
        int i;
        for (i = 0; l > 0L && cbuf.hasRemaining(); i++)
        {
            cbuf.get();
            l--;
        }

        return (long)i;
    }
}
