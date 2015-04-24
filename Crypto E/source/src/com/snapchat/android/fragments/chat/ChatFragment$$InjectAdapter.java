// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import com.snapchat.android.cash.CashtagParser;
import com.snapchat.android.cash.ReceivingCashManager;
import com.snapchat.android.cash.SendingCashManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatFragment

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;
    private Binding c;
    private Binding d;

    public ChatFragment a()
    {
        ChatFragment chatfragment = new ChatFragment();
        a(chatfragment);
        return chatfragment;
    }

    public void a(ChatFragment chatfragment)
    {
        chatfragment.e = (CashtagParser)a.get();
        chatfragment.f = (SendingCashManager)b.get();
        chatfragment.g = (ReceivingCashManager)c.get();
        d.a(chatfragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.cash.CashtagParser", com/snapchat/android/fragments/chat/ChatFragment, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.cash.SendingCashManager", com/snapchat/android/fragments/chat/ChatFragment, getClass().getClassLoader());
        c = linker.a("com.snapchat.android.cash.ReceivingCashManager", com/snapchat/android/fragments/chat/ChatFragment, getClass().getClassLoader());
        d = linker.a("members/com.snapchat.android.util.fragment.SnapchatFragment", com/snapchat/android/fragments/chat/ChatFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((ChatFragment)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
        set1.add(c);
        set1.add(d);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.fragments.chat.ChatFragment", "members/com.snapchat.android.fragments.chat.ChatFragment", false, com/snapchat/android/fragments/chat/ChatFragment);
    }
}
