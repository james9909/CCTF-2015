// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash:
//            BlockerManager, CashProviderManager

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mCashProviderManager;

    public BlockerManager a()
    {
        BlockerManager blockermanager = new BlockerManager();
        a(blockermanager);
        return blockermanager;
    }

    public void a(BlockerManager blockermanager)
    {
        blockermanager.mCashProviderManager = (CashProviderManager)mCashProviderManager.get();
    }

    public void a(Linker linker)
    {
        mCashProviderManager = linker.a("com.snapchat.android.api2.cash.CashProviderManager", com/snapchat/android/api2/cash/BlockerManager, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((BlockerManager)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mCashProviderManager);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.BlockerManager", "members/com.snapchat.android.api2.cash.BlockerManager", true, com/snapchat/android/api2/cash/BlockerManager);
    }
}
