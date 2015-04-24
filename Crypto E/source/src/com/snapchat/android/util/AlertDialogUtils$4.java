// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.os.CountDownTimer;
import java.util.Map;

// Referenced classes of package com.snapchat.android.util:
//            AlertDialogUtils

static final class a extends CountDownTimer
{

    final String a;

    public void onFinish()
    {
        AlertDialogUtils.a().remove(a);
    }

    public void onTick(long l)
    {
    }

    (long l, long l1, String s)
    {
        a = s;
        super(l, l1);
    }
}
