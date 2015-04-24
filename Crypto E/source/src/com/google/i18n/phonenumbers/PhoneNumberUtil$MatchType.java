// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil

public static final class  extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    public static final f e;
    private static final f f[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$MatchType, s);
    }

    public static [] values()
    {
        return ([])f.clone();
    }

    static 
    {
        a = new <init>("NOT_A_NUMBER", 0);
        b = new <init>("NO_MATCH", 1);
        c = new <init>("SHORT_NSN_MATCH", 2);
        d = new <init>("NSN_MATCH", 3);
        e = new <init>("EXACT_MATCH", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        f = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
