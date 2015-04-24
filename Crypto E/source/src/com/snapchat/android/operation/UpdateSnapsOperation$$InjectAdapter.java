// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.operation;

import com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.operation:
//            UpdateSnapsOperation

public final class rm extends Binding
    implements MembersInjector
{

    private Binding a;
    private Binding b;

    public void a(UpdateSnapsOperation updatesnapsoperation)
    {
        updatesnapsoperation.e = (UpdateSnapsAnalyticsPlatform)a.get();
        b.a(updatesnapsoperation);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform", com/snapchat/android/operation/UpdateSnapsOperation, getClass().getClassLoader());
        b = linker.a("members/com.snapchat.android.operation.BasicScRequestOperation", com/snapchat/android/operation/UpdateSnapsOperation, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((UpdateSnapsOperation)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
    }

    public rm()
    {
        super(null, "members/com.snapchat.android.operation.UpdateSnapsOperation", false, com/snapchat/android/operation/UpdateSnapsOperation);
    }
}
