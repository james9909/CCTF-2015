// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.api2.framework.EntityFactory;
import com.snapchat.android.api2.framework.SquareOkHttpClientFactory;
import com.snapchat.android.cash.CashAuthManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareRequestTask

public final class  extends Binding
    implements MembersInjector
{

    private Binding mCashAuthManager;
    private Binding mEntityFactory;
    private Binding mSquareOkHttpClientFactory;
    private Binding supertype;

    public void a(SquareRequestTask squarerequesttask)
    {
        squarerequesttask.mCashAuthManager = (CashAuthManager)mCashAuthManager.get();
        squarerequesttask.mSquareOkHttpClientFactory = (SquareOkHttpClientFactory)mSquareOkHttpClientFactory.get();
        squarerequesttask.mEntityFactory = (EntityFactory)mEntityFactory.get();
        supertype.a(squarerequesttask);
    }

    public void a(Linker linker)
    {
        mCashAuthManager = linker.a("com.snapchat.android.cash.CashAuthManager", com/snapchat/android/api2/cash/square/SquareRequestTask, getClass().getClassLoader());
        mSquareOkHttpClientFactory = linker.a("com.snapchat.android.api2.framework.SquareOkHttpClientFactory", com/snapchat/android/api2/cash/square/SquareRequestTask, getClass().getClassLoader());
        mEntityFactory = linker.a("com.snapchat.android.api2.framework.EntityFactory", com/snapchat/android/api2/cash/square/SquareRequestTask, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.framework.HyperRequestTask", com/snapchat/android/api2/cash/square/SquareRequestTask, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((SquareRequestTask)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mCashAuthManager);
        set1.add(mSquareOkHttpClientFactory);
        set1.add(mEntityFactory);
        set1.add(supertype);
    }

    public ()
    {
        super(null, "members/com.snapchat.android.api2.cash.square.SquareRequestTask", false, com/snapchat/android/api2/cash/square/SquareRequestTask);
    }
}
