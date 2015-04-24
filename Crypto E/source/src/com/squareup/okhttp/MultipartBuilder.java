// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import okio.BufferedSink;
import okio.ByteString;

// Referenced classes of package com.squareup.okhttp:
//            MediaType, Headers, RequestBody

public final class MultipartBuilder
{
    static final class MultipartRequestBody extends RequestBody
    {

        private final ByteString a;
        private final MediaType b;
        private final List c;
        private final List d;

        public MediaType a()
        {
            return b;
        }

        public void a(BufferedSink bufferedsink)
        {
            int i1 = c.size();
            for (int j1 = 0; j1 < i1; j1++)
            {
                Headers headers = (Headers)c.get(j1);
                RequestBody requestbody = (RequestBody)d.get(j1);
                bufferedsink.c(MultipartBuilder.b());
                bufferedsink.b(a);
                bufferedsink.c(MultipartBuilder.c());
                if (headers != null)
                {
                    int k1 = headers.a();
                    for (int i2 = 0; i2 < k1; i2++)
                    {
                        bufferedsink.b(headers.a(i2)).c(MultipartBuilder.d()).b(headers.b(i2)).c(MultipartBuilder.c());
                    }

                }
                MediaType mediatype = requestbody.a();
                if (mediatype != null)
                {
                    bufferedsink.b("Content-Type: ").b(mediatype.toString()).c(MultipartBuilder.c());
                }
                long l1 = requestbody.b();
                if (l1 != -1L)
                {
                    bufferedsink.b("Content-Length: ").b(Long.toString(l1)).c(MultipartBuilder.c());
                }
                bufferedsink.c(MultipartBuilder.c());
                ((RequestBody)d.get(j1)).a(bufferedsink);
                bufferedsink.c(MultipartBuilder.c());
            }

            bufferedsink.c(MultipartBuilder.b());
            bufferedsink.b(a);
            bufferedsink.c(MultipartBuilder.b());
            bufferedsink.c(MultipartBuilder.c());
        }

        public long b()
        {
            return -1L;
        }

        public MultipartRequestBody(MediaType mediatype, ByteString bytestring, List list, List list1)
        {
            if (mediatype == null)
            {
                throw new NullPointerException("type == null");
            } else
            {
                a = bytestring;
                b = MediaType.a((new StringBuilder()).append(mediatype).append("; boundary=").append(bytestring.a()).toString());
                c = Util.a(list);
                d = Util.a(list1);
                return;
            }
        }
    }


    public static final MediaType a = MediaType.a("multipart/mixed");
    public static final MediaType b = MediaType.a("multipart/alternative");
    public static final MediaType c = MediaType.a("multipart/digest");
    public static final MediaType d = MediaType.a("multipart/parallel");
    public static final MediaType e = MediaType.a("multipart/form-data");
    private static final byte f[] = {
        58, 32
    };
    private static final byte g[] = {
        13, 10
    };
    private static final byte h[] = {
        45, 45
    };
    private final ByteString i;
    private MediaType j;
    private final List k;
    private final List l;

    public MultipartBuilder()
    {
        this(UUID.randomUUID().toString());
    }

    public MultipartBuilder(String s)
    {
        j = a;
        k = new ArrayList();
        l = new ArrayList();
        i = ByteString.a(s);
    }

    static byte[] b()
    {
        return h;
    }

    static byte[] c()
    {
        return g;
    }

    static byte[] d()
    {
        return f;
    }

    public MultipartBuilder a(Headers headers, RequestBody requestbody)
    {
        if (requestbody == null)
        {
            throw new NullPointerException("body == null");
        }
        if (headers != null && headers.a("Content-Type") != null)
        {
            throw new IllegalArgumentException("Unexpected header: Content-Type");
        }
        if (headers != null && headers.a("Content-Length") != null)
        {
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        } else
        {
            k.add(headers);
            l.add(requestbody);
            return this;
        }
    }

    public MultipartBuilder a(MediaType mediatype)
    {
        if (mediatype == null)
        {
            throw new NullPointerException("type == null");
        }
        if (!mediatype.a().equals("multipart"))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("multipart != ").append(mediatype).toString());
        } else
        {
            j = mediatype;
            return this;
        }
    }

    public RequestBody a()
    {
        if (k.isEmpty())
        {
            throw new IllegalStateException("Multipart body must have at least one part.");
        } else
        {
            return new MultipartRequestBody(j, i, k, l);
        }
    }

}
