// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers;

import com.snapchat.android.cash.CardBlockerManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.api2.cash.blockers:
//            CardBlocker

public final class  extends Binding
    implements MembersInjector
{

    private Binding mCardBlockerManager;
    private Binding supertype;

    public void a(CardBlocker cardblocker)
    {
        cardblocker.mCardBlockerManager = (CardBlockerManager)mCardBlockerManager.get();
        supertype.a(cardblocker);
    }

    public void a(Linker linker)
    {
        mCardBlockerManager = linker.a("com.snapchat.android.cash.CardBlockerManager", com/snapchat/android/api2/cash/blockers/CardBlocker, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.cash.blockers.Blocker", com/snapchat/android/api2/cash/blockers/CardBlocker, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((CardBlocker)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mCardBlockerManager);
        set1.add(supertype);
    }

    public ()
    {
        super(null, "members/com.snapchat.android.api2.cash.blockers.CardBlocker", false, com/snapchat/android/api2/cash/blockers/CardBlocker);
    }
}
