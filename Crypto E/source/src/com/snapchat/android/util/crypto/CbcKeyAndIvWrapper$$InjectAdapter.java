// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import com.snapchat.android.util.system.Clock;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.util.crypto:
//            CbcKeyAndIvWrapper

public final class  extends Binding
    implements MembersInjector
{

    private Binding a;

    public void a(CbcKeyAndIvWrapper cbckeyandivwrapper)
    {
        cbckeyandivwrapper.a = (Clock)a.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.system.Clock", com/snapchat/android/util/crypto/CbcKeyAndIvWrapper, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((CbcKeyAndIvWrapper)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
    }

    public ()
    {
        super(null, "members/com.snapchat.android.util.crypto.CbcKeyAndIvWrapper", false, com/snapchat/android/util/crypto/CbcKeyAndIvWrapper);
    }
}
