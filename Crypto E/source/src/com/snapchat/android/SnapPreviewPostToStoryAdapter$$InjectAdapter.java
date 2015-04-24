// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import com.snapchat.android.database.HasSeenPostToOurStoryDialogLog;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android:
//            SnapPreviewPostToStoryAdapter

public final class  extends Binding
    implements MembersInjector
{

    private Binding a;

    public void a(SnapPreviewPostToStoryAdapter snappreviewposttostoryadapter)
    {
        snappreviewposttostoryadapter.a = (HasSeenPostToOurStoryDialogLog)a.get();
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.database.HasSeenPostToOurStoryDialogLog", com/snapchat/android/SnapPreviewPostToStoryAdapter, getClass().getClassLoader());
    }

    public volatile void a(Object obj)
    {
        a((SnapPreviewPostToStoryAdapter)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
    }

    public ()
    {
        super(null, "members/com.snapchat.android.SnapPreviewPostToStoryAdapter", false, com/snapchat/android/SnapPreviewPostToStoryAdapter);
    }
}
