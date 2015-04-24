// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;

import android.widget.EditText;

// Referenced classes of package net.simonvt.numberpicker:
//            NumberPicker

class a
    implements Runnable
{

    final NumberPicker a;
    private int b;
    private int c;

    static int a(a a1, int i)
    {
        a1.b = i;
        return i;
    }

    static int b(b b1, int i)
    {
        b1.c = i;
        return i;
    }

    public void run()
    {
        NumberPicker.b(a).setSelection(b, c);
    }

    (NumberPicker numberpicker)
    {
        a = numberpicker;
        super();
    }
}
