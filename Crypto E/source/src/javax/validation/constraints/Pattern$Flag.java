// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation.constraints;


// Referenced classes of package javax.validation.constraints:
//            Pattern

public static final class value extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CANON_EQ;
    public static final .VALUES CASE_INSENSITIVE;
    public static final .VALUES COMMENTS;
    public static final .VALUES DOTALL;
    public static final .VALUES MULTILINE;
    public static final .VALUES UNICODE_CASE;
    public static final .VALUES UNIX_LINES;
    private final int value;

    public static value valueOf(String s)
    {
        return (value)Enum.valueOf(javax/validation/constraints/Pattern$Flag, s);
    }

    public static value[] values()
    {
        return (value[])$VALUES.clone();
    }

    public int getValue()
    {
        return value;
    }

    static 
    {
        UNIX_LINES = new <init>("UNIX_LINES", 0, 1);
        CASE_INSENSITIVE = new <init>("CASE_INSENSITIVE", 1, 2);
        COMMENTS = new <init>("COMMENTS", 2, 4);
        MULTILINE = new <init>("MULTILINE", 3, 8);
        DOTALL = new <init>("DOTALL", 4, 32);
        UNICODE_CASE = new <init>("UNICODE_CASE", 5, 64);
        CANON_EQ = new <init>("CANON_EQ", 6, 128);
        value avalue[] = new <init>[7];
        avalue[0] = UNIX_LINES;
        avalue[1] = CASE_INSENSITIVE;
        avalue[2] = COMMENTS;
        avalue[3] = MULTILINE;
        avalue[4] = DOTALL;
        avalue[5] = UNICODE_CASE;
        avalue[6] = CANON_EQ;
        $VALUES = avalue;
    }

    private (String s, int i, int j)
    {
        super(s, i);
        value = j;
    }
}
