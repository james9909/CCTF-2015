// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.deeplink;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.snapchat.android.api.FriendActionTask;
import com.snapchat.android.model.FriendAction;
import com.snapchat.android.util.LocalizationUtils;
import com.snapchat.android.util.ScExecutors;

public class DeepLinkAddFriendDialog extends AlertDialog
{

    public DeepLinkAddFriendDialog(Context context, String s)
    {
        super(context);
        setTitle(LocalizationUtils.a(context, 0x7f0c0006, new Object[] {
            s
        }));
        setButton(-1, context.getString(0x7f0c0001), new android.content.DialogInterface.OnClickListener(s) {

            final String a;
            final DeepLinkAddFriendDialog b;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                b.a(a);
                dialoginterface.cancel();
            }

            
            {
                b = DeepLinkAddFriendDialog.this;
                a = s;
                super();
            }
        });
        setButton(-2, context.getString(0x7f0c003d), new android.content.DialogInterface.OnClickListener() {

            final DeepLinkAddFriendDialog a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
            }

            
            {
                a = DeepLinkAddFriendDialog.this;
                super();
            }
        });
    }

    protected void a(String s)
    {
        (new FriendActionTask(FriendAction.ADD, null, s, null, false, null)).executeOnExecutor(ScExecutors.b, new String[0]);
    }
}
