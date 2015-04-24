// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;


// Referenced classes of package com.snapchat.android.discover.ui:
//            ChannelGroupView

static final class n extends Enum
{

    public static final o a;
    public static final o b;
    public static final o c;
    public static final o d;
    public static final o e;
    public static final o f;
    public static final o g;
    public static final o h;
    public static final o i;
    public static final o j;
    public static final o k;
    public static final o l;
    public static final o m;
    private static final o o[];
    private final int n[];

    public static n valueOf(String s)
    {
        return (n)Enum.valueOf(com/snapchat/android/discover/ui/ChannelGroupView$Layout, s);
    }

    public static n[] values()
    {
        return (n[])o.clone();
    }

    public int[] a()
    {
        return n;
    }

    static 
    {
        a = new <init>("ZERO", 0, new int[0]);
        b = new <init>("ONE", 1, new int[] {
            1
        });
        c = new <init>("TWO", 2, new int[] {
            1, 1
        });
        d = new <init>("THREE", 3, new int[] {
            1, 1, 1
        });
        e = new <init>("FOUR", 4, new int[] {
            1, 1, 1, 1
        });
        f = new <init>("FIVE", 5, new int[] {
            1, 3, 1
        });
        g = new <init>("SIX", 6, new int[] {
            3, 2, 1
        });
        h = new <init>("SEVEN", 7, new int[] {
            2, 3, 2
        });
        i = new <init>("EIGHT", 8, new int[] {
            2, 3, 2, 1
        });
        j = new <init>("NINE", 9, new int[] {
            2, 3, 3, 1
        });
        k = new <init>("TEN", 10, new int[] {
            2, 3, 3, 2
        });
        l = new <init>("ELEVEN", 11, new int[] {
            3, 3, 3, 2
        });
        m = new <init>("TWELVE", 12, new int[] {
            3, 3, 3, 3
        });
        n an[] = new <init>[13];
        an[0] = a;
        an[1] = b;
        an[2] = c;
        an[3] = d;
        an[4] = e;
        an[5] = f;
        an[6] = g;
        an[7] = h;
        an[8] = i;
        an[9] = j;
        an[10] = k;
        an[11] = l;
        an[12] = m;
        o = an;
    }

    private (String s, int i1, int ai[])
    {
        super(s, i1);
        n = ai;
    }
}
