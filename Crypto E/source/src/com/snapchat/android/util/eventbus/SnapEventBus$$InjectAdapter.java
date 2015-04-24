// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;

import com.snapchat.android.util.debug.ExceptionReporter;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util.eventbus:
//            SnapEventBus

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public SnapEventBus a()
    {
        SnapEventBus snapeventbus = new SnapEventBus();
        a(snapeventbus);
        return snapeventbus;
    }

    public void a(SnapEventBus snapeventbus)
    {
        snapeventbus.a = (ExceptionReporter)a.get();
        b.a(snapeventbus);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.debug.ExceptionReporter", com/snapchat/android/util/eventbus/SnapEventBus, getClass().getClassLoader());
        b = linker.a("members/com.squareup.otto.Bus", com/snapchat/android/util/eventbus/SnapEventBus, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((SnapEventBus)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.util.eventbus.SnapEventBus", "members/com.snapchat.android.util.eventbus.SnapEventBus", false, com/snapchat/android/util/eventbus/SnapEventBus);
    }
}
