// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.DialogInterface;

// Referenced classes of package com.google.android.gms.internal:
//            dm

class rJ
    implements android.content.gInterface.OnClickListener
{

    final dm rJ;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        android.content.Intent intent = rJ.createIntent();
        dm.a(rJ).startActivity(intent);
    }

    ckListener(dm dm1)
    {
        rJ = dm1;
        super();
    }
}
