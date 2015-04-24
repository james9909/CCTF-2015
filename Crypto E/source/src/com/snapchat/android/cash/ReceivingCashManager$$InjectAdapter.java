// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.api2.cash.BlockerManager;
import com.snapchat.android.api2.cash.CashProviderManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.cash:
//            ReceivingCashManager

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public ReceivingCashManager a()
    {
        ReceivingCashManager receivingcashmanager = new ReceivingCashManager();
        a(receivingcashmanager);
        return receivingcashmanager;
    }

    public void a(ReceivingCashManager receivingcashmanager)
    {
        receivingcashmanager.a = (CashProviderManager)a.get();
        receivingcashmanager.b = (BlockerManager)b.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.api2.cash.CashProviderManager", com/snapchat/android/cash/ReceivingCashManager, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.api2.cash.BlockerManager", com/snapchat/android/cash/ReceivingCashManager, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((ReceivingCashManager)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.cash.ReceivingCashManager", "members/com.snapchat.android.cash.ReceivingCashManager", true, com/snapchat/android/cash/ReceivingCashManager);
    }
}
