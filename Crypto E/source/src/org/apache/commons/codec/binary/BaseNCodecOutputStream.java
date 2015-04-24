// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.binary;

import java.io.FilterOutputStream;
import java.io.OutputStream;

// Referenced classes of package org.apache.commons.codec.binary:
//            BaseNCodec

public class BaseNCodecOutputStream extends FilterOutputStream
{

    private final BaseNCodec baseNCodec;
    private final boolean doEncode;
    private final byte singleByte[] = new byte[1];

    public BaseNCodecOutputStream(OutputStream outputstream, BaseNCodec basencodec, boolean flag)
    {
        super(outputstream);
        baseNCodec = basencodec;
        doEncode = flag;
    }

    private void flush(boolean flag)
    {
        int i = baseNCodec.available();
        if (i > 0)
        {
            byte abyte0[] = new byte[i];
            int j = baseNCodec.readResults(abyte0, 0, i);
            if (j > 0)
            {
                out.write(abyte0, 0, j);
            }
        }
        if (flag)
        {
            out.flush();
        }
    }

    public void close()
    {
        if (doEncode)
        {
            baseNCodec.encode(singleByte, 0, -1);
        } else
        {
            baseNCodec.decode(singleByte, 0, -1);
        }
        flush();
        out.close();
    }

    public void flush()
    {
        flush(true);
    }

    public void write(int i)
    {
        singleByte[0] = (byte)i;
        write(singleByte, 0, 1);
    }

    public void write(byte abyte0[], int i, int j)
    {
        if (abyte0 == null)
        {
            throw new NullPointerException();
        }
        if (i < 0 || j < 0)
        {
            throw new IndexOutOfBoundsException();
        }
        if (i > abyte0.length || i + j > abyte0.length)
        {
            throw new IndexOutOfBoundsException();
        }
        if (j > 0)
        {
            if (doEncode)
            {
                baseNCodec.encode(abyte0, i, j);
            } else
            {
                baseNCodec.decode(abyte0, i, j);
            }
            flush(false);
        }
    }
}
