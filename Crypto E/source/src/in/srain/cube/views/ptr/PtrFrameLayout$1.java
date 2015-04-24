// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package in.srain.cube.views.ptr;

import in.srain.cube.util.CLog;

// Referenced classes of package in.srain.cube.views.ptr:
//            PtrFrameLayout

class a
    implements Runnable
{

    final PtrFrameLayout a;

    public void run()
    {
        if (PtrFrameLayout.a)
        {
            CLog.d(a.b, "mRefreshCompleteHook resume.");
        }
        PtrFrameLayout.a(a, true);
    }

    (PtrFrameLayout ptrframelayout)
    {
        a = ptrframelayout;
        super();
    }
}
