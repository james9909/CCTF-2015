// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            NumberParseException

public static final class A extends Enum
{

    public static final f a;
    public static final f b;
    public static final f c;
    public static final f d;
    public static final f e;
    private static final f f[];

    public static A valueOf(String s)
    {
        return (A)Enum.valueOf(com/google/i18n/phonenumbers/NumberParseException$ErrorType, s);
    }

    public static A[] values()
    {
        return (A[])f.clone();
    }

    static 
    {
        a = new <init>("INVALID_COUNTRY_CODE", 0);
        b = new <init>("NOT_A_NUMBER", 1);
        c = new <init>("TOO_SHORT_AFTER_IDD", 2);
        d = new <init>("TOO_SHORT_NSN", 3);
        e = new <init>("TOO_LONG", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        f = aclone;
    }

    private A(String s, int i)
    {
        super(s, i);
    }
}
