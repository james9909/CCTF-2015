// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.ConnectionClosedException;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;

public class ContentLengthInputStream extends InputStream
{

    private static final int BUFFER_SIZE = 2048;
    private boolean closed;
    private final long contentLength;
    private SessionInputBuffer in;
    private long pos;

    public ContentLengthInputStream(SessionInputBuffer sessioninputbuffer, long l)
    {
        pos = 0L;
        closed = false;
        in = null;
        in = (SessionInputBuffer)Args.notNull(sessioninputbuffer, "Session input buffer");
        contentLength = Args.notNegative(l, "Content length");
    }

    public int available()
    {
        if (in instanceof BufferInfo)
        {
            return Math.min(((BufferInfo)in).length(), (int)(contentLength - pos));
        } else
        {
            return 0;
        }
    }

    public void close()
    {
        if (closed)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        byte abyte0[];
        if (pos >= contentLength)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        abyte0 = new byte[2048];
        int i;
        do
        {
            i = read(abyte0);
        } while (i >= 0);
        closed = true;
        return;
        Exception exception;
        exception;
        closed = true;
        throw exception;
    }

    public int read()
    {
        if (closed)
        {
            throw new IOException("Attempted read from closed stream.");
        }
        if (pos >= contentLength)
        {
            return -1;
        }
        int i = in.read();
        if (i == -1)
        {
            if (pos < contentLength)
            {
                throw new ConnectionClosedException((new StringBuilder()).append("Premature end of Content-Length delimited message body (expected: ").append(contentLength).append("; received: ").append(pos).toString());
            }
        } else
        {
            pos = 1L + pos;
        }
        return i;
    }

    public int read(byte abyte0[])
    {
        return read(abyte0, 0, abyte0.length);
    }

    public int read(byte abyte0[], int i, int j)
    {
        if (closed)
        {
            throw new IOException("Attempted read from closed stream.");
        }
        if (pos >= contentLength)
        {
            return -1;
        }
        if (pos + (long)j > contentLength)
        {
            j = (int)(contentLength - pos);
        }
        int k = in.read(abyte0, i, j);
        if (k == -1 && pos < contentLength)
        {
            throw new ConnectionClosedException((new StringBuilder()).append("Premature end of Content-Length delimited message body (expected: ").append(contentLength).append("; received: ").append(pos).toString());
        }
        if (k > 0)
        {
            pos = pos + (long)k;
        }
        return k;
    }

    public long skip(long l)
    {
        if (l <= 0L)
        {
            return 0L;
        }
        byte abyte0[] = new byte[2048];
        long l1 = Math.min(l, contentLength - pos);
        long l2 = 0L;
        do
        {
            int i;
label0:
            {
                if (l1 > 0L)
                {
                    i = read(abyte0, 0, (int)Math.min(2048L, l1));
                    if (i != -1)
                    {
                        break label0;
                    }
                }
                return l2;
            }
            l2 += i;
            l1 -= i;
        } while (true);
    }
}
