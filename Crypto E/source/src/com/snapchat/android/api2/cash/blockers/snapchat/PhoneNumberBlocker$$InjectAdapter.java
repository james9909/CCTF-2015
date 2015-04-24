// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.cash.blockers.snapchat;

import com.snapchat.android.cash.ReceivingCashManager;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.api2.cash.blockers.snapchat:
//            PhoneNumberBlocker

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding mReceivingCashManager;
    private Binding supertype;

    public PhoneNumberBlocker a()
    {
        PhoneNumberBlocker phonenumberblocker = new PhoneNumberBlocker();
        a(phonenumberblocker);
        return phonenumberblocker;
    }

    public void a(PhoneNumberBlocker phonenumberblocker)
    {
        phonenumberblocker.mReceivingCashManager = (ReceivingCashManager)mReceivingCashManager.get();
        supertype.a(phonenumberblocker);
    }

    public void a(Linker linker)
    {
        mReceivingCashManager = linker.a("com.snapchat.android.cash.ReceivingCashManager", com/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker, getClass().getClassLoader());
        supertype = linker.a("members/com.snapchat.android.api2.cash.blockers.Blocker", com/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((PhoneNumberBlocker)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(mReceivingCashManager);
        set1.add(supertype);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.api2.cash.blockers.snapchat.PhoneNumberBlocker", "members/com.snapchat.android.api2.cash.blockers.snapchat.PhoneNumberBlocker", false, com/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker);
    }
}
