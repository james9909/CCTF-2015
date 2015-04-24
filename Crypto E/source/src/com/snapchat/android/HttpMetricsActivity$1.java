// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.view.View;
import com.snapchat.android.database.table.HttpMetricsTable;

// Referenced classes of package com.snapchat.android:
//            HttpMetricsActivity

class a
    implements android.view.ivity._cls1
{

    final HttpMetricsActivity a;

    public void onClick(View view)
    {
        HttpMetricsTable.a(a);
    }

    ricsTable(HttpMetricsActivity httpmetricsactivity)
    {
        a = httpmetricsactivity;
        super();
    }
}
