// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesUtil;

// Referenced classes of package com.google.android.gms.internal:
//            fx, hg, hf, gu, 
//            fz

public final class fu
{
    public static interface a
    {

        public abstract void b(fz fz);
    }


    public static gu a(Context context, fx fx1, a a1)
    {
        if (fx1.lH.xS)
        {
            return b(context, fx1, a1);
        } else
        {
            return c(context, fx1, a1);
        }
    }

    private static gu b(Context context, fx fx1, a a1)
    {
        hf.T("Fetching ad response from local ad request service.");
        fv.a a2 = new fv.a(context, fx1, a1);
        a2.start();
        return a2;
    }

    private static gu c(Context context, fx fx1, a a1)
    {
        hf.T("Fetching ad response from remote ad request service.");
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(context) != 0)
        {
            hf.X("Failed to connect to remote ad request service.");
            return null;
        } else
        {
            return new fv.b(context, fx1, a1);
        }
    }
}
