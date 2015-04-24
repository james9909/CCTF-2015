// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.text.Editable;
import android.text.TextWatcher;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.ui.caption:
//            FatCaptionEditText, SnapCaptionViewInterface

class b
    implements TextWatcher
{

    final FatCaptionEditText a;
    private int b;

    public void afterTextChanged(Editable editable)
    {
        if (!a.e && !FatCaptionEditText.a(a))
        {
            a.v = false;
            a.a(editable);
            String s = editable.toString();
            int i = s.length();
            int j = b;
            boolean flag = false;
            if (i > j)
            {
                flag = true;
            }
            if (flag && a.b != null)
            {
                a.b.a(s);
            }
            b = s.length();
            a.k();
            if (a.f && !a.i())
            {
                BusProvider.a().a(new ChangeOrientationEvent(-1));
                return;
            }
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    vent(FatCaptionEditText fatcaptionedittext)
    {
        a = fatcaptionedittext;
        super();
        b = 0;
    }
}
