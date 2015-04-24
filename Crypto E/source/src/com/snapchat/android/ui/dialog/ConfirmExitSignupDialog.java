// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.dialog;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.snapchat.android.LandingPageActivity;
import com.snapchat.android.SnapchatActivity;
import com.snapchat.android.model.UserPrefs;

// Referenced classes of package com.snapchat.android.ui.dialog:
//            TwoButtonDialog

public class ConfirmExitSignupDialog extends TwoButtonDialog
{

    private SnapchatActivity a;

    public ConfirmExitSignupDialog(Context context)
    {
        super(context, context.getResources().getString(0x7f0c017a));
        a = (SnapchatActivity)context;
    }

    protected void a()
    {
    }

    protected void b()
    {
        UserPrefs.a(false);
        a.startActivity(new Intent(a, com/snapchat/android/LandingPageActivity));
        a.finish();
    }
}
