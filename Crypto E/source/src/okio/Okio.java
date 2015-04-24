// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package okio:
//            RealBufferedSink, RealBufferedSource, Timeout, AsyncTimeout, 
//            Sink, BufferedSink, Source, BufferedSource, 
//            Buffer, Util, Segment, SegmentPool

public final class Okio
{

    private static final Logger a = Logger.getLogger(okio/Okio.getName());

    private Okio()
    {
    }

    static Logger a()
    {
        return a;
    }

    public static BufferedSink a(Sink sink)
    {
        if (sink == null)
        {
            throw new IllegalArgumentException("sink == null");
        } else
        {
            return new RealBufferedSink(sink);
        }
    }

    public static BufferedSource a(Source source)
    {
        if (source == null)
        {
            throw new IllegalArgumentException("source == null");
        } else
        {
            return new RealBufferedSource(source);
        }
    }

    public static Sink a(OutputStream outputstream)
    {
        return a(outputstream, new Timeout());
    }

    private static Sink a(OutputStream outputstream, Timeout timeout)
    {
        if (outputstream == null)
        {
            throw new IllegalArgumentException("out == null");
        }
        if (timeout == null)
        {
            throw new IllegalArgumentException("timeout == null");
        } else
        {
            return new Sink(timeout, outputstream) {

                final Timeout a;
                final OutputStream b;

                public void a()
                {
                    b.flush();
                }

                public void a_(Buffer buffer, long l)
                {
                    Util.a(buffer.b, 0L, l);
                    do
                    {
                        if (l <= 0L)
                        {
                            break;
                        }
                        a.j();
                        Segment segment = buffer.a;
                        int i = (int)Math.min(l, segment.c - segment.b);
                        b.write(segment.a, segment.b, i);
                        segment.b = i + segment.b;
                        l -= i;
                        buffer.b = buffer.b - (long)i;
                        if (segment.b == segment.c)
                        {
                            buffer.a = segment.a();
                            SegmentPool.a.a(segment);
                        }
                    } while (true);
                }

                public Timeout b()
                {
                    return a;
                }

                public void close()
                {
                    b.close();
                }

                public String toString()
                {
                    return (new StringBuilder()).append("sink(").append(b).append(")").toString();
                }

            
            {
                a = timeout;
                b = outputstream;
                super();
            }
            };
        }
    }

    public static Sink a(Socket socket)
    {
        if (socket == null)
        {
            throw new IllegalArgumentException("socket == null");
        } else
        {
            AsyncTimeout asynctimeout = c(socket);
            return asynctimeout.a(a(socket.getOutputStream(), ((Timeout) (asynctimeout))));
        }
    }

    public static Source a(File file)
    {
        if (file == null)
        {
            throw new IllegalArgumentException("file == null");
        } else
        {
            return a(((InputStream) (new FileInputStream(file))));
        }
    }

    public static Source a(InputStream inputstream)
    {
        return a(inputstream, new Timeout());
    }

    private static Source a(InputStream inputstream, Timeout timeout)
    {
        if (inputstream == null)
        {
            throw new IllegalArgumentException("in == null");
        }
        if (timeout == null)
        {
            throw new IllegalArgumentException("timeout == null");
        } else
        {
            return new Source(timeout, inputstream) {

                final Timeout a;
                final InputStream b;

                public long a(Buffer buffer, long l)
                {
                    if (l < 0L)
                    {
                        throw new IllegalArgumentException((new StringBuilder()).append("byteCount < 0: ").append(l).toString());
                    }
                    a.j();
                    Segment segment = buffer.e(1);
                    int i = (int)Math.min(l, 2048 - segment.c);
                    int j = b.read(segment.a, segment.c, i);
                    if (j == -1)
                    {
                        return -1L;
                    } else
                    {
                        segment.c = j + segment.c;
                        buffer.b = buffer.b + (long)j;
                        return (long)j;
                    }
                }

                public Timeout b()
                {
                    return a;
                }

                public void close()
                {
                    b.close();
                }

                public String toString()
                {
                    return (new StringBuilder()).append("source(").append(b).append(")").toString();
                }

            
            {
                a = timeout;
                b = inputstream;
                super();
            }
            };
        }
    }

    public static Sink b(File file)
    {
        if (file == null)
        {
            throw new IllegalArgumentException("file == null");
        } else
        {
            return a(new FileOutputStream(file));
        }
    }

    public static Source b(Socket socket)
    {
        if (socket == null)
        {
            throw new IllegalArgumentException("socket == null");
        } else
        {
            AsyncTimeout asynctimeout = c(socket);
            return asynctimeout.a(a(socket.getInputStream(), asynctimeout));
        }
    }

    private static AsyncTimeout c(Socket socket)
    {
        return new AsyncTimeout(socket) {

            final Socket a;

            protected void a()
            {
                try
                {
                    a.close();
                    return;
                }
                catch (Exception exception)
                {
                    Okio.a().log(Level.WARNING, (new StringBuilder()).append("Failed to close timed out socket ").append(a).toString(), exception);
                }
            }

            
            {
                a = socket;
                super();
            }
        };
    }

    public static Sink c(File file)
    {
        if (file == null)
        {
            throw new IllegalArgumentException("file == null");
        } else
        {
            return a(new FileOutputStream(file, true));
        }
    }

}
