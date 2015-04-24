// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.feed;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.snapchat.android.analytics.CameraEventAnalytics;

// Referenced classes of package com.snapchat.android.fragments.feed:
//            FeedFragment

class a
    implements android.view.tener
{

    final FeedFragment a;

    public void onClick(View view)
    {
        FeedFragment.a(a).a(com.snapchat.android.analytics.ytics.CameraContext.CAMERA_BUTTON);
        a.getActivity().onBackPressed();
    }

    (FeedFragment feedfragment)
    {
        a = feedfragment;
        super();
    }
}
