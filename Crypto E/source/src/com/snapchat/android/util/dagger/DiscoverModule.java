// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.dagger;

import com.snapchat.android.discover.controller.DiscoverMediaManager;
import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;

public class DiscoverModule
{

    public DiscoverModule()
    {
    }

    DiscoverRepository a()
    {
        return DiscoverRepository.a();
    }

    DiscoverMediaManager b()
    {
        return DiscoverMediaManager.a();
    }
}
