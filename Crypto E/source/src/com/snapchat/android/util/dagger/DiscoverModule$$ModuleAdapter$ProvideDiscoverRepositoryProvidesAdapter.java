// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.dagger;

import com.snapchat.android.discover.model.database.vtable.DiscoverRepository;
import dagger.internal.ProvidesBinding;
import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.util.dagger:
//            DiscoverModule

public static final class c extends ProvidesBinding
    implements Provider
{

    private final DiscoverModule c;

    public DiscoverRepository a()
    {
        return c.a();
    }

    public Object get()
    {
        return a();
    }

    public (DiscoverModule discovermodule)
    {
        super("com.snapchat.android.discover.model.database.vtable.DiscoverRepository", true, "com.snapchat.android.util.dagger.DiscoverModule", "provideDiscoverRepository");
        c = discovermodule;
        c(true);
    }
}
