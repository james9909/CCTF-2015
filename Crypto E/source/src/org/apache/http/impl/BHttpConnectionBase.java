// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import org.apache.http.HttpConnection;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntity;
import org.apache.http.HttpInetConnection;
import org.apache.http.HttpMessage;
import org.apache.http.config.MessageConstraints;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.entity.ContentLengthStrategy;
import org.apache.http.impl.entity.LaxContentLengthStrategy;
import org.apache.http.impl.entity.StrictContentLengthStrategy;
import org.apache.http.impl.io.ChunkedInputStream;
import org.apache.http.impl.io.ChunkedOutputStream;
import org.apache.http.impl.io.ContentLengthInputStream;
import org.apache.http.impl.io.ContentLengthOutputStream;
import org.apache.http.impl.io.HttpTransportMetricsImpl;
import org.apache.http.impl.io.IdentityInputStream;
import org.apache.http.impl.io.IdentityOutputStream;
import org.apache.http.impl.io.SessionInputBufferImpl;
import org.apache.http.impl.io.SessionOutputBufferImpl;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.NetUtils;

// Referenced classes of package org.apache.http.impl:
//            HttpConnectionMetricsImpl

public class BHttpConnectionBase
    implements HttpConnection, HttpInetConnection
{

    private final HttpConnectionMetricsImpl connMetrics;
    private final SessionInputBufferImpl inbuffer;
    private final ContentLengthStrategy incomingContentStrategy;
    private volatile boolean open;
    private final SessionOutputBufferImpl outbuffer;
    private final ContentLengthStrategy outgoingContentStrategy;
    private volatile Socket socket;

    protected BHttpConnectionBase(int i, int j, CharsetDecoder charsetdecoder, CharsetEncoder charsetencoder, MessageConstraints messageconstraints, ContentLengthStrategy contentlengthstrategy, ContentLengthStrategy contentlengthstrategy1)
    {
        Args.positive(i, "Buffer size");
        HttpTransportMetricsImpl httptransportmetricsimpl = new HttpTransportMetricsImpl();
        HttpTransportMetricsImpl httptransportmetricsimpl1 = new HttpTransportMetricsImpl();
        MessageConstraints messageconstraints1;
        if (messageconstraints != null)
        {
            messageconstraints1 = messageconstraints;
        } else
        {
            messageconstraints1 = MessageConstraints.DEFAULT;
        }
        inbuffer = new SessionInputBufferImpl(httptransportmetricsimpl, i, -1, messageconstraints1, charsetdecoder);
        outbuffer = new SessionOutputBufferImpl(httptransportmetricsimpl1, i, j, charsetencoder);
        connMetrics = new HttpConnectionMetricsImpl(httptransportmetricsimpl, httptransportmetricsimpl1);
        if (contentlengthstrategy == null)
        {
            contentlengthstrategy = LaxContentLengthStrategy.INSTANCE;
        }
        incomingContentStrategy = contentlengthstrategy;
        if (contentlengthstrategy1 == null)
        {
            contentlengthstrategy1 = StrictContentLengthStrategy.INSTANCE;
        }
        outgoingContentStrategy = contentlengthstrategy1;
    }

    private int fillInputBuffer(int i)
    {
        int j = socket.getSoTimeout();
        int k;
        socket.setSoTimeout(i);
        k = inbuffer.fillBuffer();
        socket.setSoTimeout(j);
        return k;
        Exception exception;
        exception;
        socket.setSoTimeout(j);
        throw exception;
    }

    protected boolean awaitInput(int i)
    {
        if (inbuffer.hasBufferedData())
        {
            return true;
        } else
        {
            fillInputBuffer(i);
            return inbuffer.hasBufferedData();
        }
    }

    protected void bind(Socket socket1)
    {
        Args.notNull(socket1, "Socket");
        socket = socket1;
        open = true;
        inbuffer.bind(null);
        outbuffer.bind(null);
    }

    public void close()
    {
        Socket socket1;
        if (!open)
        {
            return;
        }
        open = false;
        socket1 = socket;
        inbuffer.clear();
        outbuffer.flush();
        Exception exception;
        try
        {
            socket1.shutdownOutput();
        }
        catch (IOException ioexception) { }
        try
        {
            socket1.shutdownInput();
        }
        catch (IOException ioexception1) { }
_L2:
        socket1.close();
        return;
        exception;
        socket1.close();
        throw exception;
        UnsupportedOperationException unsupportedoperationexception;
        unsupportedoperationexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected InputStream createInputStream(long l, SessionInputBuffer sessioninputbuffer)
    {
        if (l == -2L)
        {
            return new ChunkedInputStream(sessioninputbuffer);
        }
        if (l == -1L)
        {
            return new IdentityInputStream(sessioninputbuffer);
        } else
        {
            return new ContentLengthInputStream(sessioninputbuffer, l);
        }
    }

    protected OutputStream createOutputStream(long l, SessionOutputBuffer sessionoutputbuffer)
    {
        if (l == -2L)
        {
            return new ChunkedOutputStream(2048, sessionoutputbuffer);
        }
        if (l == -1L)
        {
            return new IdentityOutputStream(sessionoutputbuffer);
        } else
        {
            return new ContentLengthOutputStream(sessionoutputbuffer, l);
        }
    }

    protected void doFlush()
    {
        outbuffer.flush();
    }

    protected void ensureOpen()
    {
        Asserts.check(open, "Connection is not open");
        if (!inbuffer.isBound())
        {
            inbuffer.bind(getSocketInputStream(socket));
        }
        if (!outbuffer.isBound())
        {
            outbuffer.bind(getSocketOutputStream(socket));
        }
    }

    public InetAddress getLocalAddress()
    {
        if (socket != null)
        {
            return socket.getLocalAddress();
        } else
        {
            return null;
        }
    }

    public int getLocalPort()
    {
        if (socket != null)
        {
            return socket.getLocalPort();
        } else
        {
            return -1;
        }
    }

    public HttpConnectionMetrics getMetrics()
    {
        return connMetrics;
    }

    public InetAddress getRemoteAddress()
    {
        if (socket != null)
        {
            return socket.getInetAddress();
        } else
        {
            return null;
        }
    }

    public int getRemotePort()
    {
        if (socket != null)
        {
            return socket.getPort();
        } else
        {
            return -1;
        }
    }

    protected SessionInputBuffer getSessionInputBuffer()
    {
        return inbuffer;
    }

    protected SessionOutputBuffer getSessionOutputBuffer()
    {
        return outbuffer;
    }

    protected Socket getSocket()
    {
        return socket;
    }

    protected InputStream getSocketInputStream(Socket socket1)
    {
        return socket1.getInputStream();
    }

    protected OutputStream getSocketOutputStream(Socket socket1)
    {
        return socket1.getOutputStream();
    }

    public int getSocketTimeout()
    {
        int i = -1;
        if (socket != null)
        {
            int j;
            try
            {
                j = socket.getSoTimeout();
            }
            catch (SocketException socketexception)
            {
                return i;
            }
            i = j;
        }
        return i;
    }

    protected void incrementRequestCount()
    {
        connMetrics.incrementRequestCount();
    }

    protected void incrementResponseCount()
    {
        connMetrics.incrementResponseCount();
    }

    public boolean isOpen()
    {
        return open;
    }

    public boolean isStale()
    {
        if (isOpen())
        {
            int i;
            try
            {
                i = fillInputBuffer(1);
            }
            catch (SocketTimeoutException sockettimeoutexception)
            {
                return false;
            }
            catch (IOException ioexception)
            {
                return true;
            }
            if (i >= 0)
            {
                return false;
            }
        }
        return true;
    }

    protected HttpEntity prepareInput(HttpMessage httpmessage)
    {
        BasicHttpEntity basichttpentity = new BasicHttpEntity();
        long l = incomingContentStrategy.determineLength(httpmessage);
        InputStream inputstream = createInputStream(l, inbuffer);
        org.apache.http.Header header;
        org.apache.http.Header header1;
        if (l == -2L)
        {
            basichttpentity.setChunked(true);
            basichttpentity.setContentLength(-1L);
            basichttpentity.setContent(inputstream);
        } else
        if (l == -1L)
        {
            basichttpentity.setChunked(false);
            basichttpentity.setContentLength(-1L);
            basichttpentity.setContent(inputstream);
        } else
        {
            basichttpentity.setChunked(false);
            basichttpentity.setContentLength(l);
            basichttpentity.setContent(inputstream);
        }
        header = httpmessage.getFirstHeader("Content-Type");
        if (header != null)
        {
            basichttpentity.setContentType(header);
        }
        header1 = httpmessage.getFirstHeader("Content-Encoding");
        if (header1 != null)
        {
            basichttpentity.setContentEncoding(header1);
        }
        return basichttpentity;
    }

    protected OutputStream prepareOutput(HttpMessage httpmessage)
    {
        return createOutputStream(outgoingContentStrategy.determineLength(httpmessage), outbuffer);
    }

    public void setSocketTimeout(int i)
    {
        if (socket == null)
        {
            break MISSING_BLOCK_LABEL_15;
        }
        socket.setSoTimeout(i);
        return;
        SocketException socketexception;
        socketexception;
    }

    public void shutdown()
    {
        open = false;
        Socket socket1 = socket;
        if (socket1 != null)
        {
            socket1.close();
        }
    }

    public String toString()
    {
        if (socket != null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            java.net.SocketAddress socketaddress = socket.getRemoteSocketAddress();
            java.net.SocketAddress socketaddress1 = socket.getLocalSocketAddress();
            if (socketaddress != null && socketaddress1 != null)
            {
                NetUtils.formatAddress(stringbuilder, socketaddress1);
                stringbuilder.append("<->");
                NetUtils.formatAddress(stringbuilder, socketaddress);
            }
            return stringbuilder.toString();
        } else
        {
            return "[Not bound]";
        }
    }
}
