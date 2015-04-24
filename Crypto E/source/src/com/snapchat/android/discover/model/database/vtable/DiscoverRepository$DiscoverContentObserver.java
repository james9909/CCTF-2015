// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.model.database.vtable;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

// Referenced classes of package com.snapchat.android.discover.model.database.vtable:
//            DiscoverRepository

public static abstract class  extends ContentObserver
{

    protected abstract void a();

    public void onChange(boolean flag)
    {
        a();
    }

    public void onChange(boolean flag, Uri uri)
    {
        a();
    }

    public (Handler handler)
    {
        super(handler);
    }
}
