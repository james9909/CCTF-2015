// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.square;

import com.snapchat.android.api2.cash.CashErrorReporter;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash.square:
//            SquareProvider

public final class I extends Binding
    implements MembersInjector, Provider
{

    private Binding mCashErrorReporter;

    public SquareProvider a()
    {
        SquareProvider squareprovider = new SquareProvider();
        a(squareprovider);
        return squareprovider;
    }

    public void a(SquareProvider squareprovider)
    {
        squareprovider.mCashErrorReporter = (CashErrorReporter)mCashErrorReporter.get();
    }

    public void a(Linker linker)
    {
        mCashErrorReporter = linker.a("com.snapchat.android.api2.cash.CashErrorReporter", com/snapchat/android/api2/cash/square/SquareProvider, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((SquareProvider)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mCashErrorReporter);
    }

    public Object get()
    {
        return a();
    }

    public I()
    {
        super("com.snapchat.android.api2.cash.square.SquareProvider", "members/com.snapchat.android.api2.cash.square.SquareProvider", true, com/snapchat/android/api2/cash/square/SquareProvider);
    }
}
