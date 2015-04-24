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
//            SQConfirmBlocker

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mCashErrorReporter;
    private Binding mSquareProvider;
    private Binding supertype;

    public SQConfirmBlocker a()
    {
        SQConfirmBlocker sqconfirmblocker = new SQConfirmBlocker();
        a(sqconfirmblocker);
        return sqconfirmblocker;
    }

    public void a(SQConfirmBlocker sqconfirmblocker)
    {
        sqconfirmblocker.mCashErrorReporter = (CashErrorReporter)mCashErrorReporter.get();
        sqconfirmblocker.mSquareProvider = (SquareProvider)mSquareProvider.get();
        supertype.a(sqconfirmblocker);
    }

    public void a(Linker linker)
    {
        mCashErrorReporter = linker.a("com.snapchat.android.api2.cash.CashErrorReporter", com/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker, getClass().getClassLoader());
        mSquareProvider = linker.a("com.snapchat.android.api2.cash.square.SquareProvider", com/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.cash.blockers.Blocker", com/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((SQConfirmBlocker)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mCashErrorReporter);
        set1.add(mSquareProvider);
        set1.add(supertype);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.blockers.square.SQConfirmBlocker", "members/com.snapchat.android.api2.cash.blockers.square.SQConfirmBlocker", false, com/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker);
    }
}
