// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.crittercism.app;

import crittercism.android.ay;
import crittercism.android.cu;
import crittercism.android.df;
import java.util.Map;

// Referenced classes of package com.crittercism.app:
//            CritterCallback, CritterUserData

public class CritterUserDataRequest
{

    private final CritterCallback a;
    private ay b;
    private Map c;
    private cu d;

    static cu a(CritterUserDataRequest critteruserdatarequest)
    {
        return critteruserdatarequest.d;
    }

    static Map a(CritterUserDataRequest critteruserdatarequest, Map map)
    {
        critteruserdatarequest.c = map;
        return map;
    }

    static ay b(CritterUserDataRequest critteruserdatarequest)
    {
        return critteruserdatarequest.b;
    }

    static Map c(CritterUserDataRequest critteruserdatarequest)
    {
        return critteruserdatarequest.c;
    }

    static CritterCallback d(CritterUserDataRequest critteruserdatarequest)
    {
        return critteruserdatarequest.a;
    }

    // Unreferenced inner class com/crittercism/app/CritterUserDataRequest$1

/* anonymous class */
    final class _cls1
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

}
