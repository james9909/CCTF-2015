// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util.debug:
//            GracefulExceptionHandler, CrashSampler, ReleaseManager

public final class  extends Binding
    implements Provider
{

    private Binding a;
    private Binding b;

    public GracefulExceptionHandler a()
    {
        return new GracefulExceptionHandler((CrashSampler)a.get(), (ReleaseManager)b.get());
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.debug.CrashSampler", com/snapchat/android/util/debug/GracefulExceptionHandler, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.util.debug.ReleaseManager", com/snapchat/android/util/debug/GracefulExceptionHandler, getClass().getClassLoader());
    }

    public void a(Set set, Set set1)
    {
        set.add(a);
        set.add(b);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.util.debug.GracefulExceptionHandler", "members/com.snapchat.android.util.debug.GracefulExceptionHandler", false, com/snapchat/android/util/debug/GracefulExceptionHandler);
    }
}
