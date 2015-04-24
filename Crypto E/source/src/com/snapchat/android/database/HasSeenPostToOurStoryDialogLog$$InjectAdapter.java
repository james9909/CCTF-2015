// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database;

import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.database:
//            HasSeenPostToOurStoryDialogLog

public final class Q extends Binding
    implements MembersInjector, Provider
{

    private Binding a;

    public HasSeenPostToOurStoryDialogLog a()
    {
        HasSeenPostToOurStoryDialogLog hasseenposttoourstorydialoglog = new HasSeenPostToOurStoryDialogLog();
        a(hasseenposttoourstorydialoglog);
        return hasseenposttoourstorydialoglog;
    }

    public void a(HasSeenPostToOurStoryDialogLog hasseenposttoourstorydialoglog)
    {
        a.a(hasseenposttoourstorydialoglog);
    }

    public void a(Linker linker)
    {
        a = linker.a("members/com.snapchat.android.database.HasSeenDialogLog", com/snapchat/android/database/HasSeenPostToOurStoryDialogLog, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((HasSeenPostToOurStoryDialogLog)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
    }

    public Object get()
    {
        return a();
    }

    public Q()
    {
        super("com.snapchat.android.database.HasSeenPostToOurStoryDialogLog", "members/com.snapchat.android.database.HasSeenPostToOurStoryDialogLog", true, com/snapchat/android/database/HasSeenPostToOurStoryDialogLog);
    }
}
