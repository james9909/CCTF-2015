// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.caption;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.ChangeOrientationEvent;
import com.squareup.otto.Bus;

// Referenced classes of package com.snapchat.android.ui.caption:
//            VanillaCaptionEditText, SnapCaptionViewInterface

class b
    implements TextWatcher
{

    final VanillaCaptionEditText a;
    private int b;

    public void afterTextChanged(Editable editable)
    {
        boolean flag = true;
        if (!a.e) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s;
        s = editable.toString();
        String s1 = a.a(s);
        if (TextUtils.equals(s, s1))
        {
            break; /* Loop/switch isn't completed */
        }
        a.setMaxTextLengthInputFilter(s1.length());
        a.e = flag;
        editable.clear();
        editable.append(s1);
        a.g = s1.length();
        a.e = false;
_L4:
        if (a.f)
        {
            if (a.j())
            {
                BusProvider.a().a(new ChangeOrientationEvent(6));
                return;
            }
            continue; /* Loop/switch isn't completed */
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (a.g > 0)
        {
            a.g = Math.max(a.g, s.length());
        }
        if (s.length() <= b)
        {
            flag = false;
        }
        b = s.length();
        if (flag && a.b != null)
        {
            a.b.a(s);
        }
          goto _L4
        if (a.i()) goto _L1; else goto _L5
_L5:
        BusProvider.a().a(new ChangeOrientationEvent(-1));
        return;
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    (VanillaCaptionEditText vanillacaptionedittext)
    {
        a = vanillacaptionedittext;
        super();
        b = 0;
    }
}
