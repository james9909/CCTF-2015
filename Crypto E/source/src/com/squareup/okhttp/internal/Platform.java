// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal;

import com.squareup.okhttp.Protocol;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;
import okio.Buffer;

// Referenced classes of package com.squareup.okhttp.internal:
//            OptionalMethod, Util, Internal

public class Platform
{
    static class Android extends Platform
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

        private Android(Method method, Method method1)
        {
            e = method;
            f = method1;
        }

    }

    static class JdkWithJettyBootPlatform extends Platform
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
                Object obj = Proxy.newProxyInstance(classloader, aclass, new JettyNegoProvider(arraylist));
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
            JettyNegoProvider jettynegoprovider;
            jettynegoprovider = (JettyNegoProvider)Proxy.getInvocationHandler(b.invoke(null, new Object[] {
                sslsocket
            }));
            if (JettyNegoProvider.a(jettynegoprovider) || JettyNegoProvider.b(jettynegoprovider) != null)
            {
                break MISSING_BLOCK_LABEL_53;
            }
            Internal.a.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
            return null;
            String s;
            if (JettyNegoProvider.a(jettynegoprovider))
            {
                s = null;
            } else
            {
                String s1;
                try
                {
                    s1 = JettyNegoProvider.b(jettynegoprovider);
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

        public JdkWithJettyBootPlatform(Method method, Method method1, Method method2, Class class1, Class class2)
        {
            a = method;
            b = method1;
            c = method2;
            d = class1;
            e = class2;
        }
    }

    static class JettyNegoProvider
        implements InvocationHandler
    {

        private final List a;
        private boolean b;
        private String c;

        static boolean a(JettyNegoProvider jettynegoprovider)
        {
            return jettynegoprovider.b;
        }

        static String b(JettyNegoProvider jettynegoprovider)
        {
            return jettynegoprovider.c;
        }

        public Object invoke(Object obj, Method method, Object aobj[])
        {
            String s = method.getName();
            Class class1 = method.getReturnType();
            if (aobj == null)
            {
                aobj = Util.b;
            }
            if (s.equals("supports") && Boolean.TYPE == class1)
            {
                return Boolean.valueOf(true);
            }
            if (s.equals("unsupported") && Void.TYPE == class1)
            {
                b = true;
                return null;
            }
            if (s.equals("protocols") && aobj.length == 0)
            {
                return a;
            }
            if ((s.equals("selectProtocol") || s.equals("select")) && java/lang/String == class1 && aobj.length == 1 && (aobj[0] instanceof List))
            {
                List list = (List)aobj[0];
                int i = list.size();
                for (int j = 0; j < i; j++)
                {
                    if (a.contains(list.get(j)))
                    {
                        String s2 = (String)list.get(j);
                        c = s2;
                        return s2;
                    }
                }

                String s1 = (String)a.get(0);
                c = s1;
                return s1;
            }
            if ((s.equals("protocolSelected") || s.equals("selected")) && aobj.length == 1)
            {
                c = (String)aobj[0];
                return null;
            } else
            {
                return method.invoke(this, aobj);
            }
        }

        public JettyNegoProvider(List list)
        {
            a = list;
        }
    }


    private static final Platform a = c();

    public Platform()
    {
    }

    public static Platform a()
    {
        return a;
    }

    static byte[] a(List list)
    {
        Buffer buffer = new Buffer();
        int i = list.size();
        int j = 0;
        while (j < i) 
        {
            Protocol protocol = (Protocol)list.get(j);
            if (protocol != Protocol.a)
            {
                buffer.a(protocol.toString().length());
                buffer.a(protocol.toString());
            }
            j++;
        }
        return buffer.t();
    }

    private static Platform c()
    {
        Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
_L1:
        Class class5;
        Method method3;
        class5 = Class.forName("android.net.TrafficStats");
        method3 = class5.getMethod("tagSocket", new Class[] {
            java/net/Socket
        });
        Method method = method3;
        Method method4 = class5.getMethod("untagSocket", new Class[] {
            java/net/Socket
        });
        Method method1;
        Method method2;
        method2 = method4;
        method1 = method;
_L2:
        return new Android(method1, method2);
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        Class.forName("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
          goto _L1
        ClassNotFoundException classnotfoundexception1;
        classnotfoundexception1;
        JdkWithJettyBootPlatform jdkwithjettybootplatform;
        Class class1 = Class.forName("org.eclipse.jetty.alpn.ALPN");
        Class class2 = Class.forName((new StringBuilder()).append("org.eclipse.jetty.alpn.ALPN").append("$Provider").toString());
        Class class3 = Class.forName((new StringBuilder()).append("org.eclipse.jetty.alpn.ALPN").append("$ClientProvider").toString());
        Class class4 = Class.forName((new StringBuilder()).append("org.eclipse.jetty.alpn.ALPN").append("$ServerProvider").toString());
        jdkwithjettybootplatform = new JdkWithJettyBootPlatform(class1.getMethod("put", new Class[] {
            javax/net/ssl/SSLSocket, class2
        }), class1.getMethod("get", new Class[] {
            javax/net/ssl/SSLSocket
        }), class1.getMethod("remove", new Class[] {
            javax/net/ssl/SSLSocket
        }), class3, class4);
        return jdkwithjettybootplatform;
        ClassNotFoundException classnotfoundexception2;
        classnotfoundexception2;
_L3:
        return new Platform();
        ClassNotFoundException classnotfoundexception3;
        classnotfoundexception3;
        method = null;
_L5:
        method1 = method;
        method2 = null;
          goto _L2
        NoSuchMethodException nosuchmethodexception1;
        nosuchmethodexception1;
        method = null;
_L4:
        method1 = method;
        method2 = null;
          goto _L2
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
          goto _L3
        NoSuchMethodException nosuchmethodexception2;
        nosuchmethodexception2;
          goto _L4
        ClassNotFoundException classnotfoundexception4;
        classnotfoundexception4;
          goto _L5
    }

    public URI a(URL url)
    {
        return url.toURI();
    }

    public void a(String s)
    {
        System.out.println(s);
    }

    public void a(Socket socket)
    {
    }

    public void a(Socket socket, InetSocketAddress inetsocketaddress, int i)
    {
        socket.connect(inetsocketaddress, i);
    }

    public void a(SSLSocket sslsocket)
    {
    }

    public void a(SSLSocket sslsocket, String s, List list)
    {
    }

    public String b()
    {
        return "OkHttp";
    }

    public String b(SSLSocket sslsocket)
    {
        return null;
    }

    public void b(Socket socket)
    {
    }

}
