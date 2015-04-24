// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.os.Process;

// Referenced classes of package com.snapchat.android.util:
//            ScExecutors

public static class b
    implements Runnable
{

    final Runnable a;
    final int b;

    public void run()
    {
        Process.setThreadPriority(b);
        a.run();
    }

    public (Runnable runnable, int i)
    {
        a = runnable;
        b = i;
    }
}
