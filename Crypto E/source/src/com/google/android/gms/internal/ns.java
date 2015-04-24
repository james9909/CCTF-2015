// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;

// Referenced classes of package com.google.android.gms.internal:
//            oi, nt

public class ns
{

    private final String Fm;
    private final oi Fq;
    private final String Rf;
    private nt anO;
    private final Context mContext;

    private ns(Context context, String s, String s1, oi oi)
    {
        mContext = context;
        Fm = s;
        Fq = oi;
        anO = null;
        Rf = s1;
    }

    public static ns a(Context context, String s, String s1, oi oi)
    {
        return new ns(context, s, s1, oi);
    }
}
