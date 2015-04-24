// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.util.GsonWrapper;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.framework:
//            HyperRequestDependencyProvider, OkHttpNetworkInterface

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mGsonWrapper;
    private Binding mNetworkInterface;

    public HyperRequestDependencyProvider a()
    {
        HyperRequestDependencyProvider hyperrequestdependencyprovider = new HyperRequestDependencyProvider();
        a(hyperrequestdependencyprovider);
        return hyperrequestdependencyprovider;
    }

    public void a(HyperRequestDependencyProvider hyperrequestdependencyprovider)
    {
        hyperrequestdependencyprovider.mNetworkInterface = (OkHttpNetworkInterface)mNetworkInterface.get();
        hyperrequestdependencyprovider.mGsonWrapper = (GsonWrapper)mGsonWrapper.get();
    }

    public void a(Linker linker)
    {
        mNetworkInterface = linker.a("com.snapchat.android.api2.framework.OkHttpNetworkInterface", com/snapchat/android/api2/framework/HyperRequestDependencyProvider, getClass().getClassLoader());
        mGsonWrapper = linker.a("com.snapchat.android.util.GsonWrapper", com/snapchat/android/api2/framework/HyperRequestDependencyProvider, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((HyperRequestDependencyProvider)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mNetworkInterface);
        set1.add(mGsonWrapper);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.framework.HyperRequestDependencyProvider", "members/com.snapchat.android.api2.framework.HyperRequestDependencyProvider", false, com/snapchat/android/api2/framework/HyperRequestDependencyProvider);
    }
}
