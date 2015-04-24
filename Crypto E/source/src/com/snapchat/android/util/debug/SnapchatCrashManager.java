// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import android.os.SystemClock;
import com.snapchat.android.model.UserPrefs;
import net.hockeyapp.android.CrashManagerListener;

// Referenced classes of package com.snapchat.android.util.debug:
//            ReleaseManager

public class SnapchatCrashManager extends CrashManagerListener
{

    private long a;
    private long b;
    private int c;

    public SnapchatCrashManager()
    {
    }

    public void a()
    {
        a = SystemClock.elapsedRealtime();
    }

    public void b()
    {
        c = 1 + c;
        b = SystemClock.elapsedRealtime();
    }

    public boolean c()
    {
        return true;
    }

    public String d()
    {
        long l = SystemClock.elapsedRealtime();
        StringBuilder stringbuilder = new StringBuilder();
        if (a != 0L)
        {
            stringbuilder.append("Millis since onCreate: ");
            stringbuilder.append(l - a);
            stringbuilder.append("\n");
        }
        if (b != 0L)
        {
            stringbuilder.append("Millis since onResume: ");
            stringbuilder.append(l - b);
            stringbuilder.append("\n");
        }
        if (c != 0)
        {
            stringbuilder.append("Number of onResume cycles: ");
            stringbuilder.append(c);
            stringbuilder.append("\n");
        }
        return stringbuilder.toString();
    }

    public String e()
    {
        if (ReleaseManager.f())
        {
            return UserPrefs.k();
        } else
        {
            return null;
        }
    }

    public String f()
    {
        if (ReleaseManager.f())
        {
            return UserPrefs.v();
        } else
        {
            return null;
        }
    }
}
