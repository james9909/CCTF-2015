// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.view.View;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.cash.CashtagParser;
import com.snapchat.android.cash.SendingCashManager;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.ui.ChatCameraButton;
import com.snapchat.android.ui.CursorCallbackEditText;
import com.snapchat.android.ui.cash.CashTooltip;
import com.snapchat.android.util.CashUtils;
import com.snapchat.android.util.threading.ThreadUtils;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class c
    implements com.snapchat.android.cash.r.ConfirmingCashCallback
{

    final CashFeedItem a;
    final int b;
    final int c;
    final d d;

    public void a()
    {
        ChatFragment.a(d.d, a);
        ThreadUtils.a(new Runnable() {

            final ChatFragment._cls9._cls1 a;

            public void run()
            {
                a.d.a.e.a(ChatFragment.k(a.d.a), a.b);
                ChatFragment.t(a.d.a);
                AnalyticsEvents.x(CashUtils.a(a.c));
            }

            
            {
                a = ChatFragment._cls9._cls1.this;
                super();
            }
        });
    }

    public void b()
    {
        ChatFragment.t(d.d);
    }

    _cls1.a(_cls1.a a1, CashFeedItem cashfeeditem, int i, int j)
    {
        d = a1;
        a = cashfeeditem;
        b = i;
        c = j;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/chat/ChatFragment$9

/* anonymous class */
    class ChatFragment._cls9
        implements android.view.View.OnClickListener
    {

        final ChatFragment a;

        public void onClick(View view)
        {
            if (ChatFragment.i(a).getIsEmoji())
            {
                ChatFragment.f(a);
            } else
            {
                if (ChatFragment.i(a).getCashSwipeDetected())
                {
                    AnalyticsEvents.P();
                    ChatFragment.e(a);
                    ChatFragment.a(a, com.snapchat.android.ui.CashSwiperView.SwipeActivationMethod.a);
                    return;
                }
                if (ChatFragment.i(a).getCashtagDetected())
                {
                    if (ChatFragment.h(a) != null)
                    {
                        AnalyticsEvents.P();
                        ChatFragment.r(a);
                        ChatFragment.a(a, ChatFragment.k(a).hasFocus());
                        ChatFragment.s(a).b();
                        int i = a.e.b(ChatFragment.k(a));
                        int j = i + a.e.a(ChatFragment.k(a).getEditableText());
                        int k = ChatFragment.k(a).getSelectionEnd();
                        CashFeedItem cashfeeditem = a.f.a(ChatFragment.h(a), j);
                        a.f.a(cashfeeditem, new ChatFragment._cls9._cls1(this, cashfeeditem, k, i));
                        return;
                    }
                } else
                {
                    ChatFragment.u(a);
                    return;
                }
            }
        }

            
            {
                a = chatfragment;
                super();
            }
    }

}
