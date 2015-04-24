// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.util.Log;

// Referenced classes of package com.google.android.gms.internal:
//            pi

public class ph
    implements pi.a
{

    private final pi auf;
    private boolean aug;

    public ph(Context context, int i)
    {
        this(context, i, null);
    }

    public ph(Context context, int i, String s)
    {
        this(context, i, s, null, true);
    }

    public ph(Context context, int i, String s, String s1, boolean flag)
    {
        auf = new pi(context, i, s, s1, this, flag);
        aug = true;
    }

    private void qu()
    {
        if (!aug)
        {
            throw new IllegalStateException("Cannot reuse one-time logger after sending.");
        } else
        {
            return;
        }
    }

    public transient void a(String s, byte abyte0[], String as[])
    {
        qu();
        auf.b(s, abyte0, as);
    }

    public void d(PendingIntent pendingintent)
    {
        Log.w("OneTimePlayLogger", (new StringBuilder()).append("logger connection failed: ").append(pendingintent).toString());
    }

    public void qv()
    {
        auf.stop();
    }

    public void qw()
    {
        Log.w("OneTimePlayLogger", "logger connection failed");
    }

    public void send()
    {
        qu();
        auf.start();
        aug = false;
    }
}
