// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.util.concurrent.Callable;

// Referenced classes of package com.google.android.gms.internal:
//            gw

static final class xv
    implements Callable
{

    final Runnable xv;

    public Object call()
    {
        return dA();
    }

    public Void dA()
    {
        xv.run();
        return null;
    }

    (Runnable runnable)
    {
        xv = runnable;
        super();
    }
}
