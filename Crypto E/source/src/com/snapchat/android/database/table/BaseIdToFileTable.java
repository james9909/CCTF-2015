// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database.table;

import com.snapchat.android.model.User;
import com.snapchat.android.util.cache.Cache;
import java.util.Collection;

// Referenced classes of package com.snapchat.android.database.table:
//            IdToFileTable

public class BaseIdToFileTable extends IdToFileTable
{

    private final String a;
    private final Cache b;

    public BaseIdToFileTable(String s, Cache cache)
    {
        a = s;
        b = cache;
    }

    public String a()
    {
        return a;
    }

    public void a(User user)
    {
        b.a(f());
    }

    protected Collection b(User user)
    {
        return b.c();
    }
}
