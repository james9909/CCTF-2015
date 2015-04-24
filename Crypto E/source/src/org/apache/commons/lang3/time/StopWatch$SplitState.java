// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.time;


// Referenced classes of package org.apache.commons.lang3.time:
//            StopWatch

static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES SPLIT;
    public static final .VALUES UNSPLIT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/apache/commons/lang3/time/StopWatch$SplitState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        SPLIT = new <init>("SPLIT", 0);
        UNSPLIT = new <init>("UNSPLIT", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = SPLIT;
        aclone[1] = UNSPLIT;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
