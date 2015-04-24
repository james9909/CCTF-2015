// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import com.snapchat.android.util.GsonWrapper;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util.crypto:
//            CbcSlightlySecurePreferences, SlightlySecurePreferences

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public CbcSlightlySecurePreferences a()
    {
        CbcSlightlySecurePreferences cbcslightlysecurepreferences = new CbcSlightlySecurePreferences();
        a(cbcslightlysecurepreferences);
        return cbcslightlysecurepreferences;
    }

    public void a(CbcSlightlySecurePreferences cbcslightlysecurepreferences)
    {
        cbcslightlysecurepreferences.a = (SlightlySecurePreferences)a.get();
        cbcslightlysecurepreferences.b = (GsonWrapper)b.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.crypto.SlightlySecurePreferences", com/snapchat/android/util/crypto/CbcSlightlySecurePreferences, getClass().getClassLoader());
        b = linker.a("com.snapchat.android.util.GsonWrapper", com/snapchat/android/util/crypto/CbcSlightlySecurePreferences, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((CbcSlightlySecurePreferences)obj);
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
        super("com.snapchat.android.util.crypto.CbcSlightlySecurePreferences", "members/com.snapchat.android.util.crypto.CbcSlightlySecurePreferences", false, com/snapchat/android/util/crypto/CbcSlightlySecurePreferences);
    }
}
