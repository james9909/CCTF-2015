// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appstate;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.appstate:
//            AppStateManager, AppStateBuffer

static abstract class <init> extends <init>
{

    public Result b(Status status)
    {
        return i(status);
    }

    public ateListResult i(Status status)
    {
        return new AppStateManager.StateListResult(status) {

            final Status Ff;
            final AppStateManager.c Fl;

            public AppStateBuffer getStateBuffer()
            {
                return new AppStateBuffer(null);
            }

            public Status getStatus()
            {
                return Ff;
            }

            
            {
                Fl = AppStateManager.c.this;
                Ff = status;
                super();
            }
        };
    }

    public _cls1.Ff(GoogleApiClient googleapiclient)
    {
        super(googleapiclient);
    }
}
