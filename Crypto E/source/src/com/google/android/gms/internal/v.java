// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.text.TextUtils;

// Referenced classes of package com.google.android.gms.internal:
//            br, bo, hf, fz, 
//            ab, hk, hg, gx

public class v
{
    public static interface a
    {

        public abstract void e(String s);
    }

    public static class b
        implements a
    {

        private final gn.a mi;
        private final hk mj;

        public void e(String s)
        {
            hf.T("An auto-clicking creative is blocked");
            android.net.Uri.Builder builder = new android.net.Uri.Builder();
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

        public b(gn.a a1, hk hk1)
        {
            mi = a1;
            mj = hk1;
        }
    }


    private a mf;
    private boolean mg;
    private boolean mh;

    public v()
    {
        mh = ((Boolean)br.pB.get()).booleanValue();
    }

    public v(boolean flag)
    {
        mh = flag;
    }

    public void a(a a1)
    {
        mf = a1;
    }

    public boolean az()
    {
        return !mh || mg;
    }

    public void d(String s)
    {
        hf.T("Action was blocked because no click was detected.");
        if (mf != null)
        {
            mf.e(s);
        }
    }

    public void recordClick()
    {
        mg = true;
    }
}
