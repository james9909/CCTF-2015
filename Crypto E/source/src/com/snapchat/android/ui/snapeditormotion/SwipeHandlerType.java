// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui.snapeditormotion;


public final class SwipeHandlerType extends Enum
{

    public static final SwipeHandlerType a;
    public static final SwipeHandlerType b;
    public static final SwipeHandlerType c;
    public static final SwipeHandlerType d;
    private static final SwipeHandlerType e[];

    private SwipeHandlerType(String s, int i)
    {
        super(s, i);
    }

    public static SwipeHandlerType valueOf(String s)
    {
        return (SwipeHandlerType)Enum.valueOf(com/snapchat/android/ui/snapeditormotion/SwipeHandlerType, s);
    }

    public static SwipeHandlerType[] values()
    {
        return (SwipeHandlerType[])e.clone();
    }

    static 
    {
        a = new SwipeHandlerType("NO_SWIPE_STARTED", 0);
        b = new SwipeHandlerType("SWIPE_STARTED", 1);
        c = new SwipeHandlerType("SINGLE_SWIPE", 2);
        d = new SwipeHandlerType("DOUBLE_SWIPE", 3);
        SwipeHandlerType aswipehandlertype[] = new SwipeHandlerType[4];
        aswipehandlertype[0] = a;
        aswipehandlertype[1] = b;
        aswipehandlertype[2] = c;
        aswipehandlertype[3] = d;
        e = aswipehandlertype;
    }
}
