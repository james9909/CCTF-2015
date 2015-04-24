// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import com.snapchat.android.model.Mediabryo;

// Referenced classes of package com.snapchat.android.ui:
//            SnapEditorView

public class a
{

    final SnapEditorView a;
    private int b;
    private int c;
    private Mediabryo d;
    private int e;

    static int a(a a1, int i)
    {
        a1.b = i;
        return i;
    }

    static Mediabryo a(b b1)
    {
        return b1.d;
    }

    static Mediabryo a(d d1, Mediabryo mediabryo)
    {
        d1.d = mediabryo;
        return mediabryo;
    }

    static int b(d d1)
    {
        return d1.b;
    }

    static int b(b b1, int i)
    {
        b1.c = i;
        return i;
    }

    static int c(c c1)
    {
        return c1.c;
    }

    static int c(c c1, int i)
    {
        c1.e = i;
        return i;
    }

    static int d(e e1)
    {
        return e1.e;
    }

    public A(SnapEditorView snapeditorview)
    {
        a = snapeditorview;
        super();
    }
}
