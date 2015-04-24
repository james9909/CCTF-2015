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
    implements Runnable
{

    final a a;

    public void run()
    {
        AnalyticsEvents.a(a.a);
        ChatFragment.I(a.a).b();
    }

    Method(Method method)
    {
        a = method;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/chat/ChatFragment$22

/* anonymous class */
    class ChatFragment._cls22
        implements com.snapchat.android.cash.SendingCashManager.ConfirmingCashCallback
    {

        final com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod a;
        final ChatFragment b;

        public void a()
        {
            ViewUtils.a(b.getActivity(), ChatFragment.k(b));
            ThreadUtils.a(new ChatFragment._cls22._cls1(this));
            ChatFragment.f(false);
            ChatFragment.c(b, true);
            BusProvider.a().a(new SetPagingEnabledEvent(false));
        }

        public void b()
        {
            ChatFragment.t(b);
            ChatFragment.d(b, false);
        }

            
            {
                b = chatfragment;
                a = swipeactivationmethod;
                super();
            }
    }

}
