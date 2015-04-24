// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform;
import dagger.MembersInjector;
import dagger.internal.Binding;
import dagger.internal.Linker;
import java.util.Set;

// Referenced classes of package com.snapchat.android.database.table:
//            UpdateSnapsAnalyticsTable

public final class  extends Binding
    implements MembersInjector
{

    private Binding a;
    private Binding b;

    public void a(UpdateSnapsAnalyticsTable updatesnapsanalyticstable)
    {
        updatesnapsanalyticstable.a = (UpdateSnapsAnalyticsPlatform)a.get();
        b.a(updatesnapsanalyticstable);
    }

    public void a(Linker linker)
    {
        a = linker.a("com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform", com/snapchat/android/database/table/UpdateSnapsAnalyticsTable, getClass().getClassLoader());
        b = linker.a("members/com.snapchat.android.database.table.DbTable", com/snapchat/android/database/table/UpdateSnapsAnalyticsTable, getClass().getClassLoader(), false, true);
    }

    public volatile void a(Object obj)
    {
        a((UpdateSnapsAnalyticsTable)obj);
    }

    public void a(Set set, Set set1)
    {
        set1.add(a);
        set1.add(b);
    }

    public ()
    {
        super(null, "members/com.snapchat.android.database.table.UpdateSnapsAnalyticsTable", false, com/snapchat/android/database/table/UpdateSnapsAnalyticsTable);
    }
}
