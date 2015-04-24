// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.crittercism.app;

import crittercism.android.ay;
import crittercism.android.cu;
import crittercism.android.df;

// Referenced classes of package com.crittercism.app:
//            CritterUserDataRequest, CritterUserData, CritterCallback

final class 
    implements Runnable
{

    final CritterUserDataRequest a;

    public final void run()
    {
        CritterUserDataRequest.a(a).run();
        CritterUserDataRequest.a(a, CritterUserDataRequest.a(a).a);
        boolean flag = CritterUserDataRequest.b(a).g.c();
        CritterUserDataRequest.d(a).a(new CritterUserData(CritterUserDataRequest.c(a), flag));
    }
}
