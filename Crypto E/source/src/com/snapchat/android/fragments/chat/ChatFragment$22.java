// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.ui.CashSwiperView;
import com.snapchat.android.util.ViewUtils;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.SetPagingEnabledEvent;
import com.snapchat.android.util.threading.ThreadUtils;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements com.snapchat.android.cash.er.ConfirmingCashCallback
{

    final com.snapchat.android.ui.wipeActivationMethod a;
    final ChatFragment b;

    public void a()
    {
        ViewUtils.a(b.getActivity(), ChatFragment.k(b));
        ThreadUtils.a(new Runnable() {

            final ChatFragment._cls22 a;

            public void run()
            {
                AnalyticsEvents.a(a.a);
                ChatFragment.I(a.b).b();
            }

            
            {
                a = ChatFragment._cls22.this;
                super();
            }
        });
        ChatFragment.f(false);
        ChatFragment.c(b, true);
        BusProvider.a().a(new SetPagingEnabledEvent(false));
    }

    public void b()
    {
        ChatFragment.t(b);
        ChatFragment.d(b, false);
    }

    onMethod(ChatFragment chatfragment, com.snapchat.android.ui.wipeActivationMethod wipeactivationmethod)
    {
        b = chatfragment;
        a = wipeactivationmethod;
        super();
    }
}
