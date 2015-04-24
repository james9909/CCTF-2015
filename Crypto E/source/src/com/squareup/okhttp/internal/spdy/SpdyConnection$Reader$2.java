// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;

// Referenced classes of package com.squareup.okhttp.internal.spdy:
//            SpdyConnection, FrameWriter, Settings

class a extends NamedRunnable
{

    final Settings a;
    final a c;

    public void b()
    {
        try
        {
            c.c.i.a(a);
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    transient ( , String s, Object aobj[], Settings settings)
    {
        c = ;
        a = settings;
        super(s, aobj);
    }
}
