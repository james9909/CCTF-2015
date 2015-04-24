// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

// Referenced classes of package com.google.android.gms.internal:
//            ho

static final class yr
    implements android.content.gInterface.OnCancelListener
{

    final JsPromptResult yr;

    public void onCancel(DialogInterface dialoginterface)
    {
        yr.cancel();
    }

    celListener(JsPromptResult jspromptresult)
    {
        yr = jspromptresult;
        super();
    }
}
