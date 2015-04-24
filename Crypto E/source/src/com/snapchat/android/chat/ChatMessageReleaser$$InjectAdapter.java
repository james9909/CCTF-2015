// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import com.snapchat.android.cash.SendingCashManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.chat:
//            ChatMessageReleaser

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;

    public ChatMessageReleaser a()
    {
        ChatMessageReleaser chatmessagereleaser = new ChatMessageReleaser();
        a(chatmessagereleaser);
        return chatmessagereleaser;
    }

    public void a(ChatMessageReleaser chatmessagereleaser)
    {
        chatmessagereleaser.a = (SendingCashManager)a.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.cash.SendingCashManager", com/snapchat/android/chat/ChatMessageReleaser, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((ChatMessageReleaser)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.chat.ChatMessageReleaser", "members/com.snapchat.android.chat.ChatMessageReleaser", false, com/snapchat/android/chat/ChatMessageReleaser);
    }
}
