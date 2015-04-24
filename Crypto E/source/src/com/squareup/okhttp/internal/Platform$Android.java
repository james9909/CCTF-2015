// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.List;
import javax.net.ssl.SSLSocket;

// Referenced classes of package com.squareup.okhttp.internal:
//            Platform, OptionalMethod, Util

static class <init> extends Platform
{

    private static final OptionalMethod a;
    private static final OptionalMethod b = new OptionalMethod(null, "setHostname", new Class[] {
        java/lang/String
    });
    private static final OptionalMethod c = new OptionalMethod([B, "getAlpnSelectedProtocol", new Class[0]);
    private static final OptionalMethod d = new OptionalMethod(null, "setAlpnProtocols", new Class[] {
        [B
    });
    private final Method e;
    private final Method f;

    public void a(Socket socket)
    {
        if (e == null)
        {
            return;
        }
        try
        {
            e.invoke(null, new Object[] {
                socket
            });
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new RuntimeException(invocationtargetexception.getCause());
        }
    }

    public void a(Socket socket, InetSocketAddress inetsocketaddress, int i)
    {
        try
        {
            socket.connect(inetsocketaddress, i);
            return;
        }
        catch (SecurityException securityexception)
        {
            IOException ioexception = new IOException("Exception in connect");
            ioexception.initCause(securityexception);
            throw ioexception;
        }
    }

    public void a(SSLSocket sslsocket, String s, List list)
    {
        if (s != null)
        {
            OptionalMethod optionalmethod = a;
            Object aobj1[] = new Object[1];
            aobj1[0] = Boolean.valueOf(true);
            optionalmethod.b(sslsocket, aobj1);
            b.b(sslsocket, new Object[] {
                s
            });
        }
        if (!d.a(sslsocket))
        {
            return;
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = a(list);
            d.d(sslsocket, aobj);
            return;
        }
    }

    public String b(SSLSocket sslsocket)
    {
        if (!c.a(sslsocket))
        {
            return null;
        }
        byte abyte0[] = (byte[])(byte[])c.d(sslsocket, new Object[0]);
        if (abyte0 != null)
        {
            return new String(abyte0, Util.d);
        } else
        {
            return null;
        }
    }

    public void b(Socket socket)
    {
        if (f == null)
        {
            return;
        }
        try
        {
            f.invoke(null, new Object[] {
                socket
            });
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new RuntimeException(invocationtargetexception.getCause());
        }
    }

    static 
    {
        Class aclass[] = new Class[1];
        aclass[0] = Boolean.TYPE;
        a = new OptionalMethod(null, "setUseSessionTickets", aclass);
    }

    private (Method method, Method method1)
    {
        e = method;
        f = method1;
    }

    f(Method method, Method method1, f f1)
    {
        this(method, method1);
    }
}
