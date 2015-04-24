// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.cash.CashCardManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQInitiatePaymentBlocker

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mCashCardManager;
    private Binding mCashErrorReporter;
    private Binding mSquareProvider;
    private Binding supertype;

    public SQInitiatePaymentBlocker a()
    {
        SQInitiatePaymentBlocker sqinitiatepaymentblocker = new SQInitiatePaymentBlocker();
        a(sqinitiatepaymentblocker);
        return sqinitiatepaymentblocker;
    }

    public void a(SQInitiatePaymentBlocker sqinitiatepaymentblocker)
    {
        sqinitiatepaymentblocker.mSquareProvider = (SquareProvider)mSquareProvider.get();
        sqinitiatepaymentblocker.mCashCardManager = (CashCardManager)mCashCardManager.get();
        sqinitiatepaymentblocker.mCashErrorReporter = (CashErrorReporter)mCashErrorReporter.get();
        supertype.a(sqinitiatepaymentblocker);
    }

    public void a(Linker linker)
    {
        mSquareProvider = linker.a("com.snapchat.android.api2.cash.square.SquareProvider", com/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker, getClass().getClassLoader());
        mCashCardManager = linker.a("com.snapchat.android.cash.CashCardManager", com/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker, getClass().getClassLoader());
        mCashErrorReporter = linker.a("com.snapchat.android.api2.cash.CashErrorReporter", com/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.cash.blockers.Blocker", com/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((SQInitiatePaymentBlocker)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mSquareProvider);
        set1.add(mCashCardManager);
        set1.add(mCashErrorReporter);
        set1.add(supertype);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.blockers.square.SQInitiatePaymentBlocker", "members/com.snapchat.android.api2.cash.blockers.square.SQInitiatePaymentBlocker", false, com/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker);
    }
}
