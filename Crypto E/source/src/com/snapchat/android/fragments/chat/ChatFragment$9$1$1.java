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

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        a.a.a.e.a(ChatFragment.k(a.a.a), a.a);
        ChatFragment.t(a.a.a);
        AnalyticsEvents.x(CashUtils.a(a.a));
    }

    CashCallback(CashCallback cashcallback)
    {
        a = cashcallback;
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


    // Unreferenced inner class com/snapchat/android/fragments/chat/ChatFragment$9$1

/* anonymous class */
    class ChatFragment._cls9._cls1
        implements com.snapchat.android.cash.SendingCashManager.ConfirmingCashCallback
    {

        final CashFeedItem a;
        final int b;
        final int c;
        final ChatFragment._cls9 d;

        public void a()
        {
            ChatFragment.a(d.a, a);
            ThreadUtils.a(new ChatFragment._cls9._cls1._cls1(this));
        }

        public void b()
        {
            ChatFragment.t(d.a);
        }

            
            {
                d = _pcls9;
                a = cashfeeditem;
                b = i;
                c = j;
                super();
            }
    }

}
