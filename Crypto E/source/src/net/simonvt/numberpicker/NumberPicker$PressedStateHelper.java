// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;

import android.view.ViewConfiguration;

// Referenced classes of package net.simonvt.numberpicker:
//            NumberPicker

class a
    implements Runnable
{

    final NumberPicker a;
    private final int b = 1;
    private final int c = 2;
    private int d;
    private int e;

    public void a()
    {
        e = 0;
        d = 0;
        a.removeCallbacks(this);
        if (NumberPicker.e(a))
        {
            NumberPicker.b(a, false);
            a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
        }
        NumberPicker.c(a, false);
        if (NumberPicker.g(a))
        {
            a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
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
                NumberPicker.b(a, true);
                a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
                return;

            case 2: // '\002'
                NumberPicker.c(a, true);
                break;
            }
            a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
            return;

        case 2: // '\002'
            switch (d)
            {
            default:
                return;

            case 1: // '\001'
                if (!NumberPicker.e(a))
                {
                    a.postDelayed(this, ViewConfiguration.getPressedStateDuration());
                }
                NumberPicker.a(a, 1);
                a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
                return;

            case 2: // '\002'
                break;
            }
            break;
        }
        if (!NumberPicker.g(a))
        {
            a.postDelayed(this, ViewConfiguration.getPressedStateDuration());
        }
        NumberPicker.b(a, 1);
        a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
    }

    (NumberPicker numberpicker)
    {
        a = numberpicker;
        super();
    }
}
