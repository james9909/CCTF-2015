// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;

import android.view.View;
import android.widget.TextView;

// Referenced classes of package net.simonvt.numberpicker:
//            SnapchatTimePicker

class a
    implements android.view.ner
{

    final SnapchatTimePicker a;

    public boolean onLongClick(View view)
    {
        SnapchatTimePicker.a(a).clearFocus();
        if (view.getId() == a)
        {
            SnapchatTimePicker.a(a, true, 0L);
            return true;
        } else
        {
            SnapchatTimePicker.a(a, false, 0L);
            return true;
        }
    }

    (SnapchatTimePicker snapchattimepicker)
    {
        a = snapchattimepicker;
        super();
    }
}
