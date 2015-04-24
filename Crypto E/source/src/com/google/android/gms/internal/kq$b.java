// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;

// Referenced classes of package com.google.android.gms.internal:
//            kq

static final class TC extends android.graphics.drawable.ble.ConstantState
{

    int TB;
    int TC;

    public int getChangingConfigurations()
    {
        return TB;
    }

    public Drawable newDrawable()
    {
        return new kq(this);
    }

    nstantState(nstantState nstantstate)
    {
        if (nstantstate != null)
        {
            TB = nstantstate.TB;
            TC = nstantstate.TC;
        }
    }
}
