// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;

// Referenced classes of package com.google.android.gms.internal:
//            fz, fp, ai, gu, 
//            fo, fj, br, bo, 
//            me, hk, ay, fn, 
//            fm, u, dd, gn

public class fl
{
    public static interface a
    {

        public abstract void a(gn gn);
    }


    public fl()
    {
    }

    public gu a(Context context, u u, gn.a a1, hk hk1, dd dd, a a2)
    {
        fz fz1 = a1.wJ;
        Object obj;
        if (fz1.vj)
        {
            obj = new fp(context, u, new ai(), a1, a2);
        } else
        if (fz1.uZ)
        {
            obj = new fo(context, a1, hk1, dd, a2);
        } else
        if (fz1.vf)
        {
            obj = new fj(context, a1, hk1, a2);
        } else
        if (((Boolean)br.pN.get()).booleanValue() && me.kw() && !me.kx() && hk1.aa().oA)
        {
            obj = new fn(context, a1, hk1, a2);
        } else
        {
            obj = new fm(context, a1, hk1, a2);
        }
        ((gu) (obj)).start();
        return ((gu) (obj));
    }
}
