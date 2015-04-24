// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            SpdyConnection, ErrorCode

class c extends NamedRunnable
{

    final int a;
    final ErrorCode c;
    final SpdyConnection d;

    public void b()
    {
        try
        {
            d.b(a, c);
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    transient (SpdyConnection spdyconnection, String s, Object aobj[], int i, ErrorCode errorcode)
    {
        d = spdyconnection;
        a = i;
        c = errorcode;
        super(s, aobj);
    }
}
