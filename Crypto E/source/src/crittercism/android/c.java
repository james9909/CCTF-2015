// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import android.location.Location;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.URL;
import java.util.Arrays;
import java.util.Date;
import org.json.JSONArray;

// Referenced classes of package crittercism.android:
//            bg, bz, k, b, 
//            bu, dm

public final class c extends bg
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        public static final a g;
        public static final a h;
        public static final a i;
        public static final a j;
        public static final a k;
        private static final a m[];
        private String l;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(crittercism/android/c$a, s);
        }

        public static a[] values()
        {
            return (a[])m.clone();
        }

        public final String toString()
        {
            return l;
        }

        static 
        {
            a = new a("NOT_LOGGED_YET", 0, "Not logged");
            b = new a("INPUT_STREAM_READ", 1, "InputStream.read()");
            c = new a("INPUT_STREAM_CLOSE", 2, "InputStream.close()");
            d = new a("SOCKET_CLOSE", 3, "Socket.close()");
            e = new a("LEGACY_JAVANET", 4, "Legacy java.net");
            f = new a("HTTP_CONTENT_LENGTH_PARSER", 5, "parse()");
            g = new a("INPUT_STREAM_FINISHED", 6, "finishedMessage()");
            h = new a("PARSING_INPUT_STREAM_LOG_ERROR", 7, "logError()");
            i = new a("SOCKET_IMPL_CONNECT", 8, "MonitoredSocketImpl.connect()");
            j = new a("SSL_SOCKET_START_HANDSHAKE", 9, "MonitoredSSLSocket.startHandshake");
            k = new a("UNIT_TEST", 10, "Unit test");
            a aa[] = new a[11];
            aa[0] = a;
            aa[1] = b;
            aa[2] = c;
            aa[3] = d;
            aa[4] = e;
            aa[5] = f;
            aa[6] = g;
            aa[7] = h;
            aa[8] = i;
            aa[9] = j;
            aa[10] = k;
            m = aa;
        }

        private a(String s, int i1, String s1)
        {
            super(s, i1);
            l = s1;
        }
    }


    public long a;
    public boolean b;
    a c;
    public long d;
    public int e;
    public String f;
    public bz g;
    public k h;
    public String i;
    public b j;
    private long k;
    private boolean l;
    private boolean m;
    private String n;
    private long o;
    private boolean p;
    private boolean q;
    private double r[];

    public c()
    {
        a = 0x7fffffffffffffffL;
        k = 0x7fffffffffffffffL;
        l = false;
        m = false;
        b = false;
        c = a.a;
        o = 0L;
        d = 0L;
        p = false;
        q = false;
        e = 0;
        f = "";
        g = bz.a;
        h = new k();
        j = b.a;
        n = bu.a.a();
    }

    public c(String s)
    {
        a = 0x7fffffffffffffffL;
        k = 0x7fffffffffffffffL;
        l = false;
        m = false;
        b = false;
        c = a.a;
        o = 0L;
        d = 0L;
        p = false;
        q = false;
        e = 0;
        f = "";
        g = bz.a;
        h = new k();
        j = b.a;
        n = bu.a.a();
        if (s != null)
        {
            i = s;
        }
    }

    public c(URL url)
    {
        a = 0x7fffffffffffffffL;
        k = 0x7fffffffffffffffL;
        l = false;
        m = false;
        b = false;
        c = a.a;
        o = 0L;
        d = 0L;
        p = false;
        q = false;
        e = 0;
        f = "";
        g = bz.a;
        h = new k();
        j = b.a;
        n = bu.a.a();
        if (url != null)
        {
            i = url.toExternalForm();
        }
    }

    private long g()
    {
        long l1 = 0x7fffffffffffffffL;
        if (a != l1 && k != l1)
        {
            l1 = k - a;
        }
        return l1;
    }

    public final String a()
    {
        boolean flag = true;
        String s = i;
        if (s == null)
        {
            k k1 = h;
            if (k1.b != null)
            {
                s = k1.b;
            } else
            if (k1.a != null)
            {
                s = k1.a.getHostName();
            } else
            {
                s = "unknown-host";
            }
            if (k1.f)
            {
                int i1 = k1.e;
                if (i1 > 0)
                {
                    String s6 = (new StringBuilder(":")).append(i1).toString();
                    if (!s.endsWith(s6))
                    {
                        s = (new StringBuilder()).append(s).append(s6).toString();
                    }
                }
            } else
            {
                String s1 = k1.c;
                if (s1 == null || !s1.regionMatches(flag, 0, "http:", 0, 5) && !s1.regionMatches(flag, 0, "https:", 0, 6))
                {
                    flag = false;
                }
                if (flag)
                {
                    s = s1;
                } else
                {
                    String s2;
                    if (k1.d != null)
                    {
                        s2 = (new StringBuilder()).append("").append(crittercism.android.k.a.a(k1.d)).append(":").toString();
                    } else
                    {
                        s2 = "";
                    }
                    if (s1.startsWith("//"))
                    {
                        s = (new StringBuilder()).append(s2).append(s1).toString();
                    } else
                    {
                        String s3 = (new StringBuilder()).append(s2).append("//").toString();
                        if (s1.startsWith(s))
                        {
                            s = (new StringBuilder()).append(s3).append(s1).toString();
                        } else
                        {
                            String s4 = "";
                            if (k1.e > 0 && (k1.d == null || crittercism.android.k.a.b(k1.d) != k1.e))
                            {
                                String s5 = (new StringBuilder(":")).append(k1.e).toString();
                                if (!s.endsWith(s5))
                                {
                                    s4 = s5;
                                }
                            }
                            s = (new StringBuilder()).append(s3).append(s).append(s4).append(s1).toString();
                        }
                    }
                }
            }
            i = s;
        }
        return s;
    }

    public final void a(int i1)
    {
        k k1 = h;
        if (i1 > 0)
        {
            k1.e = i1;
        }
    }

    public final void a(long l1)
    {
        if (!p)
        {
            o = l1 + o;
        }
    }

    public final void a(Location location)
    {
        double ad[] = new double[2];
        ad[0] = location.getLatitude();
        ad[1] = location.getLongitude();
        r = ad;
    }

    public final void a(k.a a1)
    {
        h.d = a1;
    }

    public final void a(OutputStream outputstream)
    {
        outputstream.write(e().toString().getBytes());
    }

    public final void a(String s)
    {
        i = null;
        h.b = s;
    }

    public final void a(InetAddress inetaddress)
    {
        i = null;
        h.a = inetaddress;
    }

    public final String b()
    {
        return n;
    }

    public final void b(long l1)
    {
        p = true;
        o = l1;
    }

    public final void c()
    {
        if (!l && a == 0x7fffffffffffffffL)
        {
            a = System.currentTimeMillis();
        }
    }

    public final void c(long l1)
    {
        if (!q)
        {
            d = l1 + d;
        }
    }

    public final void d()
    {
        if (!m && k == 0x7fffffffffffffffL)
        {
            k = System.currentTimeMillis();
        }
    }

    public final void d(long l1)
    {
        q = true;
        d = l1;
    }

    public final JSONArray e()
    {
        JSONArray jsonarray = new JSONArray();
        try
        {
            jsonarray.put(f);
            jsonarray.put(a());
            jsonarray.put(dm.a.a(new Date(a)));
            jsonarray.put(g());
            jsonarray.put(j.a());
            jsonarray.put(o);
            jsonarray.put(d);
            jsonarray.put(e);
            jsonarray.put(3);
            jsonarray.put(Integer.toString(g.a()));
            if (r != null)
            {
                JSONArray jsonarray1 = new JSONArray();
                jsonarray1.put(r[0]);
                jsonarray1.put(r[1]);
                jsonarray.put(jsonarray1);
            }
        }
        catch (Exception exception)
        {
            System.out.println("Failed to create statsArray");
            exception.printStackTrace();
            return null;
        }
        return jsonarray;
    }

    public final void e(long l1)
    {
        a = l1;
        l = true;
    }

    public final void f()
    {
        h.f = true;
    }

    public final void f(long l1)
    {
        k = l1;
        m = true;
    }

    public final String toString()
    {
        String s = (new StringBuilder()).append("").append("URI            : ").append(i).append("\n").toString();
        String s1 = (new StringBuilder()).append(s).append("URI Builder    : ").append(h.toString()).append("\n").toString();
        String s2 = (new StringBuilder()).append(s1).append("\n").toString();
        String s3 = (new StringBuilder()).append(s2).append("Logged by      : ").append(c.toString()).append("\n").toString();
        String s4 = (new StringBuilder()).append(s3).append("Error:         : ").append(g).append("\n").toString();
        String s5 = (new StringBuilder()).append(s4).append("\n").toString();
        String s6 = (new StringBuilder()).append(s5).append("Response time  : ").append(g()).append("\n").toString();
        String s7 = (new StringBuilder()).append(s6).append("Start time     : ").append(a).append("\n").toString();
        String s8 = (new StringBuilder()).append(s7).append("End time       : ").append(k).append("\n").toString();
        String s9 = (new StringBuilder()).append(s8).append("\n").toString();
        String s10 = (new StringBuilder()).append(s9).append("Bytes out    : ").append(d).append("\n").toString();
        String s11 = (new StringBuilder()).append(s10).append("Bytes in     : ").append(o).append("\n").toString();
        String s12 = (new StringBuilder()).append(s11).append("\n").toString();
        String s13 = (new StringBuilder()).append(s12).append("Response code  : ").append(e).append("\n").toString();
        String s14 = (new StringBuilder()).append(s13).append("Request method : ").append(f).append("\n").toString();
        if (r != null)
        {
            s14 = (new StringBuilder()).append(s14).append("Location       : ").append(Arrays.toString(r)).append("\n").toString();
        }
        return s14;
    }
}
