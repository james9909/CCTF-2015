// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.fragments.chat;

import com.snapchat.android.util.system.Clock;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.fragments.chat:
//            ReleaseWindow

public final class  extends Binding
    implements MembersInjector, Provider
{

    private Binding a;

    public ReleaseWindow a()
    {
        ReleaseWindow releasewindow = new ReleaseWindow();
        a(releasewindow);
        return releasewindow;
    }

    public void a(ReleaseWindow releasewindow)
    {
        releasewindow.a = (Clock)a.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.util.system.Clock", com/snapchat/android/fragments/chat/ReleaseWindow, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((ReleaseWindow)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
    }

    public Object get()
    {
        return a();
    }

    public ()
    {
        super("com.snapchat.android.fragments.chat.ReleaseWindow", "members/com.snapchat.android.fragments.chat.ReleaseWindow", false, com/snapchat/android/fragments/chat/ReleaseWindow);
    }
}
