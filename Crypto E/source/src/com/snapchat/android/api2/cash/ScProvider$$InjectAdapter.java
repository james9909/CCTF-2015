// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash;

import dagger.internal.Binding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash:
//            ScProvider

public final class  extends Binding
    implements Provider
{

    public ScProvider a()
    {
        return new ScProvider();
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.ScProvider", "members/com.snapchat.android.api2.cash.ScProvider", false, com/snapchat/android/api2/cash/ScProvider);
    }
}
