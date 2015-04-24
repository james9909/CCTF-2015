// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.SystemClock;

// Referenced classes of package com.google.android.gms.internal:
//            lw

public final class ly
    implements lw
{

    private static ly Vv;

    public ly()
    {
    }

    public static lw kp()
    {
        com/google/android/gms/internal/ly;
        JVM INSTR monitorenter ;
        ly ly1;
        if (Vv == null)
        {
            Vv = new ly();
        }
        ly1 = Vv;
        com/google/android/gms/internal/ly;
        JVM INSTR monitorexit ;
        return ly1;
        Exception exception;
        exception;
        throw exception;
    }

    public long currentTimeMillis()
    {
        return System.currentTimeMillis();
    }

    public long elapsedRealtime()
    {
        return SystemClock.elapsedRealtime();
    }
}
