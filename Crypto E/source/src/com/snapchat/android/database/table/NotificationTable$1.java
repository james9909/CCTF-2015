// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import android.content.Context;

// Referenced classes of package com.snapchat.android.database.table:
//            NotificationTable

static final class c
    implements Runnable
{

    final String a;
    final Context b;
    final String c;

    public void run()
    {
        if (a == null)
        {
            NotificationTable.a(b, c);
            return;
        } else
        {
            NotificationTable.b(b, c, a);
            return;
        }
    }

    (String s, Context context, String s1)
    {
        a = s;
        b = context;
        c = s1;
        super();
    }
}
