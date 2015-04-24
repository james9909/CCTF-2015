// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.spdy.ErrorCode;
import com.squareup.okhttp.internal.spdy.Header;
import com.squareup.okhttp.internal.spdy.SpdyConnection;
import com.squareup.okhttp.internal.spdy.SpdyStream;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okio.ByteString;
import okio.Okio;
import okio.Sink;
import okio.Timeout;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            Transport, OkHeaders, StatusLine, RequestLine, 
//            HttpEngine, RealResponseBody, RetryableSink

public final class SpdyTransport
    implements Transport
{

    private static final List a;
    private static final List b;
    private final HttpEngine c;
    private final SpdyConnection d;
    private SpdyStream e;

    public SpdyTransport(HttpEngine httpengine, SpdyConnection spdyconnection)
    {
        c = httpengine;
        d = spdyconnection;
    }

    public static com.squareup.okhttp.Response.Builder a(List list, Protocol protocol)
    {
        String s = null;
        String s1 = "HTTP/1.1";
        com.squareup.okhttp.Headers.Builder builder = new com.squareup.okhttp.Headers.Builder();
        builder.b(OkHeaders.d, protocol.toString());
        int i = list.size();
        for (int j = 0; j < i;)
        {
            ByteString bytestring = ((Header)list.get(j)).h;
            String s2 = ((Header)list.get(j)).i.a();
            String s3 = s1;
            int k = 0;
            while (k < s2.length()) 
            {
                int l = s2.indexOf('\0', k);
                if (l == -1)
                {
                    l = s2.length();
                }
                String s4 = s2.substring(k, l);
                int i1;
                if (!bytestring.equals(Header.a))
                {
                    if (bytestring.equals(Header.g))
                    {
                        s3 = s4;
                        s4 = s;
                    } else
                    {
                        if (!a(protocol, bytestring))
                        {
                            builder.a(bytestring.a(), s4);
                        }
                        s4 = s;
                    }
                }
                i1 = l + 1;
                s = s4;
                k = i1;
            }
            j++;
            s1 = s3;
        }

        if (s == null)
        {
            throw new ProtocolException("Expected ':status' header not present");
        } else
        {
            StatusLine statusline = StatusLine.a((new StringBuilder()).append(s1).append(" ").append(s).toString());
            return (new com.squareup.okhttp.Response.Builder()).a(protocol).a(statusline.b).a(statusline.c).a(builder.a());
        }
    }

    private static String a(String s, String s1)
    {
        return (new StringBuilder(s)).append('\0').append(s1).toString();
    }

    public static List a(Request request, Protocol protocol, String s)
    {
        ArrayList arraylist;
        LinkedHashSet linkedhashset;
        ByteString bytestring;
        String s2;
        Headers headers = request.e();
        arraylist = new ArrayList(10 + headers.a());
        arraylist.add(new Header(Header.b, request.d()));
        arraylist.add(new Header(Header.c, RequestLine.a(request.a())));
        String s1 = HttpEngine.a(request.a());
        int i;
        int j;
        if (Protocol.c == protocol)
        {
            arraylist.add(new Header(Header.g, s));
            arraylist.add(new Header(Header.f, s1));
        } else
        if (Protocol.d == protocol)
        {
            arraylist.add(new Header(Header.e, s1));
        } else
        {
            throw new AssertionError();
        }
        arraylist.add(new Header(Header.d, request.a().getProtocol()));
        linkedhashset = new LinkedHashSet();
        i = headers.a();
        j = 0;
        break MISSING_BLOCK_LABEL_166;
_L5:
        j++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_166;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        bytestring = ByteString.a(headers.a(j).toLowerCase(Locale.US));
        s2 = headers.b(j);
        if (!a(protocol, bytestring) && !bytestring.equals(Header.b) && !bytestring.equals(Header.c) && !bytestring.equals(Header.d) && !bytestring.equals(Header.e) && !bytestring.equals(Header.f) && !bytestring.equals(Header.g))
        {
label0:
            {
                if (!linkedhashset.add(bytestring))
                {
                    break label0;
                }
                arraylist.add(new Header(bytestring, s2));
            }
        }
        break MISSING_BLOCK_LABEL_207;
        int k = 0;
_L3:
        if (k < arraylist.size())
        {
label1:
            {
                if (!((Header)arraylist.get(k)).h.equals(bytestring))
                {
                    break label1;
                }
                arraylist.set(k, new Header(bytestring, a(((Header)arraylist.get(k)).i.a(), s2)));
            }
        }
        continue; /* Loop/switch isn't completed */
        k++;
        if (true) goto _L3; else goto _L1
_L1:
        return arraylist;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static boolean a(Protocol protocol, ByteString bytestring)
    {
        if (protocol == Protocol.c)
        {
            return a.contains(bytestring);
        }
        if (protocol == Protocol.d)
        {
            return b.contains(bytestring);
        } else
        {
            throw new AssertionError(protocol);
        }
    }

    public ResponseBody a(Response response)
    {
        return new RealResponseBody(response.f(), Okio.a(e.f()));
    }

    public Sink a(Request request, long l)
    {
        return e.g();
    }

    public void a()
    {
        e.g().close();
    }

    public void a(Request request)
    {
        if (e != null)
        {
            return;
        } else
        {
            c.b();
            boolean flag = c.c();
            String s = RequestLine.a(c.i().l());
            e = d.a(a(request, d.a(), s), flag, true);
            e.e().a(c.a.b(), TimeUnit.MILLISECONDS);
            return;
        }
    }

    public void a(HttpEngine httpengine)
    {
        if (e != null)
        {
            e.a(ErrorCode.l);
        }
    }

    public void a(RetryableSink retryablesink)
    {
        retryablesink.a(e.g());
    }

    public com.squareup.okhttp.Response.Builder b()
    {
        return a(e.d(), d.a());
    }

    public void c()
    {
    }

    public boolean d()
    {
        return true;
    }

    static 
    {
        ByteString abytestring[] = new ByteString[5];
        abytestring[0] = ByteString.a("connection");
        abytestring[1] = ByteString.a("host");
        abytestring[2] = ByteString.a("keep-alive");
        abytestring[3] = ByteString.a("proxy-connection");
        abytestring[4] = ByteString.a("transfer-encoding");
        a = Util.a(abytestring);
        ByteString abytestring1[] = new ByteString[8];
        abytestring1[0] = ByteString.a("connection");
        abytestring1[1] = ByteString.a("host");
        abytestring1[2] = ByteString.a("keep-alive");
        abytestring1[3] = ByteString.a("proxy-connection");
        abytestring1[4] = ByteString.a("te");
        abytestring1[5] = ByteString.a("transfer-encoding");
        abytestring1[6] = ByteString.a("encoding");
        abytestring1[7] = ByteString.a("upgrade");
        b = Util.a(abytestring1);
    }
}
