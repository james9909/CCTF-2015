// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.util.List;
import okio.BufferedSink;
import okio.ByteString;

// Referenced classes of package com.squareup.okhttp:
//            RequestBody, MediaType, Headers, MultipartBuilder

static final class d extends RequestBody
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
        int i = c.size();
        for (int j = 0; j < i; j++)
        {
            Headers headers = (Headers)c.get(j);
            RequestBody requestbody = (RequestBody)d.get(j);
            bufferedsink.c(MultipartBuilder.b());
            bufferedsink.b(a);
            bufferedsink.c(MultipartBuilder.c());
            if (headers != null)
            {
                int k = headers.a();
                for (int i1 = 0; i1 < k; i1++)
                {
                    bufferedsink.b(headers.a(i1)).c(MultipartBuilder.d()).b(headers.b(i1)).c(MultipartBuilder.c());
                }

            }
            MediaType mediatype = requestbody.a();
            if (mediatype != null)
            {
                bufferedsink.b("Content-Type: ").b(mediatype.toString()).c(MultipartBuilder.c());
            }
            long l = requestbody.b();
            if (l != -1L)
            {
                bufferedsink.b("Content-Length: ").b(Long.toString(l)).c(MultipartBuilder.c());
            }
            bufferedsink.c(MultipartBuilder.c());
            ((RequestBody)d.get(j)).a(bufferedsink);
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

    public (MediaType mediatype, ByteString bytestring, List list, List list1)
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
