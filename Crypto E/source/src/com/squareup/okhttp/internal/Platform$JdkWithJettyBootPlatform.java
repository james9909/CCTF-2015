// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import com.squareup.okhttp.Protocol;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

// Referenced classes of package com.squareup.okhttp.internal:
//            Platform, Internal

static class e extends Platform
{

    private final Method a;
    private final Method b;
    private final Method c;
    private final Class d;
    private final Class e;

    public void a(SSLSocket sslsocket)
    {
        try
        {
            c.invoke(null, new Object[] {
                sslsocket
            });
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new AssertionError();
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new AssertionError();
        }
    }

    public void a(SSLSocket sslsocket, String s, List list)
    {
        ArrayList arraylist = new ArrayList(list.size());
        int i = list.size();
        int j = 0;
        while (j < i) 
        {
            Protocol protocol = (Protocol)list.get(j);
            if (protocol != Protocol.a)
            {
                arraylist.add(protocol.toString());
            }
            j++;
        }
        try
        {
            ClassLoader classloader = com/squareup/okhttp/internal/Platform.getClassLoader();
            Class aclass[] = new Class[2];
            aclass[0] = d;
            aclass[1] = e;
            Object obj = Proxy.newProxyInstance(classloader, aclass, new e(arraylist));
            a.invoke(null, new Object[] {
                sslsocket, obj
            });
            return;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new AssertionError(invocationtargetexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new AssertionError(illegalaccessexception);
        }
    }

    public String b(SSLSocket sslsocket)
    {
        a a1;
        a1 = (a)Proxy.getInvocationHandler(b.invoke(null, new Object[] {
            sslsocket
        }));
        if (b(a1) || b(a1) != null)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        Internal.a.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
        return null;
        String s;
        if (b(a1))
        {
            s = null;
        } else
        {
            String s1;
            try
            {
                s1 = b(a1);
            }
            catch (InvocationTargetException invocationtargetexception)
            {
                throw new AssertionError();
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                throw new AssertionError();
            }
            s = s1;
        }
        return s;
    }

    public (Method method, Method method1, Method method2, Class class1, Class class2)
    {
        a = method;
        b = method1;
        c = method2;
        d = class1;
        e = class2;
    }
}
