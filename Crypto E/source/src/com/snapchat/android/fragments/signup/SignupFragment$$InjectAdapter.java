// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.signup;

import com.snapchat.android.util.crypto.SlightlySecurePreferences;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.signup:
//            SignupFragment

public final class I extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public SignupFragment a()
    {
        SignupFragment signupfragment = new SignupFragment();
        a(signupfragment);
        return signupfragment;
    }

    public void a(SignupFragment signupfragment)
    {
        signupfragment.a = (SlightlySecurePreferences)a.get();
        b.a(signupfragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.crypto.SlightlySecurePreferences", com/snapchat/android/fragments/signup/SignupFragment, getClass().getClassLoader());
        b = linker.a("members/com.snapchat.android.util.fragment.SnapchatFragment", com/snapchat/android/fragments/signup/SignupFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((SignupFragment)obj);
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

    public I()
    {
        super("com.snapchat.android.fragments.signup.SignupFragment", "members/com.snapchat.android.fragments.signup.SignupFragment", false, com/snapchat/android/fragments/signup/SignupFragment);
    }
}
