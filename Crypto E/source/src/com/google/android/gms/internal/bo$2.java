// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Bundle;

// Referenced classes of package com.google.android.gms.internal:
//            bo

static final class nit> extends bo
{

    public Object a(Bundle bundle)
    {
        return c(bundle);
    }

    public Integer c(Bundle bundle)
    {
        return Integer.valueOf(bundle.getInt(getKey(), ((Integer)bE()).intValue()));
    }

    (String s, Integer integer)
    {
        super(s, integer, null);
    }
}
