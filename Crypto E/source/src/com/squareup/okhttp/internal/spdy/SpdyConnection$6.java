// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;
import java.util.Set;
import okio.Buffer;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            SpdyConnection, PushObserver, ErrorCode, FrameWriter

class e extends NamedRunnable
{

    final int a;
    final Buffer c;
    final int d;
    final boolean e;
    final SpdyConnection f;

    public void b()
    {
        boolean flag = SpdyConnection.h(f).a(a, c, d, e);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        f.i.a(a, ErrorCode.l);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        if (!e)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        synchronized (f)
        {
            SpdyConnection.i(f).remove(Integer.valueOf(a));
        }
        return;
        exception;
        spdyconnection;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (IOException ioexception) { }
    }

    transient (SpdyConnection spdyconnection, String s, Object aobj[], int i, Buffer buffer, int j, boolean flag)
    {
        f = spdyconnection;
        a = i;
        c = buffer;
        d = j;
        e = flag;
        super(s, aobj);
    }
}
