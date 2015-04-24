// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.sendto;

import android.view.View;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.NetworkAnalytics;
import com.snapchat.android.analytics.SnapCaptureAnalytics;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.Snapbryo;
import com.snapchat.android.model.User;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.CameraStateEvent;
import com.snapchat.android.util.eventbus.CancelInChatSnapEvent;
import com.snapchat.android.util.eventbus.CancelQuickSnapEvent;
import com.snapchat.android.util.eventbus.CancelReplyEvent;
import com.snapchat.android.util.eventbus.SnapReadyForSendingEvent;
import com.squareup.otto.Bus;
import java.util.ArrayList;
import java.util.LinkedHashSet;

// Referenced classes of package com.snapchat.android.fragments.sendto:
//            SendToFragment

class a
    implements android.view.ner
{

    final SendToFragment a;

    public void onClick(View view)
    {
        SendToFragment.a(a).d();
        LandingPageActivity landingpageactivity = (LandingPageActivity)a.getActivity();
        if (landingpageactivity == null)
        {
            return;
        }
        SendToFragment.b(a);
        boolean flag;
        boolean flag1;
        boolean flag2;
        if (landingpageactivity.r() != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!SendToFragment.c(a).isEmpty())
        {
            SendToFragment.d(a).a();
        }
        SendToFragment.h().a(SendToFragment.c(a));
        if (SendToFragment.h() instanceof Snapbryo)
        {
            Snapbryo snapbryo = (Snapbryo)SendToFragment.h();
            if (!SendToFragment.e(a).isEmpty())
            {
                UserPrefs.h(true);
                Snapbryo snapbryo1 = (Snapbryo)SendToFragment.h();
                NetworkAnalytics networkanalytics;
                boolean flag3;
                if (!SendToFragment.c(a).isEmpty())
                {
                    flag3 = true;
                } else
                {
                    flag3 = false;
                }
                AnalyticsEvents.a(snapbryo1, flag, flag3, "SEND_TO_SCREEN");
            }
            snapbryo.a(SendToFragment.e(a));
        }
        networkanalytics = SendToFragment.f(a);
        if (SendToFragment.c(a).size() > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (SendToFragment.e(a).size() > 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        networkanalytics.a(flag1, flag2);
        BusProvider.a().a(new SnapReadyForSendingEvent(SendToFragment.h(), false));
        BusProvider.a().a(new CancelReplyEvent());
        BusProvider.a().a(new CancelInChatSnapEvent(false));
        BusProvider.a().a(new CancelQuickSnapEvent(false));
        BusProvider.a().a(new CameraStateEvent(true));
        ViewUtils.a(landingpageactivity, SendToFragment.g(a));
    }

    (SendToFragment sendtofragment)
    {
        a = sendtofragment;
        super();
    }
}
