// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.view.View;

// Referenced classes of package com.snapchat.android.ui.caption:
//            FatCaptionEditText

public class FatCaptionLongClickListener
    implements android.view.View.OnLongClickListener
{

    public FatCaptionLongClickListener()
    {
    }

    public boolean onLongClick(View view)
    {
        if (view instanceof FatCaptionEditText)
        {
            FatCaptionEditText fatcaptionedittext = (FatCaptionEditText)view;
            if (fatcaptionedittext.v)
            {
                int i = fatcaptionedittext.getSelectionStart();
                int j = fatcaptionedittext.getSelectionEnd();
                android.text.Editable editable = fatcaptionedittext.getText();
                if (i == j && i > 0 && !Character.isWhitespace(editable.charAt(i - 1)))
                {
                    for (; i > 0 && !Character.isWhitespace(editable.charAt(i - 1)); i--) { }
                    for (; j < editable.length() && !Character.isWhitespace(editable.charAt(j)); j++) { }
                    fatcaptionedittext.setSelection(i, j);
                    return true;
                }
            }
        }
        return true;
    }
}
