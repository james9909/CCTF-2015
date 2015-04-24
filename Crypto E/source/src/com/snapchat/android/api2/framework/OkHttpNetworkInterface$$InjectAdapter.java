// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.framework:
//            OkHttpNetworkInterface, EntityFactory

public final class  extends Binding
    implements Provider
{

    private Binding entityFactory;

    public OkHttpNetworkInterface a()
    {
        return new OkHttpNetworkInterface((EntityFactory)entityFactory.get());
    }

    public void a(Linker linker)
    {
        entityFactory = linker.a("com.snapchat.android.api2.framework.EntityFactory", com/snapchat/android/api2/framework/OkHttpNetworkInterface, getClass().getClassLoader());
    }

    public void a(Set set, Set set1)
    {
        set.add(entityFactory);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.framework.OkHttpNetworkInterface", "members/com.snapchat.android.api2.framework.OkHttpNetworkInterface", false, com/snapchat/android/api2/framework/OkHttpNetworkInterface);
    }
}
