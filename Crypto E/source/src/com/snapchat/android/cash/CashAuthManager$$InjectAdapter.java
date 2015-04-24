// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import com.snapchat.android.util.GsonWrapper;
import com.snapchat.android.util.crypto.SlightlySecurePreferences;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.cash:
//            CashAuthManager

public final class s extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public CashAuthManager a()
    {
        CashAuthManager cashauthmanager = new CashAuthManager();
        a(cashauthmanager);
        return cashauthmanager;
    }

    public void a(CashAuthManager cashauthmanager)
    {
        cashauthmanager.a = (SlightlySecurePreferences)a.get();
        cashauthmanager.b = (GsonWrapper)b.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.crypto.SlightlySecurePreferences", com/snapchat/android/cash/CashAuthManager, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.util.GsonWrapper", com/snapchat/android/cash/CashAuthManager, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((CashAuthManager)obj);
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

    public s()
    {
        super("com.snapchat.android.cash.CashAuthManager", "members/com.snapchat.android.cash.CashAuthManager", true, com/snapchat/android/cash/CashAuthManager);
    }
}
