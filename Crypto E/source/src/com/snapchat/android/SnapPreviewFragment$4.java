// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.view.View;
import com.snapchat.android.analytics.AnalyticsEvents;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewFragment

class a
    implements android.view.gment._cls4
{

    final SnapPreviewFragment a;

    public void onClick(View view)
    {
        AnalyticsEvents.i();
        SnapPreviewFragment.c(a);
    }

    nts(SnapPreviewFragment snappreviewfragment)
    {
        a = snappreviewfragment;
        super();
    }
}
