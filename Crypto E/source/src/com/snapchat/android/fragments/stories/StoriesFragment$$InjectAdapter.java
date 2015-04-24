// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.stories;

import com.snapchat.android.deeplink.DeepLinkParser;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.stories:
//            StoriesFragment

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;
    private Binding b;

    public StoriesFragment a()
    {
        StoriesFragment storiesfragment = new StoriesFragment();
        a(storiesfragment);
        return storiesfragment;
    }

    public void a(StoriesFragment storiesfragment)
    {
        storiesfragment.e = (DeepLinkParser)a.get();
        b.a(storiesfragment);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.deeplink.DeepLinkParser", com/snapchat/android/fragments/stories/StoriesFragment, getClass().getClassLoader());
        b = linker.a("members/com.snapchat.android.util.fragment.SnapchatFragment", com/snapchat/android/fragments/stories/StoriesFragment, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((StoriesFragment)obj);
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
        super("com.snapchat.android.fragments.stories.StoriesFragment", "members/com.snapchat.android.fragments.stories.StoriesFragment", false, com/snapchat/android/fragments/stories/StoriesFragment);
    }
}
