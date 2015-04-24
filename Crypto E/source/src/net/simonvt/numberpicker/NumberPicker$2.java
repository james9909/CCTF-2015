// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;

import android.view.View;
import android.widget.EditText;

// Referenced classes of package net.simonvt.numberpicker:
//            NumberPicker

class a
    implements android.view.kListener
{

    final NumberPicker a;

    public boolean onLongClick(View view)
    {
        NumberPicker.a(a);
        NumberPicker.b(a).clearFocus();
        if (view.getId() == ent)
        {
            NumberPicker.a(a, true, 0L);
            return true;
        } else
        {
            NumberPicker.a(a, false, 0L);
            return true;
        }
    }

    (NumberPicker numberpicker)
    {
        a = numberpicker;
        super();
    }
}
