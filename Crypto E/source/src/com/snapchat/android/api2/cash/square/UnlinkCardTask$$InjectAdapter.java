// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.cash.CashCardManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            UnlinkCardTask

public final class I extends Binding
    implements MembersInjector
{

    private Binding mCashCardManager;
    private Binding supertype;

    public void a(UnlinkCardTask unlinkcardtask)
    {
        unlinkcardtask.mCashCardManager = (CashCardManager)mCashCardManager.get();
        supertype.a(unlinkcardtask);
    }

    public void a(Linker linker)
    {
        mCashCardManager = linker.a("com.snapchat.android.cash.CashCardManager", com/snapchat/android/api2/cash/square/UnlinkCardTask, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.cash.square.SquareRequestTask", com/snapchat/android/api2/cash/square/UnlinkCardTask, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((UnlinkCardTask)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mCashCardManager);
        set1.add(supertype);
    }

    public I()
    {
        super(null, "members/com.snapchat.android.api2.cash.square.UnlinkCardTask", false, com/snapchat/android/api2/cash/square/UnlinkCardTask);
    }
}
