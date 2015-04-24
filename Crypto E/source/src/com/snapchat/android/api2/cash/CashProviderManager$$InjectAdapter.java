// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import com.snapchat.android.api2.cash.square.SquareProvider;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash:
//            CashProviderManager, ScProvider

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mScProvider;
    private Binding mSquareProvider;

    public CashProviderManager a()
    {
        CashProviderManager cashprovidermanager = new CashProviderManager();
        a(cashprovidermanager);
        return cashprovidermanager;
    }

    public void a(CashProviderManager cashprovidermanager)
    {
        cashprovidermanager.mScProvider = (ScProvider)mScProvider.get();
        cashprovidermanager.mSquareProvider = (SquareProvider)mSquareProvider.get();
    }

    public void a(Linker linker)
    {
        mScProvider = linker.a("com.snapchat.android.api2.cash.ScProvider", com/snapchat/android/api2/cash/CashProviderManager, getClass().getClassLoader());
        mSquareProvider = linker.a("com.snapchat.android.api2.cash.square.SquareProvider", com/snapchat/android/api2/cash/CashProviderManager, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((CashProviderManager)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mScProvider);
        set1.add(mSquareProvider);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.CashProviderManager", "members/com.snapchat.android.api2.cash.CashProviderManager", true, com/snapchat/android/api2/cash/CashProviderManager);
    }
}
