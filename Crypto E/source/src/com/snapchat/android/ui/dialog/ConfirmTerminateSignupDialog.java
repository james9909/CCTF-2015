// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.snapchat.android.SnapchatActivity;
import com.snapchat.android.fragments.signup.LoginAndSignupFragment;
import com.snapchat.android.model.User;

// Referenced classes of package com.snapchat.android.ui.dialog:
//            TwoButtonDialog

public class ConfirmTerminateSignupDialog extends TwoButtonDialog
{

    private SnapchatActivity a;
    private int b;

    public ConfirmTerminateSignupDialog(Context context, int i)
    {
        super(context, context.getResources().getString(0x7f0c017b));
        a = (SnapchatActivity)context;
        b = i;
    }

    protected void a()
    {
    }

    protected void b()
    {
        User.c().G();
        a.getSupportFragmentManager().beginTransaction().replace(b, new LoginAndSignupFragment()).commit();
    }
}
