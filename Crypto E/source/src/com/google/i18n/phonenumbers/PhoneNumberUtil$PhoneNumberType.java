// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil

public static final class  extends Enum
{

    public static final m a;
    public static final m b;
    public static final m c;
    public static final m d;
    public static final m e;
    public static final m f;
    public static final m g;
    public static final m h;
    public static final m i;
    public static final m j;
    public static final m k;
    public static final m l;
    private static final m m[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType, s);
    }

    public static [] values()
    {
        return ([])m.clone();
    }

    static 
    {
        a = new <init>("FIXED_LINE", 0);
        b = new <init>("MOBILE", 1);
        c = new <init>("FIXED_LINE_OR_MOBILE", 2);
        d = new <init>("TOLL_FREE", 3);
        e = new <init>("PREMIUM_RATE", 4);
        f = new <init>("SHARED_COST", 5);
        g = new <init>("VOIP", 6);
        h = new <init>("PERSONAL_NUMBER", 7);
        i = new <init>("PAGER", 8);
        j = new <init>("UAN", 9);
        k = new <init>("VOICEMAIL", 10);
        l = new <init>("UNKNOWN", 11);
        e_3B_.clone aclone[] = new <init>[12];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        aclone[5] = f;
        aclone[6] = g;
        aclone[7] = h;
        aclone[8] = i;
        aclone[9] = j;
        aclone[10] = k;
        aclone[11] = l;
        m = aclone;
    }

    private (String s, int i1)
    {
        super(s, i1);
    }
}
