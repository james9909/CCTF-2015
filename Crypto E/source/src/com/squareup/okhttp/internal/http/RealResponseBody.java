// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.ResponseBody;
import okio.BufferedSource;

// Referenced classes of package com.squareup.okhttp.internal.http:
//            OkHeaders

public final class RealResponseBody extends ResponseBody
{

    private final Headers a;
    private final BufferedSource b;

    public RealResponseBody(Headers headers, BufferedSource bufferedsource)
    {
        a = headers;
        b = bufferedsource;
    }

    public long a()
    {
        return OkHeaders.a(a);
    }

    public BufferedSource b()
    {
        return b;
    }
}
