// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.notification;


// Referenced classes of package com.snapchat.android.notification:
//            AndroidNotificationManager

public static final class q extends Enum
{

    public static final r a;
    public static final r b;
    public static final r c;
    public static final r d;
    public static final r e;
    public static final r f;
    public static final r g;
    public static final r h;
    public static final r i;
    public static final r j;
    public static final r k;
    public static final r l;
    public static final r m;
    public static final r n;
    public static final r o;
    public static final r p;
    private static final r r[];
    private final int q;

    public static q valueOf(String s)
    {
        return (q)Enum.valueOf(com/snapchat/android/notification/AndroidNotificationManager$Type, s);
    }

    public static q[] values()
    {
        return (q[])r.clone();
    }

    public int a()
    {
        return q;
    }

    public String b()
    {
        return (new StringBuilder("LANDING_PAGE_ACTION_FROM_NOTIF_TYPE")).append(name()).toString();
    }

    static 
    {
        a = new <init>("SNAP", 0, 0);
        b = new <init>("CHAT", 1, 0);
        c = new <init>("ADDFRIEND", 2, 1);
        d = new <init>("REPLAY", 3, 2);
        e = new <init>("TYPING", 4, 3);
        f = new <init>("SCREENSHOT", 5, 4);
        g = new <init>("CHAT_SCREENSHOT", 6, 5);
        h = new <init>("HERE_SCREENSHOT", 7, 6);
        i = new <init>("STORIES", 8, 7);
        j = new <init>("CASH", 9, 11);
        k = new <init>("CASH_MESSAGE", 10, 13);
        l = new <init>("FAILED_SNAP_AND_CHAT", 11, 8);
        m = new <init>("FAILED_CHAT_NOT_FRIENDS", 12, 9);
        n = new <init>("UPLOAD_LOGS_REQUEST", 13, 10);
        o = new <init>("FAILED_CASH", 14, 12);
        p = new <init>("EMAIL_VERIFIED", 15, 15);
        name aname[] = new <init>[16];
        aname[0] = a;
        aname[1] = b;
        aname[2] = c;
        aname[3] = d;
        aname[4] = e;
        aname[5] = f;
        aname[6] = g;
        aname[7] = h;
        aname[8] = i;
        aname[9] = j;
        aname[10] = k;
        aname[11] = l;
        aname[12] = m;
        aname[13] = n;
        aname[14] = o;
        aname[15] = p;
        r = aname;
    }

    private (String s, int i1, int j1)
    {
        super(s, i1);
        q = j1;
    }
}
