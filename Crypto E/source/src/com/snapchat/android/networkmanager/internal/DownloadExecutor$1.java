// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.networkmanager.internal;

import javax.inject.Provider;

// Referenced classes of package com.snapchat.android.networkmanager.internal:
//            DownloadExecutor

static final class 
    implements Provider
{

    public DownloadExecutor a()
    {
        return new DownloadExecutor();
    }

    public Object get()
    {
        return a();
    }

    ()
    {
    }
}
