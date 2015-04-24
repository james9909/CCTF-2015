// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.chat;

import com.snapchat.android.cash.SendingCashManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.chat:
//            SendingMailman

public final class  extends Binding
    implements MembersInjector
{

    private Binding a;

    public void a(SendingMailman sendingmailman)
    {
        sendingmailman.a = (SendingCashManager)a.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.cash.SendingCashManager", com/snapchat/android/chat/SendingMailman, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((SendingMailman)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
    }

    public ()
    {
        super(null, "members/com.snapchat.android.chat.SendingMailman", false, com/snapchat/android/chat/SendingMailman);
    }
}
