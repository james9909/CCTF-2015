// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.s;

// Referenced classes of package com.google.android.gms.internal:
//            it, iu

static final class l.s.b extends it
{

    private final com.google.android.gms.common.api.mplementation.b Fn;

    public void a(DataHolder dataholder)
    {
        Fn.e(new <init>(dataholder));
    }

    public ementation.b(com.google.android.gms.common.api.mplementation.b b)
    {
        Fn = (com.google.android.gms.common.api.mplementation.b)s.b(b, "Result holder must not be null");
    }
}
