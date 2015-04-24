// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.util;

import android.util.Log;

// Referenced classes of package com.googlecode.mp4parser.util:
//            Logger

public class AndroidLogger extends Logger
{

    String a;

    public AndroidLogger(String s)
    {
        a = s;
    }

    public void a(String s)
    {
        Log.d("isoparser", (new StringBuilder(String.valueOf(a))).append(":").append(s).toString());
    }

    public void b(String s)
    {
        Log.e("isoparser", (new StringBuilder(String.valueOf(a))).append(":").append(s).toString());
    }
}
