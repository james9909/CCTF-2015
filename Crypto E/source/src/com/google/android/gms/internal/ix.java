// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;

// Referenced classes of package com.google.android.gms.internal:
//            oi

public class ix
{

    private final oi Fq;
    private final Context mContext;

    private ix(Context context, oi oi)
    {
        mContext = context;
        Fq = oi;
    }

    public static ix a(Context context, oi oi)
    {
        return new ix(context, oi);
    }
}
