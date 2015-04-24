// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.debug;

import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util.debug:
//            StrictModeHelper, ReleaseManager

public final class  extends Binding
    implements Provider
{

    private Binding a;

    public StrictModeHelper a()
    {
        return new StrictModeHelper((ReleaseManager)a.get());
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.debug.ReleaseManager", com/snapchat/android/util/debug/StrictModeHelper, getClass().getClassLoader());
    }

    public void a(Set set, Set set1)
    {
        set.add(a);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.util.debug.StrictModeHelper", "members/com.snapchat.android.util.debug.StrictModeHelper", false, com/snapchat/android/util/debug/StrictModeHelper);
    }
}
