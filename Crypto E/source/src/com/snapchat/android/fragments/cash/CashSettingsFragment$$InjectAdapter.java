// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import com.snapchat.android.api2.cash.CashProviderManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            CashSettingsFragment

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public CashSettingsFragment a()
    {
        CashSettingsFragment cashsettingsfragment = new CashSettingsFragment();
        a(cashsettingsfragment);
        return cashsettingsfragment;
    }

    public void a(CashSettingsFragment cashsettingsfragment)
    {
        cashsettingsfragment.a = (CashProviderManager)a.get();
        b.a(cashsettingsfragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.api2.cash.CashProviderManager", com/snapchat/android/fragments/cash/CashSettingsFragment, getClass().getClassLoader());
        b = linker.a("members/com.snapchat.android.util.fragment.SnapchatFragment", com/snapchat/android/fragments/cash/CashSettingsFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((CashSettingsFragment)obj);
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
        super("com.snapchat.android.fragments.cash.CashSettingsFragment", "members/com.snapchat.android.fragments.cash.CashSettingsFragment", false, com/snapchat/android/fragments/cash/CashSettingsFragment);
    }
}
