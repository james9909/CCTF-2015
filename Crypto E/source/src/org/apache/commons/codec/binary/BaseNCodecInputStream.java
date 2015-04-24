// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.codec.binary;

import java.io.FilterInputStream;
import java.io.InputStream;

// Referenced classes of package org.apache.commons.codec.binary:
//            BaseNCodec

public class BaseNCodecInputStream extends FilterInputStream
{

    private final BaseNCodec baseNCodec;
    private final boolean doEncode;
    private final byte singleByte[] = new byte[1];

    protected BaseNCodecInputStream(InputStream inputstream, BaseNCodec basencodec, boolean flag)
    {
        super(inputstream);
        doEncode = flag;
        baseNCodec = basencodec;
    }

    public boolean markSupported()
    {
        return false;
    }

    public int read()
    {
        int i;
        for (i = read(singleByte, 0, 1); i == 0; i = read(singleByte, 0, 1)) { }
        if (i > 0)
        {
            if (singleByte[0] < 0)
            {
                return 256 + singleByte[0];
            } else
            {
                return singleByte[0];
            }
        } else
        {
            return -1;
        }
    }

    public int read(byte abyte0[], int i, int j)
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
        int k;
        if (j == 0)
        {
            k = 0;
        } else
        {
            k = 0;
            while (k == 0) 
            {
                if (!baseNCodec.hasData())
                {
                    char c;
                    byte abyte1[];
                    int l;
                    if (doEncode)
                    {
                        c = '\u1000';
                    } else
                    {
                        c = '\u2000';
                    }
                    abyte1 = new byte[c];
                    l = in.read(abyte1);
                    if (doEncode)
                    {
                        baseNCodec.encode(abyte1, 0, l);
                    } else
                    {
                        baseNCodec.decode(abyte1, 0, l);
                    }
                }
                k = baseNCodec.readResults(abyte0, i, j);
            }
        }
        return k;
    }
}
