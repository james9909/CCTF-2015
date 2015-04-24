// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

// Referenced classes of package com.google.android.gms.internal:
//            ho

static final class ys
    implements android.content.gInterface.OnClickListener
{

    final JsPromptResult yr;
    final EditText ys;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        yr.confirm(ys.getText().toString());
    }

    ckListener(JsPromptResult jspromptresult, EditText edittext)
    {
        yr = jspromptresult;
        ys = edittext;
        super();
    }
}
