// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal;

import java.util.List;

// Referenced classes of package com.snapchat.android.discover.controller.internal:
//            EditionMediaLoader

class a
    implements com.snapchat.android.discover.model.database.vtable.napRepositoryListener
{

    final EditionMediaLoader a;

    public void a(List list)
    {
        EditionMediaLoader.a(a, list);
    }

    DSnapRepositoryListener(EditionMediaLoader editionmedialoader)
    {
        a = editionmedialoader;
        super();
    }
}
