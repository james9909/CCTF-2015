// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import android.view.View;
import android.view.ViewTreeObserver;
import com.snapchat.android.Timber;
import com.snapchat.android.ui.ObservableAboveTheFoldListView;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

class a
    implements android.view..OnGlobalLayoutListener
{

    final ChatFragment a;

    public void onGlobalLayout()
    {
        ChatFragment.a(a, ChatFragment.B(a).getHeight());
        ChatFragment.b(a, ChatFragment.C(a).getHeight());
        ChatFragment.c(a, ChatFragment.D(a).getHeight());
        Object aobj[] = new Object[2];
        aobj[0] = Float.valueOf(ChatFragment.E(a));
        aobj[1] = Integer.valueOf(ChatFragment.F(a));
        Timber.f("ChatFragment", "CHAT-LOG: ChatFragment getting top panel and message input view heights andsetting margins (top: %d bottom: %d)", aobj);
        ChatFragment.g(a).setMinimumFooterHeight(ChatFragment.F(a));
        ViewTreeObserver viewtreeobserver = ChatFragment.G(a).getViewTreeObserver();
        if (android.os.K_INT >= 16)
        {
            viewtreeobserver.removeOnGlobalLayoutListener(this);
            return;
        } else
        {
            viewtreeobserver.removeGlobalOnLayoutListener(this);
            return;
        }
    }

    ew(ChatFragment chatfragment)
    {
        a = chatfragment;
        super();
    }
}
