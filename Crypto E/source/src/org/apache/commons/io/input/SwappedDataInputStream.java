// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.input;

import java.io.DataInput;
import java.io.EOFException;
import java.io.InputStream;
import org.apache.commons.io.EndianUtils;

// Referenced classes of package org.apache.commons.io.input:
//            ProxyInputStream

public class SwappedDataInputStream extends ProxyInputStream
    implements DataInput
{

    public SwappedDataInputStream(InputStream inputstream)
    {
        super(inputstream);
    }

    public boolean readBoolean()
    {
        return readByte() != 0;
    }

    public byte readByte()
    {
        return (byte)in.read();
    }

    public char readChar()
    {
        return (char)readShort();
    }

    public double readDouble()
    {
        return EndianUtils.readSwappedDouble(in);
    }

    public float readFloat()
    {
        return EndianUtils.readSwappedFloat(in);
    }

    public void readFully(byte abyte0[])
    {
        readFully(abyte0, 0, abyte0.length);
    }

    public void readFully(byte abyte0[], int i, int j)
    {
        int l;
        for (int k = j; k > 0; k -= l)
        {
            l = read(abyte0, (i + j) - k, k);
            if (-1 == l)
            {
                throw new EOFException();
            }
        }

    }

    public int readInt()
    {
        return EndianUtils.readSwappedInteger(in);
    }

    public String readLine()
    {
        throw new UnsupportedOperationException("Operation not supported: readLine()");
    }

    public long readLong()
    {
        return EndianUtils.readSwappedLong(in);
    }

    public short readShort()
    {
        return EndianUtils.readSwappedShort(in);
    }

    public String readUTF()
    {
        throw new UnsupportedOperationException("Operation not supported: readUTF()");
    }

    public int readUnsignedByte()
    {
        return in.read();
    }

    public int readUnsignedShort()
    {
        return EndianUtils.readSwappedUnsignedShort(in);
    }

    public int skipBytes(int i)
    {
        return (int)in.skip(i);
    }
}
