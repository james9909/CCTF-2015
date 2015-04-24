// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.snapchat.android.Timber;

// Referenced classes of package com.snapchat.android.ui.caption:
//            CaptionEditText

class a extends ResultReceiver
{

    final CaptionEditText a;

    public void onReceiveResult(int i, Bundle bundle)
    {
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        Timber.c("CaptionEditText", "CaptionDebug: result from IME is %d", aobj);
        if (i == 2 || i == 0)
        {
            CaptionEditText.b(a, true);
        } else
        if (i == 3 || i == 1)
        {
            CaptionEditText.b(a, false);
            return;
        }
    }

    public (CaptionEditText captionedittext)
    {
        a = captionedittext;
        super(null);
    }
}
