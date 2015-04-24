// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;


// Referenced classes of package net.simonvt.numberpicker:
//            SnapchatTimePicker

class a
    implements Runnable
{

    final SnapchatTimePicker a;
    private boolean b;

    static void a(a a1, boolean flag)
    {
        a1.a(flag);
    }

    private void a(boolean flag)
    {
        b = flag;
    }

    public void run()
    {
        SnapchatTimePicker.a(a, b);
        a.postDelayed(this, SnapchatTimePicker.f(a));
    }

    (SnapchatTimePicker snapchattimepicker)
    {
        a = snapchattimepicker;
        super();
    }
}
