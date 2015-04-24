// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.github.ksoichiro.android.observablescrollview;


public final class ScrollState extends Enum
{

    public static final ScrollState a;
    public static final ScrollState b;
    public static final ScrollState c;
    private static final ScrollState d[];

    private ScrollState(String s, int i)
    {
        super(s, i);
    }

    public static ScrollState valueOf(String s)
    {
        return (ScrollState)Enum.valueOf(com/github/ksoichiro/android/observablescrollview/ScrollState, s);
    }

    public static ScrollState[] values()
    {
        return (ScrollState[])d.clone();
    }

    static 
    {
        a = new ScrollState("STOP", 0);
        b = new ScrollState("UP", 1);
        c = new ScrollState("DOWN", 2);
        ScrollState ascrollstate[] = new ScrollState[3];
        ascrollstate[0] = a;
        ascrollstate[1] = b;
        ascrollstate[2] = c;
        d = ascrollstate;
    }
}
