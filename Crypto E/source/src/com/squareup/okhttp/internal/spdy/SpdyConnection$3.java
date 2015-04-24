// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            SpdyConnection, Ping

class e extends NamedRunnable
{

    final boolean a;
    final int c;
    final int d;
    final Ping e;
    final SpdyConnection f;

    public void b()
    {
        try
        {
            SpdyConnection.a(f, a, c, d, e);
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    transient (SpdyConnection spdyconnection, String s, Object aobj[], boolean flag, int i, int j, Ping ping)
    {
        f = spdyconnection;
        a = flag;
        c = i;
        d = j;
        e = ping;
        super(s, aobj);
    }
}
