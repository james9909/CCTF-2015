// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.videotranscoder.task;


// Referenced classes of package com.snapchat.videotranscoder.task:
//            Task

public static final class  extends Enum
{

    public static final h a;
    public static final h b;
    public static final h c;
    public static final h d;
    public static final h e;
    public static final h f;
    public static final h g;
    private static final h h[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/snapchat/videotranscoder/task/Task$Status, s);
    }

    public static [] values()
    {
        return ([])h.clone();
    }

    static 
    {
        a = new <init>("INVALID", 0);
        b = new <init>("CONFIGURED", 1);
        c = new <init>("CONFIG_ERROR", 2);
        d = new <init>("RUNNING", 3);
        e = new <init>("ABORTED", 4);
        f = new <init>("FAILED", 5);
        g = new <init>("FINISHED", 6);
        s_3B_.clone aclone[] = new <init>[7];
        aclone[0] = a;
        aclone[1] = b;
        aclone[2] = c;
        aclone[3] = d;
        aclone[4] = e;
        aclone[5] = f;
        aclone[6] = g;
        h = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
