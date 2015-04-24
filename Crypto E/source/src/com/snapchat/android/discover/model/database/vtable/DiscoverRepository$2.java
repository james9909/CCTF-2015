// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.vtable;

import android.os.Handler;

// Referenced classes of package com.snapchat.android.discover.model.database.vtable:
//            DiscoverRepository

class scoverContentObserver extends scoverContentObserver
{

    final DiscoverRepository a;

    protected void a()
    {
        DiscoverRepository.b(a);
    }

    scoverContentObserver(DiscoverRepository discoverrepository, Handler handler)
    {
        a = discoverrepository;
        super(handler);
    }
}
