// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

// Referenced classes of package com.squareup.okhttp:
//            CipherSuite, TlsVersion, Route, Address

public final class ConnectionSpec
{
    public static final class Builder
    {

        private boolean a;
        private String b[];
        private String c[];
        private boolean d;

        static boolean a(Builder builder)
        {
            return builder.a;
        }

        static String[] b(Builder builder)
        {
            return builder.b;
        }

        static String[] c(Builder builder)
        {
            return builder.c;
        }

        static boolean d(Builder builder)
        {
            return builder.d;
        }

        public Builder a(boolean flag)
        {
            if (!a)
            {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            } else
            {
                d = flag;
                return this;
            }
        }

        public transient Builder a(CipherSuite aciphersuite[])
        {
            if (!a)
            {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String as[] = new String[aciphersuite.length];
            for (int i = 0; i < aciphersuite.length; i++)
            {
                as[i] = aciphersuite[i].aS;
            }

            return a(as);
        }

        public transient Builder a(TlsVersion atlsversion[])
        {
            if (!a)
            {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String as[] = new String[atlsversion.length];
            for (int i = 0; i < atlsversion.length; i++)
            {
                as[i] = atlsversion[i].e;
            }

            return b(as);
        }

        Builder a(String as[])
        {
            b = as;
            return this;
        }

        public ConnectionSpec a()
        {
            return new ConnectionSpec(this);
        }

        transient Builder b(String as[])
        {
            c = as;
            return this;
        }

        public Builder(ConnectionSpec connectionspec)
        {
            a = connectionspec.d;
            b = ConnectionSpec.a(connectionspec);
            c = ConnectionSpec.b(connectionspec);
            d = connectionspec.e;
        }

        private Builder(boolean flag)
        {
            a = flag;
        }

    }


    public static final ConnectionSpec a;
    public static final ConnectionSpec b;
    public static final ConnectionSpec c = (new Builder(false)).a();
    final boolean d;
    final boolean e;
    private final String f[];
    private final String g[];
    private ConnectionSpec h;

    private ConnectionSpec(Builder builder)
    {
        d = Builder.a(builder);
        f = Builder.b(builder);
        g = Builder.c(builder);
        e = Builder.d(builder);
    }


    private ConnectionSpec a(SSLSocket sslsocket)
    {
        List list = Util.a(f, sslsocket.getSupportedCipherSuites());
        List list1 = Util.a(g, sslsocket.getSupportedProtocols());
        return (new Builder(this)).a((String[])list.toArray(new String[list.size()])).b((String[])list1.toArray(new String[list1.size()])).a();
    }

    static String[] a(ConnectionSpec connectionspec)
    {
        return connectionspec.f;
    }

    static String[] b(ConnectionSpec connectionspec)
    {
        return connectionspec.g;
    }

    void a(SSLSocket sslsocket, Route route)
    {
        ConnectionSpec connectionspec = h;
        if (connectionspec == null)
        {
            connectionspec = a(sslsocket);
            h = connectionspec;
        }
        sslsocket.setEnabledProtocols(connectionspec.g);
        String as[] = connectionspec.f;
        String as1[];
        Platform platform;
        if (route.e && Arrays.asList(sslsocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV"))
        {
            as1 = new String[1 + as.length];
            System.arraycopy(as, 0, as1, 0, as.length);
            as1[-1 + as1.length] = "TLS_FALLBACK_SCSV";
        } else
        {
            as1 = as;
        }
        sslsocket.setEnabledCipherSuites(as1);
        platform = Platform.a();
        if (connectionspec.e)
        {
            platform.a(sslsocket, route.a.b, route.a.i);
        }
    }

    public boolean a()
    {
        return d;
    }

    public List b()
    {
        CipherSuite aciphersuite[] = new CipherSuite[f.length];
        for (int i = 0; i < f.length; i++)
        {
            aciphersuite[i] = CipherSuite.a(f[i]);
        }

        return Util.a(aciphersuite);
    }

    public List c()
    {
        TlsVersion atlsversion[] = new TlsVersion[g.length];
        for (int i = 0; i < g.length; i++)
        {
            atlsversion[i] = TlsVersion.a(g[i]);
        }

        return Util.a(atlsversion);
    }

    public boolean d()
    {
        return e;
    }

    public boolean equals(Object obj)
    {
        ConnectionSpec connectionspec;
        if (obj instanceof ConnectionSpec)
        {
            if (d == (connectionspec = (ConnectionSpec)obj).d && (!d || Arrays.equals(f, connectionspec.f) && Arrays.equals(g, connectionspec.g) && e == connectionspec.e))
            {
                return true;
            }
        }
        return false;
    }

    public int hashCode()
    {
        int i = 17;
        if (d)
        {
            int j = 31 * (31 * (527 + Arrays.hashCode(f)) + Arrays.hashCode(g));
            int k;
            if (e)
            {
                k = 0;
            } else
            {
                k = 1;
            }
            i = k + j;
        }
        return i;
    }

    public String toString()
    {
        if (d)
        {
            return (new StringBuilder()).append("ConnectionSpec(cipherSuites=").append(b()).append(", tlsVersions=").append(c()).append(", supportsTlsExtensions=").append(e).append(")").toString();
        } else
        {
            return "ConnectionSpec()";
        }
    }

    static 
    {
        Builder builder = new Builder(true);
        CipherSuite aciphersuite[] = new CipherSuite[18];
        aciphersuite[0] = CipherSuite.aK;
        aciphersuite[1] = CipherSuite.aO;
        aciphersuite[2] = CipherSuite.W;
        aciphersuite[3] = CipherSuite.am;
        aciphersuite[4] = CipherSuite.al;
        aciphersuite[5] = CipherSuite.av;
        aciphersuite[6] = CipherSuite.aw;
        aciphersuite[7] = CipherSuite.aj;
        aciphersuite[8] = CipherSuite.at;
        aciphersuite[9] = CipherSuite.F;
        aciphersuite[10] = CipherSuite.E;
        aciphersuite[11] = CipherSuite.J;
        aciphersuite[12] = CipherSuite.U;
        aciphersuite[13] = CipherSuite.D;
        aciphersuite[14] = CipherSuite.H;
        aciphersuite[15] = CipherSuite.h;
        aciphersuite[16] = CipherSuite.e;
        aciphersuite[17] = CipherSuite.d;
        Builder builder1 = builder.a(aciphersuite);
        TlsVersion atlsversion[] = new TlsVersion[3];
        atlsversion[0] = TlsVersion.a;
        atlsversion[1] = TlsVersion.b;
        atlsversion[2] = TlsVersion.c;
        a = builder1.a(atlsversion).a(true).a();
        Builder builder2 = new Builder(a);
        TlsVersion atlsversion1[] = new TlsVersion[1];
        atlsversion1[0] = TlsVersion.c;
        b = builder2.a(atlsversion1).a();
    }
}
