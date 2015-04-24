// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.cash.CashAuthManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQUnlinkCardBlocker

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mCashAuthManager;
    private Binding supertype;

    public SQUnlinkCardBlocker a()
    {
        SQUnlinkCardBlocker squnlinkcardblocker = new SQUnlinkCardBlocker();
        a(squnlinkcardblocker);
        return squnlinkcardblocker;
    }

    public void a(SQUnlinkCardBlocker squnlinkcardblocker)
    {
        squnlinkcardblocker.mCashAuthManager = (CashAuthManager)mCashAuthManager.get();
        supertype.a(squnlinkcardblocker);
    }

    public void a(Linker linker)
    {
        mCashAuthManager = linker.a("com.snapchat.android.cash.CashAuthManager", com/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.cash.blockers.Blocker", com/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((SQUnlinkCardBlocker)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mCashAuthManager);
        set1.add(supertype);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.blockers.square.SQUnlinkCardBlocker", "members/com.snapchat.android.api2.cash.blockers.square.SQUnlinkCardBlocker", false, com/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker);
    }
}
