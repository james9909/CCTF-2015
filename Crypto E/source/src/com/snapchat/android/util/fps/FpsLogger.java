// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.fps;

import com.snapchat.android.Timber;
import com.snapchat.android.util.FrameTracking;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.system.Clock;

public class FpsLogger
    implements FrameTracking
{

    protected int a;
    private final ReleaseManager b;
    private final Clock c;
    private long d;

    public FpsLogger()
    {
        this(ReleaseManager.a(), new Clock());
    }

    protected FpsLogger(ReleaseManager releasemanager, Clock clock)
    {
        a = 0;
        b = releasemanager;
        c = clock;
    }

    public void a()
    {
        if (b.b())
        {
            a = 1 + a;
            if (a >= 30)
            {
                long l = c.b();
                float f = (1000F * (float)a) / (float)(l - d);
                Object aobj[] = new Object[1];
                aobj[0] = Float.valueOf(f);
                Timber.b("FpsLogger", "FPS = %d", aobj);
                d = l;
                a = 0;
                return;
            }
        }
    }
}
