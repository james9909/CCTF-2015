// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.util.crypto.SlightlySecurePreferences;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.cash:
//            CashCardManager

public final class s extends Binding
    implements MembersInjector, Provider
{

    private Binding a;

    public CashCardManager a()
    {
        CashCardManager cashcardmanager = new CashCardManager();
        a(cashcardmanager);
        return cashcardmanager;
    }

    public void a(CashCardManager cashcardmanager)
    {
        cashcardmanager.a = (SlightlySecurePreferences)a.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.crypto.SlightlySecurePreferences", com/snapchat/android/cash/CashCardManager, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((CashCardManager)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
    }

    public Object get()
    {
        return a();
    }

    public s()
    {
        super("com.snapchat.android.cash.CashCardManager", "members/com.snapchat.android.cash.CashCardManager", true, com/snapchat/android/cash/CashCardManager);
    }
}
