// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.javawriter;


// Referenced classes of package com.squareup.javawriter:
//            JavaWriter

static final class  extends Enum
{

    public static final i a;
    public static final i b;
    public static final i c;
    public static final i d;
    public static final i e;
    public static final i f;
    public static final i g;
    public static final i h;
    private static final i i[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/squareup/javawriter/JavaWriter$Scope, s);
    }

    public static [] values()
    {
        return ([])i.clone();
    }

    static 
    {
        a = new <init>("TYPE_DECLARATION", 0);
        b = new <init>("ABSTRACT_METHOD", 1);
        c = new <init>("NON_ABSTRACT_METHOD", 2);
        d = new <init>("CONSTRUCTOR", 3);
        e = new <init>("CONTROL_FLOW", 4);
        f = new <init>("ANNOTATION_ATTRIBUTE", 5);
        g = new <init>("ANNOTATION_ARRAY_VALUE", 6);
        h = new <init>("INITIALIZER", 7);
        e_3B_.clone aclone[] = new <init>[8];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        aclone[5] = f;
        aclone[6] = g;
        aclone[7] = h;
        i = aclone;
    }

    private (String s, int j)
    {
        super(s, j);
    }
}
