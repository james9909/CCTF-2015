// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import android.content.Context;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.framework:
//            SquareOkHttpClientFactory

public final class  extends Binding
    implements Provider
{

    private Binding context;

    public SquareOkHttpClientFactory a()
    {
        return new SquareOkHttpClientFactory((Context)context.get());
    }

    public void a(Linker linker)
    {
        context = linker.a("android.content.Context", com/snapchat/android/api2/framework/SquareOkHttpClientFactory, getClass().getClassLoader());
    }

    public void a(Set set, Set set1)
    {
        set.add(context);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.framework.SquareOkHttpClientFactory", "members/com.snapchat.android.api2.framework.SquareOkHttpClientFactory", true, com/snapchat/android/api2/framework/SquareOkHttpClientFactory);
    }
}
