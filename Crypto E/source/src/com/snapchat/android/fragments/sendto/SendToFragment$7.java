// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import com.snapchat.android.analytics.SnapCaptureAnalytics;

// Referenced classes of package com.snapchat.android.fragments.sendto:
//            SendToFragment

class a
    implements android.view.ner
{

    final SendToFragment a;

    public void onClick(View view)
    {
        SendToFragment.a(a).e();
        a.getActivity().onBackPressed();
    }

    (SendToFragment sendtofragment)
    {
        a = sendtofragment;
        super();
    }
}
