// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import org.apache.http.MessageConstraintException;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.impl.io:
//            HttpTransportMetricsImpl

public class SessionInputBufferImpl
    implements BufferInfo, SessionInputBuffer
{

    private final byte buffer[];
    private int bufferlen;
    private int bufferpos;
    private CharBuffer cbuf;
    private final MessageConstraints constraints;
    private final CharsetDecoder decoder;
    private InputStream instream;
    private final ByteArrayBuffer linebuffer;
    private final HttpTransportMetricsImpl metrics;
    private final int minChunkLimit;

    public SessionInputBufferImpl(HttpTransportMetricsImpl httptransportmetricsimpl, int i)
    {
        this(httptransportmetricsimpl, i, i, null, null);
    }

    public SessionInputBufferImpl(HttpTransportMetricsImpl httptransportmetricsimpl, int i, int j, MessageConstraints messageconstraints, CharsetDecoder charsetdecoder)
    {
        Args.notNull(httptransportmetricsimpl, "HTTP transport metrcis");
        Args.positive(i, "Buffer size");
        metrics = httptransportmetricsimpl;
        buffer = new byte[i];
        bufferpos = 0;
        bufferlen = 0;
        if (j < 0)
        {
            j = 512;
        }
        minChunkLimit = j;
        if (messageconstraints == null)
        {
            messageconstraints = MessageConstraints.DEFAULT;
        }
        constraints = messageconstraints;
        linebuffer = new ByteArrayBuffer(i);
        decoder = charsetdecoder;
    }

    private int appendDecoded(CharArrayBuffer chararraybuffer, ByteBuffer bytebuffer)
    {
        int i = 0;
        if (!bytebuffer.hasRemaining())
        {
            return 0;
        }
        if (cbuf == null)
        {
            cbuf = CharBuffer.allocate(1024);
        }
        decoder.reset();
        while (bytebuffer.hasRemaining()) 
        {
            i += handleDecodingResult(decoder.decode(bytebuffer, cbuf, true), chararraybuffer, bytebuffer);
        }
        int j = i + handleDecodingResult(decoder.flush(cbuf), chararraybuffer, bytebuffer);
        cbuf.clear();
        return j;
    }

    private int handleDecodingResult(CoderResult coderresult, CharArrayBuffer chararraybuffer, ByteBuffer bytebuffer)
    {
        if (coderresult.isError())
        {
            coderresult.throwException();
        }
        cbuf.flip();
        int i = cbuf.remaining();
        for (; cbuf.hasRemaining(); chararraybuffer.append(cbuf.get())) { }
        cbuf.compact();
        return i;
    }

    private int lineFromLineBuffer(CharArrayBuffer chararraybuffer)
    {
        int i = linebuffer.length();
        if (i > 0)
        {
            if (linebuffer.byteAt(i - 1) == 10)
            {
                i--;
            }
            if (i > 0 && linebuffer.byteAt(i - 1) == 13)
            {
                i--;
            }
        }
        if (decoder == null)
        {
            chararraybuffer.append(linebuffer, 0, i);
        } else
        {
            i = appendDecoded(chararraybuffer, ByteBuffer.wrap(linebuffer.buffer(), 0, i));
        }
        linebuffer.clear();
        return i;
    }

    private int lineFromReadBuffer(CharArrayBuffer chararraybuffer, int i)
    {
        int j = bufferpos;
        bufferpos = i + 1;
        if (i > j && buffer[i - 1] == 13)
        {
            i--;
        }
        int k = i - j;
        if (decoder == null)
        {
            chararraybuffer.append(buffer, j, k);
            return k;
        } else
        {
            return appendDecoded(chararraybuffer, ByteBuffer.wrap(buffer, j, k));
        }
    }

    private int locateLF()
    {
        for (int i = bufferpos; i < bufferlen; i++)
        {
            if (buffer[i] == 10)
            {
                return i;
            }
        }

        return -1;
    }

    private int streamRead(byte abyte0[], int i, int j)
    {
        Asserts.notNull(instream, "Input stream");
        return instream.read(abyte0, i, j);
    }

    public int available()
    {
        return capacity() - length();
    }

    public void bind(InputStream inputstream)
    {
        instream = inputstream;
    }

    public int capacity()
    {
        return buffer.length;
    }

    public void clear()
    {
        bufferpos = 0;
        bufferlen = 0;
    }

    public int fillBuffer()
    {
        if (bufferpos > 0)
        {
            int l = bufferlen - bufferpos;
            if (l > 0)
            {
                System.arraycopy(buffer, bufferpos, buffer, 0, l);
            }
            bufferpos = 0;
            bufferlen = l;
        }
        int i = bufferlen;
        int j = buffer.length - i;
        int k = streamRead(buffer, i, j);
        if (k == -1)
        {
            return -1;
        } else
        {
            bufferlen = i + k;
            metrics.incrementBytesTransferred(k);
            return k;
        }
    }

    public HttpTransportMetrics getMetrics()
    {
        return metrics;
    }

    public boolean hasBufferedData()
    {
        return bufferpos < bufferlen;
    }

    public boolean isBound()
    {
        return instream != null;
    }

    public boolean isDataAvailable(int i)
    {
        return hasBufferedData();
    }

    public int length()
    {
        return bufferlen - bufferpos;
    }

    public int read()
    {
        while (!hasBufferedData()) 
        {
            if (fillBuffer() == -1)
            {
                return -1;
            }
        }
        byte abyte0[] = buffer;
        int i = bufferpos;
        bufferpos = i + 1;
        return 0xff & abyte0[i];
    }

    public int read(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return 0;
        } else
        {
            return read(abyte0, 0, abyte0.length);
        }
    }

    public int read(byte abyte0[], int i, int j)
    {
        int l;
        if (abyte0 == null)
        {
            l = 0;
        } else
        {
            if (hasBufferedData())
            {
                int i1 = Math.min(j, bufferlen - bufferpos);
                System.arraycopy(buffer, bufferpos, abyte0, i, i1);
                bufferpos = i1 + bufferpos;
                return i1;
            }
            if (j > minChunkLimit)
            {
                l = streamRead(abyte0, i, j);
                if (l > 0)
                {
                    metrics.incrementBytesTransferred(l);
                    return l;
                }
            } else
            {
                while (!hasBufferedData()) 
                {
                    if (fillBuffer() == -1)
                    {
                        return -1;
                    }
                }
                int k = Math.min(j, bufferlen - bufferpos);
                System.arraycopy(buffer, bufferpos, abyte0, i, k);
                bufferpos = k + bufferpos;
                return k;
            }
        }
        return l;
    }

    public int readLine(CharArrayBuffer chararraybuffer)
    {
        Args.notNull(chararraybuffer, "Char array buffer");
        boolean flag = true;
        int i = 0;
        while (flag) 
        {
            int j = locateLF();
            int k;
            if (j != -1)
            {
                if (linebuffer.isEmpty())
                {
                    return lineFromReadBuffer(chararraybuffer, j);
                }
                int i1 = (j + 1) - bufferpos;
                linebuffer.append(buffer, bufferpos, i1);
                bufferpos = j + 1;
                flag = false;
            } else
            {
                if (hasBufferedData())
                {
                    int l = bufferlen - bufferpos;
                    linebuffer.append(buffer, bufferpos, l);
                    bufferpos = bufferlen;
                }
                i = fillBuffer();
                if (i == -1)
                {
                    flag = false;
                }
            }
            k = constraints.getMaxLineLength();
            if (k > 0 && linebuffer.length() >= k)
            {
                throw new MessageConstraintException("Maximum line length limit exceeded");
            }
        }
        if (i == -1 && linebuffer.isEmpty())
        {
            return -1;
        } else
        {
            return lineFromLineBuffer(chararraybuffer);
        }
    }

    public String readLine()
    {
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(64);
        if (readLine(chararraybuffer) != -1)
        {
            return chararraybuffer.toString();
        } else
        {
            return null;
        }
    }
}
