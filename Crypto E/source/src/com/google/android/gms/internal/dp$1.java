// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;

// Referenced classes of package com.google.android.gms.internal:
//            dp, hf

class sb
    implements android.content.gInterface.OnClickListener
{

    final String sa;
    final String sb;
    final dp sc;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        DownloadManager downloadmanager = (DownloadManager)dp.a(sc).getSystemService("download");
        try
        {
            downloadmanager.enqueue(sc.b(sa, sb));
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            hf.V("Could not store picture.");
        }
    }

    ckListener(dp dp1, String s, String s1)
    {
        sc = dp1;
        sa = s;
        sb = s1;
        super();
    }
}
