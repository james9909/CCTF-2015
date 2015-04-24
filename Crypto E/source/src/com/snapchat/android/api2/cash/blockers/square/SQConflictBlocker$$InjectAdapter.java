// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.square;

import com.snapchat.android.cash.CashCardManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.square:
//            SQConflictBlocker

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mCashCardManager;
    private Binding supertype;

    public SQConflictBlocker a()
    {
        SQConflictBlocker sqconflictblocker = new SQConflictBlocker();
        a(sqconflictblocker);
        return sqconflictblocker;
    }

    public void a(SQConflictBlocker sqconflictblocker)
    {
        sqconflictblocker.mCashCardManager = (CashCardManager)mCashCardManager.get();
        supertype.a(sqconflictblocker);
    }

    public void a(Linker linker)
    {
        mCashCardManager = linker.a("com.snapchat.android.cash.CashCardManager", com/snapchat/android/api2/cash/blockers/square/SQConflictBlocker, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.cash.blockers.Blocker", com/snapchat/android/api2/cash/blockers/square/SQConflictBlocker, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((SQConflictBlocker)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mCashCardManager);
        set1.add(supertype);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.blockers.square.SQConflictBlocker", "members/com.snapchat.android.api2.cash.blockers.square.SQConflictBlocker", false, com/snapchat/android/api2/cash/blockers/square/SQConflictBlocker);
    }
}
