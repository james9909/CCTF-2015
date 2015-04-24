// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;

public class OneButtonDialog extends AlertDialog
{

    private String a;
    private Context b;

    public OneButtonDialog(Context context, String s)
    {
        super(context);
        a = s;
        b = context;
    }

    public void a()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        setMessage(a);
        setCancelable(true);
        setButton(-1, b.getString(0x7f0c0142), new android.content.DialogInterface.OnClickListener() {

            final OneButtonDialog a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
                a.a();
            }

            
            {
                a = OneButtonDialog.this;
                super();
            }
        });
        super.onCreate(bundle);
    }
}
