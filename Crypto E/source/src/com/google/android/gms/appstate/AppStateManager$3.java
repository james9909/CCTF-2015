// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appstate;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.iu;

// Referenced classes of package com.google.android.gms.appstate:
//            AppStateManager

static final class <init> extends <init>
{

    final int Fg;
    final byte Fh[];

    protected volatile void a(com.google.android.gms.common.api.nit> nit>)
    {
        a((iu)nit>);
    }

    protected void a(iu iu1)
    {
        iu1.a(null, Fg, Fh);
    }

    (GoogleApiClient googleapiclient, int i, byte abyte0[])
    {
        Fg = i;
        Fh = abyte0;
        super(googleapiclient);
    }
}
