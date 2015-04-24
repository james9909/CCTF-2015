// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.widget.Toast;
import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.util:
//            AlertDialogUtils

static final class c
    implements Runnable
{

    final int a;
    final String b;
    final Context c;

    public void run()
    {
        int i = AlertDialogUtils.a(a);
        try
        {
            if (AlertDialogUtils.a(b))
            {
                Toast.makeText(c, b, i).show();
                return;
            }
        }
        catch (IllegalStateException illegalstateexception)
        {
            Timber.c("AlertDialogUtils", "Well, this is awkward.", new Object[0]);
            Timber.a("AlertDialogUtils", illegalstateexception);
            return;
        }
        Timber.d("AlertDialogUtils", (new StringBuilder()).append("Toasting wayyy too many times ").append(b).toString(), new Object[0]);
        return;
    }

    (int i, String s, Context context)
    {
        a = i;
        b = s;
        c = context;
        super();
    }
}
