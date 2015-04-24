// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Process;
import java.util.concurrent.Callable;

// Referenced classes of package com.google.android.gms.internal:
//            gw, gp

static final class xw
    implements Callable
{

    final Callable xw;

    public Object call()
    {
        Object obj;
        try
        {
            Process.setThreadPriority(10);
            obj = xw.call();
        }
        catch (Exception exception)
        {
            gp.e(exception);
            throw exception;
        }
        return obj;
    }

    (Callable callable)
    {
        xw = callable;
        super();
    }
}
