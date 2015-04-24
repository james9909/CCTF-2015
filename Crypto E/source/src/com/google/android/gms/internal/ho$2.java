// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.webkit.JsResult;

// Referenced classes of package com.google.android.gms.internal:
//            ho

static final class yq
    implements android.content.gInterface.OnClickListener
{

    final JsResult yq;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        yq.cancel();
    }

    ckListener(JsResult jsresult)
    {
        yq = jsresult;
        super();
    }
}
