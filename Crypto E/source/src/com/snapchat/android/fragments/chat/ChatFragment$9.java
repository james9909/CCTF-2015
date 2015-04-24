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
    implements android.view.tener
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
                ChatFragment.a(a, com.snapchat.android.ui.SwipeActivationMethod.a);
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
                    a.f.a(cashfeeditem, new com.snapchat.android.cash.SendingCashManager.ConfirmingCashCallback(cashfeeditem, k, i) {

                        final CashFeedItem a;
                        final int b;
                        final int c;
                        final ChatFragment._cls9 d;

                        public void a()
                        {
                            ChatFragment.a(d.a, a);
                            ThreadUtils.a(new Runnable(this) {

                                final _cls1 a;

                                public void run()
                                {
                                    a.d.a.e.a(ChatFragment.k(a.d.a), a.b);
                                    ChatFragment.t(a.d.a);
                                    AnalyticsEvents.x(CashUtils.a(a.c));
                                }

            
            {
                a = _pcls1;
                super();
            }
                            });
                        }

                        public void b()
                        {
                            ChatFragment.t(d.a);
                        }

            
            {
                d = ChatFragment._cls9.this;
                a = cashfeeditem;
                b = i;
                c = j;
                super();
            }
                    });
                    return;
                }
            } else
            {
                ChatFragment.u(a);
                return;
            }
        }
    }

    _cls1.c(ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }
}
