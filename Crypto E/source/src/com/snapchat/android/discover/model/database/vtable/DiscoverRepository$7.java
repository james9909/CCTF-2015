// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.vtable;


// Referenced classes of package com.snapchat.android.discover.model.database.vtable:
//            DiscoverRepository

class a
    implements Runnable
{

    final napRepositoryListener a[];
    final DiscoverRepository b;

    public void run()
    {
        b.b(a);
    }

    napRepositoryListener(DiscoverRepository discoverrepository, napRepositoryListener anaprepositorylistener[])
    {
        b = discoverrepository;
        a = anaprepositorylistener;
        super();
    }
}
