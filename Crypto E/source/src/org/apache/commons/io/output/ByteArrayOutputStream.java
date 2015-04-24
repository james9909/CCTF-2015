// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.io.output;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.input.ClosedInputStream;

public class ByteArrayOutputStream extends OutputStream
{

    private static final byte EMPTY_BYTE_ARRAY[] = new byte[0];
    private final List buffers;
    private int count;
    private byte currentBuffer[];
    private int currentBufferIndex;
    private int filledBufferSum;

    public ByteArrayOutputStream()
    {
        this(1024);
    }

    public ByteArrayOutputStream(int i)
    {
        buffers = new ArrayList();
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Negative initial size: ").append(i).toString());
        }
        this;
        JVM INSTR monitorenter ;
        needNewBuffer(i);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void needNewBuffer(int i)
    {
        if (currentBufferIndex < -1 + buffers.size())
        {
            filledBufferSum = filledBufferSum + currentBuffer.length;
            currentBufferIndex = 1 + currentBufferIndex;
            currentBuffer = (byte[])buffers.get(currentBufferIndex);
            return;
        }
        if (currentBuffer == null)
        {
            filledBufferSum = 0;
        } else
        {
            i = Math.max(currentBuffer.length << 1, i - filledBufferSum);
            filledBufferSum = filledBufferSum + currentBuffer.length;
        }
        currentBufferIndex = 1 + currentBufferIndex;
        currentBuffer = new byte[i];
        buffers.add(currentBuffer);
    }

    private InputStream toBufferedInputStream()
    {
        int i = count;
        if (i == 0)
        {
            return new ClosedInputStream();
        }
        ArrayList arraylist = new ArrayList(buffers.size());
        Iterator iterator = buffers.iterator();
        int j = i;
        do
        {
            int l;
label0:
            {
                if (iterator.hasNext())
                {
                    byte abyte0[] = (byte[])iterator.next();
                    int k = Math.min(abyte0.length, j);
                    arraylist.add(new ByteArrayInputStream(abyte0, 0, k));
                    l = j - k;
                    if (l != 0)
                    {
                        break label0;
                    }
                }
                return new SequenceInputStream(Collections.enumeration(arraylist));
            }
            j = l;
        } while (true);
    }

    public static InputStream toBufferedInputStream(InputStream inputstream)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bytearrayoutputstream.write(inputstream);
        return bytearrayoutputstream.toBufferedInputStream();
    }

    public void close()
    {
    }

    public void reset()
    {
        this;
        JVM INSTR monitorenter ;
        count = 0;
        filledBufferSum = 0;
        currentBufferIndex = 0;
        currentBuffer = (byte[])buffers.get(currentBufferIndex);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public int size()
    {
        this;
        JVM INSTR monitorenter ;
        int i = count;
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public byte[] toByteArray()
    {
        this;
        JVM INSTR monitorenter ;
        int i = count;
        if (i != 0) goto _L2; else goto _L1
_L1:
        byte abyte0[] = EMPTY_BYTE_ARRAY;
_L6:
        this;
        JVM INSTR monitorexit ;
        return abyte0;
_L2:
        byte abyte1[];
        Iterator iterator;
        abyte1 = new byte[i];
        iterator = buffers.iterator();
        int j;
        int k;
        j = i;
        k = 0;
_L4:
        int l;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_104;
        }
        byte abyte2[] = (byte[])iterator.next();
        l = Math.min(abyte2.length, j);
        System.arraycopy(abyte2, 0, abyte1, k, l);
        int i1;
        int j1;
        i1 = k + l;
        j1 = j - l;
        if (j1 != 0)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        abyte0 = abyte1;
        continue; /* Loop/switch isn't completed */
        j = j1;
        k = i1;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public String toString()
    {
        return new String(toByteArray());
    }

    public String toString(String s)
    {
        return new String(toByteArray(), s);
    }

    public int write(InputStream inputstream)
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        int j;
        i = count - filledBufferSum;
        j = inputstream.read(currentBuffer, i, currentBuffer.length - i);
        int k;
        int l;
        int i1;
        k = 0;
        l = j;
        i1 = i;
_L2:
        if (l == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        k += l;
        i1 += l;
        count = l + count;
        if (i1 != currentBuffer.length)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        needNewBuffer(currentBuffer.length);
        i1 = 0;
        int j1 = inputstream.read(currentBuffer, i1, currentBuffer.length - i1);
        l = j1;
        if (true) goto _L2; else goto _L1
_L1:
        return k;
        Exception exception;
        exception;
        throw exception;
    }

    public void write(int i)
    {
        this;
        JVM INSTR monitorenter ;
        int j;
        j = count - filledBufferSum;
        if (j != currentBuffer.length)
        {
            break MISSING_BLOCK_LABEL_33;
        }
        needNewBuffer(1 + count);
        j = 0;
        currentBuffer[j] = (byte)i;
        count = 1 + count;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void write(byte abyte0[], int i, int j)
    {
        if (i < 0 || i > abyte0.length || j < 0 || i + j > abyte0.length || i + j < 0)
        {
            throw new IndexOutOfBoundsException();
        }
        if (j == 0)
        {
            return;
        }
        this;
        JVM INSTR monitorenter ;
        int k;
        int l;
        k = j + count;
        l = count - filledBufferSum;
        int i1 = j;
_L2:
        if (i1 <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        int j1;
        j1 = Math.min(i1, currentBuffer.length - l);
        System.arraycopy(abyte0, (i + j) - i1, currentBuffer, l, j1);
        i1 -= j1;
        if (i1 <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        needNewBuffer(k);
        l = 0;
        if (true) goto _L2; else goto _L1
_L1:
        count = k;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void writeTo(OutputStream outputstream)
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        Iterator iterator;
        i = count;
        iterator = buffers.iterator();
        int j = i;
_L2:
        int k;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_74;
        }
        byte abyte0[] = (byte[])iterator.next();
        k = Math.min(abyte0.length, j);
        outputstream.write(abyte0, 0, k);
        int l;
        l = j - k;
        if (l != 0)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        j = l;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

}
