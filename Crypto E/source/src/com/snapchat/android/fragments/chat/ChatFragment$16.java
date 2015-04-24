// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.text.Editable;
import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.CashFeedItem;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.ui.CursorCallbackEditText;
import com.snapchat.android.util.CashUtils;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class e
    implements com.snapchat.android.cash.er.ConfirmingCashCallback
{

    final ChatConversation a;
    final int b;
    final CashFeedItem c;
    final String d;
    final Editable e;
    final ChatFragment f;

    public void a()
    {
        Object aobj[] = new Object[2];
        aobj[0] = a.c();
        aobj[1] = CashUtils.a(b);
        Timber.c("ChatFragment", "CASH-LOG: RECONFIRMED transaction recipient[%s] amount[%s]", aobj);
        ChatFragment.a(f, c);
        ChatFragment.a(f, a, c, d);
    }

    public void b()
    {
        Object aobj[] = new Object[2];
        aobj[0] = a.c();
        aobj[1] = CashUtils.a(b);
        Timber.c("ChatFragment", "CASH-LOG: RECONFIRM CANCELED recipient[%s] amount[%s]", aobj);
        e.clearSpans();
        ChatFragment.k(f).setText(e);
        ChatFragment.t(f);
    }

    ingCashCallback(ChatFragment chatfragment, ChatConversation chatconversation, int i, CashFeedItem cashfeeditem, String s, Editable editable)
    {
        f = chatfragment;
        a = chatconversation;
        b = i;
        c = cashfeeditem;
        d = s;
        e = editable;
        super();
    }
}
