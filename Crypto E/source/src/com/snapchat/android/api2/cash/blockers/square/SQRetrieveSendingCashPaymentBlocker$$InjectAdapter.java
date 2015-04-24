// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.api2.cash.CashErrorReporter;
import com.snapchat.android.api2.cash.square.SquareProvider;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQRetrieveSendingCashPaymentBlocker

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mCashErrorReporter;
    private Binding mSquareProvider;
    private Binding supertype;

    public SQRetrieveSendingCashPaymentBlocker a()
    {
        SQRetrieveSendingCashPaymentBlocker sqretrievesendingcashpaymentblocker = new SQRetrieveSendingCashPaymentBlocker();
        a(sqretrievesendingcashpaymentblocker);
        return sqretrievesendingcashpaymentblocker;
    }

    public void a(SQRetrieveSendingCashPaymentBlocker sqretrievesendingcashpaymentblocker)
    {
        sqretrievesendingcashpaymentblocker.mSquareProvider = (SquareProvider)mSquareProvider.get();
        sqretrievesendingcashpaymentblocker.mCashErrorReporter = (CashErrorReporter)mCashErrorReporter.get();
        supertype.a(sqretrievesendingcashpaymentblocker);
    }

    public void a(Linker linker)
    {
        mSquareProvider = linker.a("com.snapchat.android.api2.cash.square.SquareProvider", com/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker, getClass().getClassLoader());
        mCashErrorReporter = linker.a("com.snapchat.android.api2.cash.CashErrorReporter", com/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.cash.blockers.Blocker", com/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((SQRetrieveSendingCashPaymentBlocker)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mSquareProvider);
        set1.add(mCashErrorReporter);
        set1.add(supertype);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.blockers.square.SQRetrieveSendingCashPaymentBlocker", "members/com.snapchat.android.api2.cash.blockers.square.SQRetrieveSendingCashPaymentBlocker", false, com/snapchat/android/api2/cash/blockers/square/SQRetrieveSendingCashPaymentBlocker);
    }
}
