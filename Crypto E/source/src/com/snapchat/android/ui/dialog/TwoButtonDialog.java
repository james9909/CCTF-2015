// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;

public abstract class TwoButtonDialog extends AlertDialog
{

    private String a;
    private String b;
    private String c;
    private String d;

    public TwoButtonDialog(Context context, String s)
    {
        this(context, null, s);
    }

    protected TwoButtonDialog(Context context, String s, String s1)
    {
        this(context, s, s1, context.getString(0x7f0c022a), context.getString(0x7f0c0130));
    }

    public TwoButtonDialog(Context context, String s, String s1, String s2)
    {
        this(context, null, s, s1, s2);
    }

    protected TwoButtonDialog(Context context, String s, String s1, String s2, String s3)
    {
        super(context);
        a = s;
        b = s1;
        c = s2;
        d = s3;
    }

    public abstract void a();

    public abstract void b();

    protected void onCreate(Bundle bundle)
    {
        if (!TextUtils.isEmpty(a))
        {
            setTitle(a);
        }
        if (!TextUtils.isEmpty(b))
        {
            setMessage(b);
        }
        setCancelable(true);
        setButton(-1, c, new android.content.DialogInterface.OnClickListener() {

            final TwoButtonDialog a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
                a.b();
            }

            
            {
                a = TwoButtonDialog.this;
                super();
            }
        });
        setButton(-2, d, new android.content.DialogInterface.OnClickListener() {

            final TwoButtonDialog a;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
                a.a();
            }

            
            {
                a = TwoButtonDialog.this;
                super();
            }
        });
        super.onCreate(bundle);
    }
}
