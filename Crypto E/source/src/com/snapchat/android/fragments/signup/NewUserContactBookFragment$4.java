// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import android.content.DialogInterface;
import com.snapchat.android.analytics.AnalyticsEvents;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            NewUserContactBookFragment

class a
    implements android.content.er
{

    final NewUserContactBookFragment a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        AnalyticsEvents.d(false);
    }

    (NewUserContactBookFragment newusercontactbookfragment)
    {
        a = newusercontactbookfragment;
        super();
    }
}
