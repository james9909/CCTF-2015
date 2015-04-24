// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.fragment;


// Referenced classes of package com.snapchat.android.discover.ui.fragment:
//            EditionViewerPager

public static final class g extends Enum
{

    public static final h a;
    public static final h b;
    public static final h c;
    public static final h d;
    public static final h e;
    public static final h f;
    private static final h h[];
    private String g;

    public static g valueOf(String s)
    {
        return (g)Enum.valueOf(com/snapchat/android/discover/ui/fragment/EditionViewerPager$SwipeToExitMethod, s);
    }

    public static g[] values()
    {
        return (g[])h.clone();
    }

    public String a()
    {
        return g;
    }

    static 
    {
        a = new <init>("SWIPE_DOWN", 0, "swipe_down");
        b = new <init>("SWIPE_BEGINNING", 1, "swipe_beginning");
        c = new <init>("SWIPE_END", 2, "swipe_end");
        d = new <init>("ENTER_BACKGROUND", 3, "enter_background");
        e = new <init>("BACK_PRESSED", 4, "back_pressed");
        f = new <init>("AUTO_ADVANCE", 5, "auto_advance");
        g ag[] = new <init>[6];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        ag[4] = e;
        ag[5] = f;
        h = ag;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        g = s1;
    }
}
