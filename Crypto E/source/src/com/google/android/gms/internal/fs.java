// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;

// Referenced classes of package com.google.android.gms.internal:
//            ft, k, gu

public class fs
{
    public static interface a
    {

        public abstract void a(gn.a a1);
    }


    public fs()
    {
    }

    public gu a(Context context, fx.a a1, k k, a a2)
    {
        ft ft1 = new ft(context, a1, k, a2);
        ft1.start();
        return ft1;
    }
}
