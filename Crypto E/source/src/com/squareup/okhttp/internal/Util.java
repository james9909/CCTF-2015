// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

public final class Util
{

    public static final byte a[] = new byte[0];
    public static final String b[] = new String[0];
    public static final Charset c = Charset.forName("US-ASCII");
    public static final Charset d = Charset.forName("UTF-8");

    private Util()
    {
    }

    public static int a(String s)
    {
        if ("http".equals(s))
        {
            return 80;
        }
        return !"https".equals(s) ? -1 : 443;
    }

    private static int a(String s, int i)
    {
        if (i != -1)
        {
            return i;
        } else
        {
            return a(s);
        }
    }

    public static int a(URI uri)
    {
        return a(uri.getScheme(), uri.getPort());
    }

    public static int a(URL url)
    {
        return a(url.getProtocol(), url.getPort());
    }

    public static List a(List list)
    {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static transient List a(Object aobj[])
    {
        return Collections.unmodifiableList(Arrays.asList((Object[])((Object []) (aobj)).clone()));
    }

    public static List a(Object aobj[], Object aobj1[])
    {
        ArrayList arraylist = new ArrayList();
        int i = aobj.length;
        int j = 0;
label0:
        do
        {
            if (j < i)
            {
                Object obj = aobj[j];
                int k = aobj1.length;
                int l = 0;
                do
                {
label1:
                    {
                        if (l < k)
                        {
                            Object obj1 = aobj1[l];
                            if (!obj.equals(obj1))
                            {
                                break label1;
                            }
                            arraylist.add(obj1);
                        }
                        j++;
                        continue label0;
                    }
                    l++;
                } while (true);
            }
            return arraylist;
        } while (true);
    }

    public static Map a(Map map)
    {
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public static ThreadFactory a(String s, boolean flag)
    {
        return new ThreadFactory(s, flag) {

            final String a;
            final boolean b;

            public Thread newThread(Runnable runnable)
            {
                Thread thread = new Thread(runnable, a);
                thread.setDaemon(b);
                return thread;
            }

            
            {
                a = s;
                b = flag;
                super();
            }
        };
    }

    public static ByteString a(ByteString bytestring)
    {
        ByteString bytestring1;
        try
        {
            bytestring1 = ByteString.a(MessageDigest.getInstance("SHA-1").digest(bytestring.f()));
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new AssertionError(nosuchalgorithmexception);
        }
        return bytestring1;
    }

    public static void a(long l, long l1, long l2)
    {
        if ((l1 | l2) < 0L || l1 > l || l - l1 < l2)
        {
            throw new ArrayIndexOutOfBoundsException();
        } else
        {
            return;
        }
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        RuntimeException runtimeexception;
        runtimeexception;
        throw runtimeexception;
        Exception exception;
        exception;
    }

    public static void a(Closeable closeable, Closeable closeable1)
    {
        Throwable throwable = null;
        Throwable throwable1;
        try
        {
            closeable.close();
        }
        // Misplaced declaration of an exception variable
        catch (Throwable throwable) { }
        closeable1.close();
_L2:
        if (throwable == null)
        {
            return;
        }
        break; /* Loop/switch isn't completed */
        throwable1;
        if (throwable == null)
        {
            throwable = throwable1;
        }
        if (true) goto _L2; else goto _L1
_L1:
        if (throwable instanceof IOException)
        {
            throw (IOException)throwable;
        }
        if (throwable instanceof RuntimeException)
        {
            throw (RuntimeException)throwable;
        }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        } else
        {
            throw new AssertionError(throwable);
        }
    }

    public static void a(Socket socket)
    {
        if (socket == null)
        {
            break MISSING_BLOCK_LABEL_8;
        }
        socket.close();
        return;
        RuntimeException runtimeexception;
        runtimeexception;
        throw runtimeexception;
        Exception exception;
        exception;
    }

    public static boolean a(Object obj, Object obj1)
    {
        return obj == obj1 || obj != null && obj.equals(obj1);
    }

    public static boolean a(Source source, int i, TimeUnit timeunit)
    {
        boolean flag;
        try
        {
            flag = b(source, i, timeunit);
        }
        catch (IOException ioexception)
        {
            return false;
        }
        return flag;
    }

    public static String b(String s)
    {
        String s1 = ByteString.a(MessageDigest.getInstance("MD5").digest(s.getBytes("UTF-8"))).c();
        return s1;
        Object obj;
        obj;
_L2:
        throw new AssertionError(obj);
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static boolean b(Source source, int i, TimeUnit timeunit)
    {
        long l;
        long l1;
        Exception exception;
        l = System.nanoTime();
        if (source.b().g())
        {
            l1 = source.b().h() - l;
        } else
        {
            l1 = 0x7fffffffffffffffL;
        }
        source.b().a(l + Math.min(l1, timeunit.toNanos(i)));
        try
        {
            for (Buffer buffer = new Buffer(); source.a(buffer, 2048L) != -1L; buffer.u()) { }
        }
        catch (InterruptedIOException interruptedioexception)
        {
            if (l1 == 0x7fffffffffffffffL)
            {
                source.b().i();
            } else
            {
                source.b().a(l1 + l);
            }
            return false;
        }
        finally
        {
            if (l1 != 0x7fffffffffffffffL) goto _L0; else goto _L0
        }
        if (l1 == 0x7fffffffffffffffL)
        {
            source.b().i();
        } else
        {
            source.b().a(l1 + l);
        }
        return true;
        source.b().i();
_L2:
        throw exception;
        source.b().a(l1 + l);
        if (true) goto _L2; else goto _L1
_L1:
    }

}
