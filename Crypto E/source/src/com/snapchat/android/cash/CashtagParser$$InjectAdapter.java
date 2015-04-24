// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.cash:
//            CashtagParser

public final class  extends Binding
    implements Provider
{

    public CashtagParser a()
    {
        return new CashtagParser();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.cash.CashtagParser", "members/com.snapchat.android.cash.CashtagParser", false, com/snapchat/android/cash/CashtagParser);
    }
}
