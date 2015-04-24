// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.net.Socket;
import org.apache.http.io.EofSensor;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.impl.io:
//            AbstractSessionInputBuffer

public class SocketInputBuffer extends AbstractSessionInputBuffer
    implements EofSensor
{

    private boolean eof;
    private final Socket socket;

    public SocketInputBuffer(Socket socket1, int i, HttpParams httpparams)
    {
        int j = 1024;
        super();
        Args.notNull(socket1, "Socket");
        socket = socket1;
        eof = false;
        int k;
        if (i < 0)
        {
            k = socket1.getReceiveBufferSize();
        } else
        {
            k = i;
        }
        if (k >= j)
        {
            j = k;
        }
        init(socket1.getInputStream(), j, httpparams);
    }

    protected int fillBuffer()
    {
        int i = super.fillBuffer();
        boolean flag;
        if (i == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        eof = flag;
        return i;
    }

    public boolean isDataAvailable(int i)
    {
        boolean flag;
        int j;
        flag = hasBufferedData();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        j = socket.getSoTimeout();
        boolean flag1;
        socket.setSoTimeout(i);
        fillBuffer();
        flag1 = hasBufferedData();
        flag = flag1;
        socket.setSoTimeout(j);
        return flag;
        Exception exception;
        exception;
        socket.setSoTimeout(j);
        throw exception;
    }

    public boolean isEof()
    {
        return eof;
    }
}
