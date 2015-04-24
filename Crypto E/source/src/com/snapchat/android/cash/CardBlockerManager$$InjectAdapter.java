// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.cash;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.cash:
//            CardBlockerManager

public final class A extends Binding
    implements Provider
{

    public CardBlockerManager a()
    {
        return new CardBlockerManager();
    }

    public Object get()
    {
        return a();
    }

    public A()
    {
        super("com.snapchat.android.cash.CardBlockerManager", "members/com.snapchat.android.cash.CardBlockerManager", true, com/snapchat/android/cash/CardBlockerManager);
    }
}
