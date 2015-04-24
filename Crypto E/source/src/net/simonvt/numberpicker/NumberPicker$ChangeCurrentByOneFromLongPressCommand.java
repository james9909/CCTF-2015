// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.numberpicker;


// Referenced classes of package net.simonvt.numberpicker:
//            NumberPicker

class a
    implements Runnable
{

    final NumberPicker a;
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
        NumberPicker.a(a, b);
        a.postDelayed(this, NumberPicker.i(a));
    }

    (NumberPicker numberpicker)
    {
        a = numberpicker;
        super();
    }
}
