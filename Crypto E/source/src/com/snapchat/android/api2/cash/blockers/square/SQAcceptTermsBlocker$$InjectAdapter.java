// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.api2.cash.CashErrorReporter;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQAcceptTermsBlocker

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mCashErrorReporter;
    private Binding supertype;

    public SQAcceptTermsBlocker a()
    {
        SQAcceptTermsBlocker sqaccepttermsblocker = new SQAcceptTermsBlocker();
        a(sqaccepttermsblocker);
        return sqaccepttermsblocker;
    }

    public void a(SQAcceptTermsBlocker sqaccepttermsblocker)
    {
        sqaccepttermsblocker.mCashErrorReporter = (CashErrorReporter)mCashErrorReporter.get();
        supertype.a(sqaccepttermsblocker);
    }

    public void a(Linker linker)
    {
        mCashErrorReporter = linker.a("com.snapchat.android.api2.cash.CashErrorReporter", com/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.cash.blockers.Blocker", com/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((SQAcceptTermsBlocker)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mCashErrorReporter);
        set1.add(supertype);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.blockers.square.SQAcceptTermsBlocker", "members/com.snapchat.android.api2.cash.blockers.square.SQAcceptTermsBlocker", false, com/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker);
    }
}
