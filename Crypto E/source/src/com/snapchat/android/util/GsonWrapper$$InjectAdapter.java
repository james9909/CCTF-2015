// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.util.debug.GracefulExceptionHandler;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util:
//            GsonWrapper

public final class ler extends Binding
    implements Provider
{

    private Binding a;

    public GsonWrapper a()
    {
        return new GsonWrapper((GracefulExceptionHandler)a.get());
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.debug.GracefulExceptionHandler", com/snapchat/android/util/GsonWrapper, getClass().getClassLoader());
    }

    public void a(Set set, Set set1)
    {
        set.add(a);
    }

    public Object get()
    {
        return a();
    }

    public ler()
    {
        super("com.snapchat.android.util.GsonWrapper", "members/com.snapchat.android.util.GsonWrapper", true, com/snapchat/android/util/GsonWrapper);
    }
}
