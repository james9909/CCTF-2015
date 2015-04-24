// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.snapchat.android.database.HasSeenOurCampusStoryDialogLog;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.util:
//            SnapListItemHandler

public final class  extends Binding
    implements MembersInjector
{

    private Binding a;

    public void a(SnapListItemHandler snaplistitemhandler)
    {
        snaplistitemhandler.c = (HasSeenOurCampusStoryDialogLog)a.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.database.HasSeenOurCampusStoryDialogLog", com/snapchat/android/util/SnapListItemHandler, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((SnapListItemHandler)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
    }

    public ()
    {
        super(null, "members/com.snapchat.android.util.SnapListItemHandler", false, com/snapchat/android/util/SnapListItemHandler);
    }
}
