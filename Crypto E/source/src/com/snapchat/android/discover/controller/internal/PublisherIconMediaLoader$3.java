// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal;

import java.util.List;

// Referenced classes of package com.snapchat.android.discover.controller.internal:
//            PublisherIconMediaLoader

class a
    implements com.snapchat.android.discover.model.database.vtable.epositoryListener
{

    final PublisherIconMediaLoader a;

    public void a(List list)
    {
        PublisherIconMediaLoader.a(a, list);
    }

    lRepositoryListener(PublisherIconMediaLoader publishericonmedialoader)
    {
        a = publishericonmedialoader;
        super();
    }
}
