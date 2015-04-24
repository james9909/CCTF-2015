// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import com.snapchat.android.database.table.HttpMetricsTable;

// Referenced classes of package com.snapchat.android.operation:
//            Operation

public class UpdateHttpMetricsOperation
    implements Operation
{

    private final Intent a;
    private final ContentValues b;
    private final boolean c;

    public UpdateHttpMetricsOperation(Intent intent)
    {
        a = intent;
        b = (ContentValues)a.getParcelableExtra("content_values");
        c = a.getBooleanExtra("clear", false);
    }

    public Intent a()
    {
        return a;
    }

    public void a(Context context)
    {
        if (c)
        {
            HttpMetricsTable.b(context);
            return;
        } else
        {
            HttpMetricsTable.a(context, b);
            return;
        }
    }

    public void b(Context context)
    {
    }
}
