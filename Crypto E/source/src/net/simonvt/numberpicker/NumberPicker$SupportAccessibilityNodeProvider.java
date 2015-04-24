// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;

import android.os.Bundle;

// Referenced classes of package net.simonvt.numberpicker:
//            NumberPicker

class <init>
{

    formAction a;
    final NumberPicker b;

    public void a(int i, int j)
    {
        if (a != null)
        {
            a.a(i, j);
        }
    }

    public boolean a(int i, int j, Bundle bundle)
    {
        if (a != null)
        {
            return a.formAction(i, j, bundle);
        } else
        {
            return false;
        }
    }

    private (NumberPicker numberpicker)
    {
        b = numberpicker;
        super();
        if (android.os.yNodeProvider.b >= 16)
        {
            a = new it>(numberpicker);
        }
    }

    it>(NumberPicker numberpicker, it> it>)
    {
        this(numberpicker);
    }
}
