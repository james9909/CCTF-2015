// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.DialogInterface;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            dp, hk

class sc
    implements android.content.gInterface.OnClickListener
{

    final dp sc;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dp.b(sc).b("onStorePictureCanceled", new JSONObject());
    }

    ckListener(dp dp1)
    {
        sc = dp1;
        super();
    }
}
