// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.eventbus;


// Referenced classes of package com.snapchat.android.util.eventbus:
//            ShowDialogEvent

public static class d
{

    private int a;
    private int b;
    private String c;
    private pe d;
    private com.snapchat.android.util.ertListener e;

    public d a(int i)
    {
        b = i;
        return this;
    }

    public er a(com.snapchat.android.util.ertListener ertlistener)
    {
        e = ertlistener;
        return this;
    }

    public e a(String s)
    {
        c = s;
        return this;
    }

    public ShowDialogEvent a()
    {
        ShowDialogEvent showdialogevent = new ShowDialogEvent(d, b);
        showdialogevent.a = c;
        showdialogevent.c = a;
        showdialogevent.e = e;
        return showdialogevent;
    }

    public e b(int i)
    {
        a = i;
        return this;
    }

    public pe(pe pe)
    {
        d = pe;
    }
}
