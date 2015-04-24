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

    public void run()
    {
        NumberPicker.j(a);
        NumberPicker.d(a, true);
    }

    (NumberPicker numberpicker)
    {
        a = numberpicker;
        super();
    }
}
