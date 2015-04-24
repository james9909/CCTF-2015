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
//            HasSeenOurCampusStoryDialogLog

public final class Q extends Binding
    implements MembersInjector, Provider
{

    private Binding a;

    public HasSeenOurCampusStoryDialogLog a()
    {
        HasSeenOurCampusStoryDialogLog hasseenourcampusstorydialoglog = new HasSeenOurCampusStoryDialogLog();
        a(hasseenourcampusstorydialoglog);
        return hasseenourcampusstorydialoglog;
    }

    public void a(HasSeenOurCampusStoryDialogLog hasseenourcampusstorydialoglog)
    {
        a.a(hasseenourcampusstorydialoglog);
    }

    public void a(Linker linker)
    {
        a = linker.a("members/com.snapchat.android.database.HasSeenDialogLog", com/snapchat/android/database/HasSeenOurCampusStoryDialogLog, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((HasSeenOurCampusStoryDialogLog)obj);
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
        super("com.snapchat.android.database.HasSeenOurCampusStoryDialogLog", "members/com.snapchat.android.database.HasSeenOurCampusStoryDialogLog", true, com/snapchat/android/database/HasSeenOurCampusStoryDialogLog);
    }
}
