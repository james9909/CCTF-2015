// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appindexing;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.im;
import com.google.android.gms.internal.is;

// Referenced classes of package com.google.android.gms.appindexing:
//            AppIndexApi, AppLinkingApi

public final class AppIndex
{

    public static final Api API;
    public static final Api APP_INDEX_API;
    public static final AppIndexApi AppIndexApi = new is();
    public static final AppLinkingApi AppLinkingApi = new im();
    public static final String EXTRA_APP_REFERRER = "com.google.android.gms.appindexing.EXTRA_APP_REFERRER";

    private AppIndex()
    {
    }

    static 
    {
        API = hu.DL;
        APP_INDEX_API = hu.DL;
    }
}
