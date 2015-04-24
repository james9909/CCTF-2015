// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import java.util.List;

// Referenced classes of package com.squareup.okhttp:
//            Call, OkHttpClient, Interceptor, Request, 
//            Response

class c
    implements c
{

    final Call a;
    private final int b;
    private final Request c;

    public Response a(Request request)
    {
        if (b < Call.c(a).u().size())
        {
            c c1 = new <init>(a, 1 + b, request);
            return ((Interceptor)Call.c(a).u().get(b)).a(c1);
        } else
        {
            return a.a(request, false);
        }
    }

    (Call call, int i, Request request)
    {
        a = call;
        super();
        b = i;
        c = request;
    }
}
