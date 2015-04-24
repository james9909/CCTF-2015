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

class Ff
    implements eDeletedResult
{

    final Status Ff;
    final Ff Fi;

    public int getStateKey()
    {
        return Fi.;
    }

    public Status getStatus()
    {
        return Ff;
    }

    nit>(nit> nit>, Status status)
    {
        Fi = nit>;
        Ff = status;
        super();
    }

    // Unreferenced inner class com/google/android/gms/appstate/AppStateManager$5

/* anonymous class */
    static final class AppStateManager._cls5 extends AppStateManager.b
    {

        final int Fg;

        protected volatile void a(com.google.android.gms.common.api.Api.a a1)
        {
            a((iu)a1);
        }

        protected void a(iu iu1)
        {
            iu1.a(this, Fg);
        }

        public Result b(Status status)
        {
            return h(status);
        }

        public AppStateManager.StateDeletedResult h(Status status)
        {
            return new AppStateManager._cls5._cls1(this, status);
        }

            
            {
                Fg = i;
                super(googleapiclient);
            }
    }

}
