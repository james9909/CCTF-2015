// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.os.AsyncTask;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.cash.SendingCashManager;
import com.snapchat.android.model.CashTransaction;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class b extends AsyncTask
{

    final ChatConversation a;
    final int b;
    final ChatFragment c;

    protected transient Void a(Void avoid[])
    {
        CashFeedItem cashfeeditem = c.f.a(a, b, true);
        c.f.a(cashfeeditem, new com.snapchat.android.cash.SendingCashManager.ConfirmingCashCallback(cashfeeditem) {

            final CashFeedItem a;
            final ChatFragment._cls23 b;

            public void a()
            {
                ChatFragment.b(b.c, a);
                b.c.f.a(b.a, a, "", new com.snapchat.android.cash.SendingCashManager.SendingCashCallback(this) {

                    final _cls1 a;

                    public void a()
                    {
                        AnalyticsEvents.b(a.a.h().j(), a.a.h().w());
                        ChatFragment.t(a.b.c);
                    }

                    public void b()
                    {
                        ChatFragment.t(a.b.c);
                    }

            
            {
                a = _pcls1;
                super();
            }
                });
            }

            public void b()
            {
                ChatFragment.t(b.c);
            }

            
            {
                b = ChatFragment._cls23.this;
                a = cashfeeditem;
                super();
            }
        });
        return null;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    _cls1.a(ChatFragment chatfragment, ChatConversation chatconversation, int i)
    {
        c = chatfragment;
        a = chatconversation;
        b = i;
        super();
    }
}
