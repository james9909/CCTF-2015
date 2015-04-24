// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.utils;

import android.app.Activity;
import android.widget.Toast;

// Referenced classes of package net.hockeyapp.android.utils:
//            UiThreadUtil

class 
    implements Runnable
{

    final Activity a;
    final String b;
    final int c;

    public void run()
    {
        Toast.makeText(a, b, c).show();
    }
}
