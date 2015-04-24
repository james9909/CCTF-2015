// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.os.StrictMode;

// Referenced classes of package com.snapchat.android.util.debug:
//            ReleaseManager

public class StrictModeHelper
{

    private final ReleaseManager a;

    StrictModeHelper(ReleaseManager releasemanager)
    {
        a = releasemanager;
    }

    public void a()
    {
        if (a.c())
        {
            b();
        }
    }

    protected void b()
    {
        StrictMode.setThreadPolicy((new android.os.StrictMode.ThreadPolicy.Builder()).detectAll().penaltyLog().penaltyDropBox().build());
        StrictMode.setVmPolicy((new android.os.StrictMode.VmPolicy.Builder()).detectAll().penaltyLog().penaltyDropBox().build());
    }
}
