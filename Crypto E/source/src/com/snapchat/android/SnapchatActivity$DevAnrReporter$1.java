// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android;

import android.content.Context;
import com.snapchat.android.util.AlertDialogUtils;

// Referenced classes of package com.snapchat.android:
//            SnapchatActivity

class a
    implements Runnable
{

    final Context a;
    final a b;

    public void run()
    {
        AlertDialogUtils.a("ANR detected from Snapchat! See more details in notification", a, 1);
    }

    ( , Context context)
    {
        b = ;
        a = context;
        super();
    }
}
