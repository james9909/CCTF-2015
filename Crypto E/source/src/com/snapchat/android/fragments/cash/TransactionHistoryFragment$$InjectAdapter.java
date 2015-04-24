// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.cash;

import com.snapchat.android.cash.CashAuthManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.cash:
//            TransactionHistoryFragment

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public TransactionHistoryFragment a()
    {
        TransactionHistoryFragment transactionhistoryfragment = new TransactionHistoryFragment();
        a(transactionhistoryfragment);
        return transactionhistoryfragment;
    }

    public void a(TransactionHistoryFragment transactionhistoryfragment)
    {
        transactionhistoryfragment.a = (CashAuthManager)a.get();
        b.a(transactionhistoryfragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.cash.CashAuthManager", com/snapchat/android/fragments/cash/TransactionHistoryFragment, getClass().getClassLoader());
        b = linker.a("members/com.snapchat.android.fragments.settings.WebFragment", com/snapchat/android/fragments/cash/TransactionHistoryFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((TransactionHistoryFragment)obj);
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
        super("com.snapchat.android.fragments.cash.TransactionHistoryFragment", "members/com.snapchat.android.fragments.cash.TransactionHistoryFragment", false, com/snapchat/android/fragments/cash/TransactionHistoryFragment);
    }
}
