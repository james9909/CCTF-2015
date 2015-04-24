// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            SpdyConnection, PushObserver, ErrorCode, FrameWriter

class d extends NamedRunnable
{

    final int a;
    final List c;
    final boolean d;
    final SpdyConnection e;

    public void b()
    {
        boolean flag;
        flag = SpdyConnection.h(e).a(a, c, d);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        e.i.a(a, ErrorCode.l);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        if (!d)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        synchronized (e)
        {
            SpdyConnection.i(e).remove(Integer.valueOf(a));
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

    transient (SpdyConnection spdyconnection, String s, Object aobj[], int i, List list, boolean flag)
    {
        e = spdyconnection;
        a = i;
        c = list;
        d = flag;
        super(s, aobj);
    }
}
