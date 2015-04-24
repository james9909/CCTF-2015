// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.util.HashMap;

public final class bz extends Enum
{

    public static final bz A;
    public static final bz B;
    private static HashMap C;
    private static final bz F[];
    public static final bz a;
    public static final bz b;
    public static final bz c;
    public static final bz d;
    public static final bz e;
    public static final bz f;
    public static final bz g;
    public static final bz h;
    public static final bz i;
    public static final bz j;
    public static final bz k;
    public static final bz l;
    public static final bz m;
    public static final bz n;
    public static final bz o;
    public static final bz p;
    public static final bz q;
    public static final bz r;
    public static final bz s;
    public static final bz t;
    public static final bz u;
    public static final bz v;
    public static final bz w;
    public static final bz x;
    public static final bz y;
    public static final bz z;
    private int D;
    private String E;

    private bz(String s1, int i1, int j1, String s2)
    {
        super(s1, i1);
        D = j1;
        E = s2;
    }

    public static bz a(Throwable throwable)
    {
        if (C == null)
        {
            b();
        }
        String s1 = null;
        if (throwable != null)
        {
            s1 = throwable.getClass().getName();
        }
        bz bz1 = (bz)C.get(s1);
        if (bz1 == null)
        {
            bz1 = B;
        }
        return bz1;
    }

    private static void b()
    {
        crittercism/android/bz;
        JVM INSTR monitorenter ;
        HashMap hashmap = C;
        if (hashmap == null) goto _L2; else goto _L1
_L1:
        crittercism/android/bz;
        JVM INSTR monitorexit ;
        return;
_L2:
        HashMap hashmap1;
        bz abz[];
        int i1;
        hashmap1 = new HashMap();
        abz = values();
        i1 = abz.length;
        int j1 = 0;
_L4:
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        bz bz1 = abz[j1];
        hashmap1.put(bz1.E, bz1);
        j1++;
        if (true) goto _L4; else goto _L3
_L3:
        C = hashmap1;
        if (true) goto _L1; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    public static bz valueOf(String s1)
    {
        return (bz)Enum.valueOf(crittercism/android/bz, s1);
    }

    public static bz[] values()
    {
        return (bz[])F.clone();
    }

    public final int a()
    {
        return D;
    }

    static 
    {
        a = new bz("OK", 0, 0, null);
        b = new bz("ASSERTION_ERROR", 1, 1, "java.lang.AssertionError");
        c = new bz("BIND_EXCEPTION", 2, 2, "java.net.BindException");
        d = new bz("CLASS_NOT_FOUND_EXCEPTION", 3, 3, "java.lang.ClassNotFoundException");
        e = new bz("ERROR", 4, 4, "java.lang.Error");
        f = new bz("IO_EXCEPTION", 5, 5, "java.io.IOException");
        g = new bz("ILLEGAL_ARGUMENT_EXCEPTION", 6, 6, "java.lang.IllegalArgumentException");
        h = new bz("ILLEGAL_STATE_EXCEPTION", 7, 7, "java.lang.IllegalStateException");
        i = new bz("INDEX_OUT_OF_BOUNDS_EXCEPTION", 8, 8, "java.lang.IndexOutOfBoundsException");
        j = new bz("MALFORMED_URL_EXCEPTION", 9, 9, "java.net.MalformedURLException");
        k = new bz("NO_SUCH_PROVIDER_EXCEPTION", 10, 10, "java.security.NoSuchProviderException");
        l = new bz("NULL_POINTER_EXCEPTION", 11, 11, "java.lang.NullPointerException");
        m = new bz("PROTOCOL_EXCEPTION", 12, 12, "java.net.ProtocolException");
        n = new bz("SECURITY_EXCEPTION", 13, 13, "java.lang.SecurityException");
        o = new bz("SOCKET_EXCEPTION", 14, 14, "java.net.SocketException");
        p = new bz("SOCKET_TIMEOUT_EXCEPTION", 15, 15, "java.net.SocketTimeoutException");
        q = new bz("SSL_PEER_UNVERIFIED_EXCEPTION", 16, 16, "javax.net.ssl.SSLPeerUnverifiedException");
        r = new bz("STRING_INDEX_OUT_OF_BOUNDS_EXCEPTION", 17, 17, "java.lang.StringIndexOutOfBoundsException");
        s = new bz("UNKNOWN_HOST_EXCEPTION", 18, 18, "java.net.UnknownHostException");
        t = new bz("UNKNOWN_SERVICE_EXCEPTION", 19, 19, "java.net.UnknownServiceException");
        u = new bz("UNSUPPORTED_OPERATION_EXCEPTION", 20, 20, "java.lang.UnsupportedOperationException");
        v = new bz("URI_SYNTAX_EXCEPTION", 21, 21, "java.net.URISyntaxException");
        w = new bz("CONNECT_EXCEPTION", 22, 22, "java.net.ConnectException");
        x = new bz("SSL_EXCEPTION", 23, 23, "javax.net.ssl.SSLException");
        y = new bz("SSL_HANDSHAKE_EXCEPTION", 24, 24, "javax.net.ssl.SSLHandshakeException");
        z = new bz("SSL_KEY_EXCEPTION", 25, 25, "javax.net.ssl.SSLKeyException");
        A = new bz("SSL_PROTOCOL_EXCEPTION", 26, 26, "javax.net.ssl.SSLProtocolException");
        B = new bz("UNDEFINED_EXCEPTION", 27, -1, "__UNKNOWN__");
        bz abz[] = new bz[28];
        abz[0] = a;
        abz[1] = b;
        abz[2] = c;
        abz[3] = d;
        abz[4] = e;
        abz[5] = f;
        abz[6] = g;
        abz[7] = h;
        abz[8] = i;
        abz[9] = j;
        abz[10] = k;
        abz[11] = l;
        abz[12] = m;
        abz[13] = n;
        abz[14] = o;
        abz[15] = p;
        abz[16] = q;
        abz[17] = r;
        abz[18] = s;
        abz[19] = t;
        abz[20] = u;
        abz[21] = v;
        abz[22] = w;
        abz[23] = x;
        abz[24] = y;
        abz[25] = z;
        abz[26] = A;
        abz[27] = B;
        F = abz;
    }
}
