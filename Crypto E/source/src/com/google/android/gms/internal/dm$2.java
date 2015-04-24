// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.DialogInterface;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            dm, hk

class rJ
    implements android.content.gInterface.OnClickListener
{

    final dm rJ;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dm.b(rJ).b("onCalendarEventCanceled", new JSONObject());
    }

    ckListener(dm dm1)
    {
        rJ = dm1;
        super();
    }
}
