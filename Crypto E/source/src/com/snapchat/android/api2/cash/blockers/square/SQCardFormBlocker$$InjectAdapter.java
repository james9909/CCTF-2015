// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.api2.cash.square.SquareProvider;
import com.snapchat.android.cash.CashCardManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQCardFormBlocker

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mCashCardManager;
    private Binding mSquareProvider;
    private Binding supertype;

    public SQCardFormBlocker a()
    {
        SQCardFormBlocker sqcardformblocker = new SQCardFormBlocker();
        a(sqcardformblocker);
        return sqcardformblocker;
    }

    public void a(SQCardFormBlocker sqcardformblocker)
    {
        sqcardformblocker.mCashCardManager = (CashCardManager)mCashCardManager.get();
        sqcardformblocker.mSquareProvider = (SquareProvider)mSquareProvider.get();
        supertype.a(sqcardformblocker);
    }

    public void a(Linker linker)
    {
        mCashCardManager = linker.a("com.snapchat.android.cash.CashCardManager", com/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker, getClass().getClassLoader());
        mSquareProvider = linker.a("com.snapchat.android.api2.cash.square.SquareProvider", com/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.cash.blockers.Blocker", com/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((SQCardFormBlocker)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mCashCardManager);
        set1.add(mSquareProvider);
        set1.add(supertype);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.blockers.square.SQCardFormBlocker", "members/com.snapchat.android.api2.cash.blockers.square.SQCardFormBlocker", false, com/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker);
    }
}
