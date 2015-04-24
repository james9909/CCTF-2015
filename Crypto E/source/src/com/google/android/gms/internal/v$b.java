// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;

// Referenced classes of package com.google.android.gms.internal:
//            hf, fz, ab, hk, 
//            hg, gx, v

public static class mj
    implements mj
{

    private final  mi;
    private final hk mj;

    public void e(String s)
    {
        hf.T("An auto-clicking creative is blocked");
        android.net.Builder builder = new android.net.Builder();
        builder.scheme("https");
        builder.path("//pagead2.googlesyndication.com/pagead/gen_204");
        builder.appendQueryParameter("id", "gmob-apps-blocked-navigation");
        if (!TextUtils.isEmpty(s))
        {
            builder.appendQueryParameter("navigationURL", s);
        }
        if (mi != null && mi.wJ != null && !TextUtils.isEmpty(mi.wJ.ve))
        {
            builder.appendQueryParameter("debugDialog", mi.wJ.ve);
        }
        ab.aG().c(mj.getContext(), mj.dQ().xP, builder.toString());
    }

    public ( , hk hk1)
    {
        mi = ;
        mj = hk1;
    }
}
