// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

// Referenced classes of package com.google.android.gms.internal:
//            hb

class xI
    implements android.content.gInterface.OnClickListener
{

    final String xI;
    final hb xJ;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        hb.a(xJ).startActivity(Intent.createChooser((new Intent("android.intent.action.SEND")).setType("text/plain").putExtra("android.intent.extra.TEXT", xI), "Share via"));
    }

    ckListener(hb hb1, String s)
    {
        xJ = hb1;
        xI = s;
        super();
    }
}
