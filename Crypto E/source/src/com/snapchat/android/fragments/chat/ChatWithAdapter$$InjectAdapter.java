// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import com.snapchat.android.util.debug.ExceptionReporter;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ChatWithAdapter

public final class  extends Binding
    implements MembersInjector
{

    private Binding a;

    public void a(ChatWithAdapter chatwithadapter)
    {
        chatwithadapter.a = (ExceptionReporter)a.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.debug.ExceptionReporter", com/snapchat/android/fragments/chat/ChatWithAdapter, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((ChatWithAdapter)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
    }

    public ()
    {
        super(null, "members/com.snapchat.android.fragments.chat.ChatWithAdapter", false, com/snapchat/android/fragments/chat/ChatWithAdapter);
    }
}