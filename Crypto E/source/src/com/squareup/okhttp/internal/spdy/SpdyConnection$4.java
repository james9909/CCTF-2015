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

class c extends NamedRunnable
{

    final int a;
    final List c;
    final SpdyConnection d;

    public void b()
    {
        if (!SpdyConnection.h(d).a(a, c))
        {
            break MISSING_BLOCK_LABEL_78;
        }
        d.i.a(a, ErrorCode.l);
        synchronized (d)
        {
            SpdyConnection.i(d).remove(Integer.valueOf(a));
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

    transient (SpdyConnection spdyconnection, String s, Object aobj[], int i, List list)
    {
        d = spdyconnection;
        a = i;
        c = list;
        super(s, aobj);
    }
}
