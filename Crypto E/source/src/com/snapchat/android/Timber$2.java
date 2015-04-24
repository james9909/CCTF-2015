// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;


// Referenced classes of package com.snapchat.android:
//            Timber, TimberTimingLogger

static final class a
    implements Runnable
{

    final TimberTimingLogger a;

    public void run()
    {
        a.b();
    }

    ingLogger(TimberTimingLogger timbertiminglogger)
    {
        a = timbertiminglogger;
        super();
    }
}
