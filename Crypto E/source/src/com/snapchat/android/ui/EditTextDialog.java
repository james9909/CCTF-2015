// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;

public abstract class EditTextDialog extends AlertDialog
{

    private Context a;
    private String b;
    private String c;
    public Integer d;
    private TextWatcher e;
    private int f;

    public EditTextDialog(Context context, String s, String s1, TextWatcher textwatcher, int i)
    {
        super(context);
        d = null;
        a = context;
        b = s;
        c = s1;
        e = textwatcher;
        f = i;
    }

    static Context a(EditTextDialog edittextdialog)
    {
        return edittextdialog.a;
    }

    public abstract void a(String s);

    protected void onCreate(Bundle bundle)
    {
        EditText edittext = new EditText(a);
        edittext.setInputType(f);
        if (d != null)
        {
            InputFilter ainputfilter[] = new InputFilter[1];
            ainputfilter[0] = new android.text.InputFilter.LengthFilter(d.intValue());
            edittext.setFilters(ainputfilter);
        }
        if (c != null)
        {
            edittext.append(c);
        }
        edittext.setInputType(0x80000 | f);
        setView(edittext);
        setTitle(b);
        setCancelable(true);
        setButton(-1, a.getString(0x7f0c0185), new android.content.DialogInterface.OnClickListener(edittext) {

            final EditText a;
            final EditTextDialog b;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                ((InputMethodManager)EditTextDialog.a(b).getSystemService("input_method")).hideSoftInputFromWindow(a.getWindowToken(), 0);
                b.a(a.getText().toString());
            }

            
            {
                b = EditTextDialog.this;
                a = edittext;
                super();
            }
        });
        setButton(-2, a.getString(0x7f0c003d), new android.content.DialogInterface.OnClickListener(edittext) {

            final EditText a;
            final EditTextDialog b;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                ((InputMethodManager)EditTextDialog.a(b).getSystemService("input_method")).hideSoftInputFromWindow(a.getWindowToken(), 0);
                dialoginterface.cancel();
            }

            
            {
                b = EditTextDialog.this;
                a = edittext;
                super();
            }
        });
        edittext.setOnFocusChangeListener(new android.view.View.OnFocusChangeListener() {

            final EditTextDialog a;

            public void onFocusChange(View view, boolean flag)
            {
                if (flag)
                {
                    a.getWindow().setSoftInputMode(5);
                }
            }

            
            {
                a = EditTextDialog.this;
                super();
            }
        });
        edittext.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final EditTextDialog a;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (i == 6 || keyevent != null && keyevent.getAction() == 0 && i == 0)
                {
                    ((InputMethodManager)EditTextDialog.a(a).getSystemService("input_method")).hideSoftInputFromWindow(textview.getWindowToken(), 0);
                    a.a(textview.getText().toString());
                    a.dismiss();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                a = EditTextDialog.this;
                super();
            }
        });
        if (e != null)
        {
            edittext.addTextChangedListener(e);
        }
        super.onCreate(bundle);
    }
}
