// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.net.Socket;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

// Referenced classes of package org.apache.http.impl.io:
//            AbstractSessionOutputBuffer

public class SocketOutputBuffer extends AbstractSessionOutputBuffer
{

    public SocketOutputBuffer(Socket socket, int i, HttpParams httpparams)
    {
        int j = 1024;
        super();
        Args.notNull(socket, "Socket");
        int k;
        if (i < 0)
        {
            k = socket.getSendBufferSize();
        } else
        {
            k = i;
        }
        if (k >= j)
        {
            j = k;
        }
        init(socket.getOutputStream(), j, httpparams);
    }
}
