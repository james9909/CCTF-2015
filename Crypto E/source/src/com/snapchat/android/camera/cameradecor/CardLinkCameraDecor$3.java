// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.camera.cameradecor;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;

// Referenced classes of package com.snapchat.android.camera.cameradecor:
//            CardLinkCameraDecor

class c
    implements TextWatcher
{

    final View a;
    final CardLinkCameraDecor b;
    private boolean c;

    public void afterTextChanged(Editable editable)
    {
        if (!c && TextUtils.getTrimmedLength(editable) != 0)
        {
            CardLinkCameraDecor.a(b, a, 0.6F, 1.0F);
            c = true;
        } else
        if (TextUtils.getTrimmedLength(editable) == 0)
        {
            CardLinkCameraDecor.a(b, a, 1.0F, 0.6F);
            c = false;
            return;
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    (CardLinkCameraDecor cardlinkcameradecor, View view)
    {
        b = cardlinkcameradecor;
        a = view;
        super();
        c = false;
    }
}
