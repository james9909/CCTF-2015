// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;

// Referenced classes of package com.google.android.gms.internal:
//            po, pq, pn, pk

public class pi
{
    public static interface a
    {

        public abstract void d(PendingIntent pendingintent);

        public abstract void qv();

        public abstract void qw();
    }


    private final pq auh;
    private po aui;

    public pi(Context context, int i, String s, String s1, a a1, boolean flag)
    {
        String s2 = context.getPackageName();
        int j;
        try
        {
            j = context.getPackageManager().getPackageInfo(s2, 0).versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            Log.wtf("PlayLogger", "This can't happen.");
            j = 0;
        }
        aui = new po(s2, j, i, s, s1, flag);
        auh = new pq(context, new pn(a1));
    }

    public transient void a(long l, String s, byte abyte0[], String as[])
    {
        auh.b(aui, new pk(l, s, abyte0, as));
    }

    public transient void b(String s, byte abyte0[], String as[])
    {
        a(System.currentTimeMillis(), s, abyte0, as);
    }

    public void start()
    {
        auh.start();
    }

    public void stop()
    {
        auh.stop();
    }
}
