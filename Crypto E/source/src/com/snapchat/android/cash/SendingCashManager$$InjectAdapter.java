// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.api2.cash.BlockerManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.cash:
//            SendingCashManager

public final class A extends Binding
    implements MembersInjector, Provider
{

    private Binding a;

    public SendingCashManager a()
    {
        SendingCashManager sendingcashmanager = new SendingCashManager();
        a(sendingcashmanager);
        return sendingcashmanager;
    }

    public void a(SendingCashManager sendingcashmanager)
    {
        sendingcashmanager.a = (BlockerManager)a.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.api2.cash.BlockerManager", com/snapchat/android/cash/SendingCashManager, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((SendingCashManager)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
    }

    public Object get()
    {
        return a();
    }

    public A()
    {
        super("com.snapchat.android.cash.SendingCashManager", "members/com.snapchat.android.cash.SendingCashManager", true, com/snapchat/android/cash/SendingCashManager);
    }
}
