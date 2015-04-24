// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;

import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.NumberKeyListener;

// Referenced classes of package net.simonvt.numberpicker:
//            NumberPicker

class a extends NumberKeyListener
{

    final NumberPicker a;

    public CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
    {
        Object obj;
        String s4;
        if (NumberPicker.c(a) != null)
        {
            break MISSING_BLOCK_LABEL_131;
        }
        obj = super.filter(charsequence, i, j, spanned, k, l);
        if (obj == null)
        {
            obj = charsequence.subSequence(i, j);
        }
        s4 = (new StringBuilder()).append(String.valueOf(spanned.subSequence(0, k))).append(obj).append(spanned.subSequence(l, spanned.length())).toString();
        if (!"".equals(s4)) goto _L2; else goto _L1
_L1:
        obj = s4;
_L4:
        return ((CharSequence) (obj));
_L2:
        if (NumberPicker.a(a, s4) <= NumberPicker.d(a)) goto _L4; else goto _L3
_L3:
        return "";
        String s = String.valueOf(charsequence.subSequence(i, j));
        if (TextUtils.isEmpty(s))
        {
            return "";
        }
        String s1 = (new StringBuilder()).append(String.valueOf(spanned.subSequence(0, k))).append(s).append(spanned.subSequence(l, spanned.length())).toString();
        String s2 = String.valueOf(s1).toLowerCase();
        String as[] = NumberPicker.c(a);
        int i1 = as.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            String s3 = as[j1];
            if (s3.toLowerCase().startsWith(s2))
            {
                NumberPicker.a(a, s1.length(), s3.length());
                return s3.subSequence(k, s3.length());
            }
        }

        return "";
    }

    protected char[] getAcceptedChars()
    {
        return NumberPicker.a();
    }

    public int getInputType()
    {
        return 1;
    }

    (NumberPicker numberpicker)
    {
        a = numberpicker;
        super();
    }
}
