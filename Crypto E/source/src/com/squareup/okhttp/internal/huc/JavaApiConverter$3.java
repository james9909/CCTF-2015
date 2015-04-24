// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.huc;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.http.OkHeaders;
import okio.BufferedSource;

// Referenced classes of package com.squareup.okhttp.internal.huc:
//            JavaApiConverter

static final class b extends ResponseBody
{

    final Headers a;
    final BufferedSource b;

    public long a()
    {
        return OkHeaders.a(a);
    }

    public BufferedSource b()
    {
        return b;
    }

    _cls9(Headers headers, BufferedSource bufferedsource)
    {
        a = headers;
        b = bufferedsource;
        super();
    }
}
