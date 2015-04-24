// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

// Referenced classes of package com.snapchat.android.util:
//            AlertDialogUtils

static final class a
    implements android.content.lickListener
{

    final Context a;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://productforums.google.com/forum/#!topic/mobile/gsBvuZzG_xc/discussion"));
        intent.setFlags(32768);
        try
        {
            a.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            AlertDialogUtils.a("Could not start browser", a);
        }
    }

    er(Context context)
    {
        a = context;
        super();
    }
}
