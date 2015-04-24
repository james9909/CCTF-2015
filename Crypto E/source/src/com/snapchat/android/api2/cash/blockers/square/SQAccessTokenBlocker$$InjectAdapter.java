// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.cash.CashAuthManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQAccessTokenBlocker

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mCashAuthManager;
    private Binding mCashErrorReporter;
    private Binding supertype;

    public SQAccessTokenBlocker a()
    {
        SQAccessTokenBlocker sqaccesstokenblocker = new SQAccessTokenBlocker();
        a(sqaccesstokenblocker);
        return sqaccesstokenblocker;
    }

    public void a(SQAccessTokenBlocker sqaccesstokenblocker)
    {
        sqaccesstokenblocker.mCashAuthManager = (CashAuthManager)mCashAuthManager.get();
        sqaccesstokenblocker.mCashErrorReporter = (CashErrorReporter)mCashErrorReporter.get();
        supertype.a(sqaccesstokenblocker);
    }

    public void a(Linker linker)
    {
        mCashAuthManager = linker.a("com.snapchat.android.cash.CashAuthManager", com/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker, getClass().getClassLoader());
        mCashErrorReporter = linker.a("com.snapchat.android.api2.cash.CashErrorReporter", com/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.cash.blockers.Blocker", com/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((SQAccessTokenBlocker)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mCashAuthManager);
        set1.add(mCashErrorReporter);
        set1.add(supertype);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.blockers.square.SQAccessTokenBlocker", "members/com.snapchat.android.api2.cash.blockers.square.SQAccessTokenBlocker", false, com/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker);
    }
}
