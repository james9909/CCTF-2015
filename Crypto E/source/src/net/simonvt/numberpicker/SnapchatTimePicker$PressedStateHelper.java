// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;

import android.view.ViewConfiguration;

// Referenced classes of package net.simonvt.numberpicker:
//            SnapchatTimePicker

class a
    implements Runnable
{

    final SnapchatTimePicker a;
    private final int b = 1;
    private final int c = 2;
    private int d;
    private int e;

    public void a()
    {
        e = 0;
        d = 0;
        a.removeCallbacks(this);
        if (SnapchatTimePicker.b(a))
        {
            SnapchatTimePicker.b(a, false);
            a.invalidate(0, SnapchatTimePicker.c(a), a.getRight(), a.getBottom());
        }
        SnapchatTimePicker.c(a, false);
        if (SnapchatTimePicker.d(a))
        {
            a.invalidate(0, 0, a.getRight(), SnapchatTimePicker.e(a));
        }
    }

    public void a(int i)
    {
        a();
        e = 1;
        d = i;
        a.postDelayed(this, ViewConfiguration.getTapTimeout());
    }

    public void b(int i)
    {
        a();
        e = 2;
        d = i;
        a.post(this);
    }

    public void run()
    {
        switch (e)
        {
        default:
            return;

        case 1: // '\001'
            switch (d)
            {
            default:
                return;

            case 1: // '\001'
                SnapchatTimePicker.b(a, true);
                a.invalidate(0, SnapchatTimePicker.c(a), a.getRight(), a.getBottom());
                return;

            case 2: // '\002'
                SnapchatTimePicker.c(a, true);
                break;
            }
            a.invalidate(0, 0, a.getRight(), SnapchatTimePicker.e(a));
            return;

        case 2: // '\002'
            switch (d)
            {
            default:
                return;

            case 1: // '\001'
                if (!SnapchatTimePicker.b(a))
                {
                    a.postDelayed(this, ViewConfiguration.getPressedStateDuration());
                }
                SnapchatTimePicker.a(a, 1);
                a.invalidate(0, SnapchatTimePicker.c(a), a.getRight(), a.getBottom());
                return;

            case 2: // '\002'
                break;
            }
            break;
        }
        if (!SnapchatTimePicker.d(a))
        {
            a.postDelayed(this, ViewConfiguration.getPressedStateDuration());
        }
        SnapchatTimePicker.b(a, 1);
        a.invalidate(0, 0, a.getRight(), SnapchatTimePicker.e(a));
    }

    (SnapchatTimePicker snapchattimepicker)
    {
        a = snapchattimepicker;
        super();
    }
}
