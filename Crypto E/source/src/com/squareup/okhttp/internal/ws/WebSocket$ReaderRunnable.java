// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.ws;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;

// Referenced classes of package com.squareup.okhttp.internal.ws:
//            WebSocket, WebSocketReader, WebSocketListener

class  extends NamedRunnable
{

    final WebSocket a;
    private final WebSocketReader c;
    private final WebSocketListener d;

    protected void b()
    {
_L2:
        if (WebSocket.c(a))
        {
            break; /* Loop/switch isn't completed */
        }
        c.a();
        if (true) goto _L2; else goto _L1
        IOException ioexception;
        ioexception;
        WebSocket.a(a, ioexception, d);
_L1:
    }
}
