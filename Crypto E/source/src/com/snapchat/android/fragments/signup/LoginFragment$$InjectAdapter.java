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
//            LoginFragment

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public LoginFragment a()
    {
        LoginFragment loginfragment = new LoginFragment();
        a(loginfragment);
        return loginfragment;
    }

    public void a(LoginFragment loginfragment)
    {
        loginfragment.a = (SlightlySecurePreferences)a.get();
        b.a(loginfragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.crypto.SlightlySecurePreferences", com/snapchat/android/fragments/signup/LoginFragment, getClass().getClassLoader());
        b = linker.a("members/com.snapchat.android.util.fragment.SnapchatFragment", com/snapchat/android/fragments/signup/LoginFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((LoginFragment)obj);
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
        super("com.snapchat.android.fragments.signup.LoginFragment", "members/com.snapchat.android.fragments.signup.LoginFragment", false, com/snapchat/android/fragments/signup/LoginFragment);
    }
}
