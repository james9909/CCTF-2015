// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash:
//            CashErrorReporter

public final class  extends Binding
    implements Provider
{

    public CashErrorReporter a()
    {
        return new CashErrorReporter();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.CashErrorReporter", "members/com.snapchat.android.api2.cash.CashErrorReporter", true, com/snapchat/android/api2/cash/CashErrorReporter);
    }
}
