// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.settings;

import com.snapchat.android.util.GsonWrapper;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.settings:
//            WebFragment

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public WebFragment a()
    {
        WebFragment webfragment = new WebFragment();
        a(webfragment);
        return webfragment;
    }

    public void a(WebFragment webfragment)
    {
        webfragment.c = (GsonWrapper)a.get();
        b.a(webfragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.GsonWrapper", com/snapchat/android/fragments/settings/WebFragment, getClass().getClassLoader());
        b = linker.a("members/com.snapchat.android.util.fragment.SnapchatFragment", com/snapchat/android/fragments/settings/WebFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((WebFragment)obj);
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
        super("com.snapchat.android.fragments.settings.WebFragment", "members/com.snapchat.android.fragments.settings.WebFragment", false, com/snapchat/android/fragments/settings/WebFragment);
    }
}
