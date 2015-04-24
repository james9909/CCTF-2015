// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model;

import com.snapchat.android.util.system.Clock;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.model:
//            ReceivedSnap

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mClock;
    private Binding supertype;

    public ReceivedSnap a()
    {
        ReceivedSnap receivedsnap = new ReceivedSnap();
        a(receivedsnap);
        return receivedsnap;
    }

    public void a(ReceivedSnap receivedsnap)
    {
        receivedsnap.mClock = (Clock)mClock.get();
        supertype.a(receivedsnap);
    }

    public void a(Linker linker)
    {
        mClock = linker.a("com.snapchat.android.util.system.Clock", com/snapchat/android/model/ReceivedSnap, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.model.Snap", com/snapchat/android/model/ReceivedSnap, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((ReceivedSnap)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mClock);
        set1.add(supertype);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.model.ReceivedSnap", "members/com.snapchat.android.model.ReceivedSnap", false, com/snapchat/android/model/ReceivedSnap);
    }
}
