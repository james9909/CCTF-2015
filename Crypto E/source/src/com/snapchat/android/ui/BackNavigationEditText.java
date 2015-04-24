// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;

public class BackNavigationEditText extends EditText
{
    class BackspaceInputConnection extends InputConnectionWrapper
    {

        final BackNavigationEditText a;

        public boolean deleteSurroundingText(int i, int j)
        {
            if (android.os.Build.VERSION.SDK_INT >= 14 && android.os.Build.VERSION.SDK_INT < 19 && i == 1 && j == 0)
            {
                return sendKeyEvent(new KeyEvent(0, 67)) && sendKeyEvent(new KeyEvent(1, 67));
            } else
            {
                return super.deleteSurroundingText(i, j);
            }
        }

        public boolean sendKeyEvent(KeyEvent keyevent)
        {
            if (keyevent.getAction() == 0 && keyevent.getKeyCode() == 67 && a.a())
            {
                return false;
            } else
            {
                return super.sendKeyEvent(keyevent);
            }
        }

        public BackspaceInputConnection(InputConnection inputconnection, boolean flag)
        {
            a = BackNavigationEditText.this;
            super(inputconnection, flag);
        }
    }


    public BackNavigationEditText(Context context)
    {
        super(context);
    }

    public BackNavigationEditText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public BackNavigationEditText(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public boolean a()
    {
        return false;
    }

    public InputConnection onCreateInputConnection(EditorInfo editorinfo)
    {
        return new BackspaceInputConnection(super.onCreateInputConnection(editorinfo), true);
    }
}
