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

class a
    implements com.snapchat.android.cash..ConfirmingCashCallback
{

    final CashFeedItem a;
    final b b;

    public void a()
    {
        ChatFragment.b(b.b, a);
        b.b.f.a(b.b, a, "", new com.snapchat.android.cash.SendingCashManager.SendingCashCallback() {

            final ChatFragment._cls23._cls1 a;

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
                a = ChatFragment._cls23._cls1.this;
                super();
            }
        });
    }

    public void b()
    {
        ChatFragment.t(b.b);
    }

    _cls1.a(_cls1.a a1, CashFeedItem cashfeeditem)
    {
        b = a1;
        a = cashfeeditem;
        super();
    }

    // Unreferenced inner class com/snapchat/android/fragments/chat/ChatFragment$23

/* anonymous class */
    class ChatFragment._cls23 extends AsyncTask
    {

        final ChatConversation a;
        final int b;
        final ChatFragment c;

        protected transient Void a(Void avoid[])
        {
            CashFeedItem cashfeeditem = c.f.a(a, b, true);
            c.f.a(cashfeeditem, new ChatFragment._cls23._cls1(this, cashfeeditem));
            return null;
        }

        protected Object doInBackground(Object aobj[])
        {
            return a((Void[])aobj);
        }

            
            {
                c = chatfragment;
                a = chatconversation;
                b = i;
                super();
            }
    }

}
