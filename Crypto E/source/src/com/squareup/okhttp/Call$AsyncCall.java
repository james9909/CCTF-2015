// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp;

import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.http.HttpEngine;
import java.io.IOException;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.squareup.okhttp:
//            Call, Request, Callback, OkHttpClient, 
//            Dispatcher

final class ttpEngine extends NamedRunnable
{

    final Call a;
    private final Callback c;

    String a()
    {
        return a.b.a().getHost();
    }

    protected void b()
    {
        boolean flag = true;
        Response response;
        boolean flag1;
        response = Call.a(a);
        flag1 = a.a;
        if (!flag1) goto _L2; else goto _L1
_L1:
        c.a(a.b, new IOException("Canceled"));
_L4:
        Call.c(a).r().a(this);
        return;
_L2:
        c.a(response);
        if (true) goto _L4; else goto _L3
_L3:
        IOException ioexception;
        ioexception;
_L10:
        if (!flag) goto _L6; else goto _L5
_L5:
        Internal.a.log(Level.INFO, (new StringBuilder()).append("Callback failure for ").append(Call.b(a)).toString(), ioexception);
_L8:
        Call.c(a).r().a(this);
        return;
_L6:
        c.a(a.c.g(), ioexception);
        if (true) goto _L8; else goto _L7
_L7:
        Exception exception;
        exception;
        Call.c(a).r().a(this);
        throw exception;
        ioexception;
        flag = false;
        if (true) goto _L10; else goto _L9
_L9:
    }
}
