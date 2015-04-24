// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.aspectj.lang.reflect;


// Referenced classes of package org.aspectj.lang.reflect:
//            DeclareAnnotation

public static final class  extends Enum
{

    public static final e a;
    public static final e b;
    public static final e c;
    public static final e d;
    private static final e e[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/aspectj/lang/reflect/DeclareAnnotation$Kind, s);
    }

    public static [] values()
    {
        return ([])e.clone();
    }

    static 
    {
        a = new <init>("Field", 0);
        b = new <init>("Method", 1);
        c = new <init>("Constructor", 2);
        d = new <init>("Type", 3);
        d_3B_.clone aclone[] = new <init>[4];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        e = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
