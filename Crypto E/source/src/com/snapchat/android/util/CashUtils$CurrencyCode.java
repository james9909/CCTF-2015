// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;


// Referenced classes of package com.snapchat.android.util:
//            CashUtils

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES USD;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/android/util/CashUtils$CurrencyCode, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        USD = new <init>("USD", 0);
        e_3B_.clone aclone[] = new <init>[1];
        aclone[0] = USD;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
