// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;


// Referenced classes of package org.apache.commons.lang3:
//            ClassUtils

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES EXCLUDE;
    public static final .VALUES INCLUDE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/apache/commons/lang3/ClassUtils$Interfaces, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        INCLUDE = new <init>("INCLUDE", 0);
        EXCLUDE = new <init>("EXCLUDE", 1);
        s_3B_.clone aclone[] = new <init>[2];
        aclone[0] = INCLUDE;
        aclone[1] = EXCLUDE;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
