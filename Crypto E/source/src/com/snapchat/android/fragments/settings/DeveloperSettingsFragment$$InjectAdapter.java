// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import com.snapchat.android.cash.CashAuthManager;
import com.snapchat.android.cash.CashCardManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            DeveloperSettingsFragment

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;
    private Binding c;

    public DeveloperSettingsFragment a()
    {
        DeveloperSettingsFragment developersettingsfragment = new DeveloperSettingsFragment();
        a(developersettingsfragment);
        return developersettingsfragment;
    }

    public void a(DeveloperSettingsFragment developersettingsfragment)
    {
        developersettingsfragment.a = (CashAuthManager)a.get();
        developersettingsfragment.b = (CashCardManager)b.get();
        c.a(developersettingsfragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.cash.CashAuthManager", com/snapchat/android/fragments/settings/DeveloperSettingsFragment, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.cash.CashCardManager", com/snapchat/android/fragments/settings/DeveloperSettingsFragment, getClass().getClassLoader());
        c = linker.a("members/com.snapchat.android.util.fragment.SnapchatFragment", com/snapchat/android/fragments/settings/DeveloperSettingsFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((DeveloperSettingsFragment)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
        set1.add(c);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.fragments.settings.DeveloperSettingsFragment", "members/com.snapchat.android.fragments.settings.DeveloperSettingsFragment", false, com/snapchat/android/fragments/settings/DeveloperSettingsFragment);
    }
}
