// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.vtable;

import com.snapchat.android.discover.model.database.table.ChannelViewStateTable;
import com.snapchat.android.discover.model.database.table.DSnapViewStateTable;
import com.snapchat.android.discover.model.database.table.EditionViewStateTable;

// Referenced classes of package com.snapchat.android.discover.model.database.vtable:
//            DiscoverRepository

class a
    implements Runnable
{

    final DiscoverRepository a;

    public void run()
    {
        synchronized (DiscoverRepository.c(a))
        {
            if (DiscoverRepository.d(a) != null)
            {
                EditionViewStateTable.b().a(DiscoverRepository.d(a));
                ChannelViewStateTable.b().a(DiscoverRepository.d(a));
                DSnapViewStateTable.b().a(DiscoverRepository.d(a));
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    (DiscoverRepository discoverrepository)
    {
        a = discoverrepository;
        super();
    }
}
