// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.notification;


// Referenced classes of package com.snapchat.android.notification:
//            AndroidNotificationManager

public static final class  extends Enum
{

    public static final b a;
    private static final b b[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/notification/AndroidNotificationManager$Destination, s);
    }

    public static [] values()
    {
        return ([])b.clone();
    }

    static 
    {
        a = new <init>("ADD_FRIENDS", 0);
        n_3B_.clone aclone[] = new <init>[1];
        aclone[0] = a;
        b = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
