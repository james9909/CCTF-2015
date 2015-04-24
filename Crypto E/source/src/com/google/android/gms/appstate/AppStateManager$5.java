// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appstate;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.iu;

// Referenced classes of package com.google.android.gms.appstate:
//            AppStateManager

static final class <init> extends <init>
{

    final int Fg;

    protected volatile void a(com.google.android.gms.common.api.nit> nit>)
    {
        a((iu)nit>);
    }

    protected void a(iu iu1)
    {
        iu1.a(this, Fg);
    }

    public Result b(Status status)
    {
        return h(status);
    }

    public ateDeletedResult h(Status status)
    {
        return new AppStateManager.StateDeletedResult(status) {

            final Status Ff;
            final AppStateManager._cls5 Fi;

            public int getStateKey()
            {
                return Fi.Fg;
            }

            public Status getStatus()
            {
                return Ff;
            }

            
            {
                Fi = AppStateManager._cls5.this;
                Ff = status;
                super();
            }
        };
    }

    _cls1.Ff(GoogleApiClient googleapiclient, int i)
    {
        Fg = i;
        super(googleapiclient);
    }
}
