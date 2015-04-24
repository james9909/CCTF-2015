// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.text.translate;


// Referenced classes of package org.apache.commons.lang3.text.translate:
//            NumericEntityUnescaper

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES errorIfNoSemiColon;
    public static final .VALUES semiColonOptional;
    public static final .VALUES semiColonRequired;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        semiColonRequired = new <init>("semiColonRequired", 0);
        semiColonOptional = new <init>("semiColonOptional", 1);
        errorIfNoSemiColon = new <init>("errorIfNoSemiColon", 2);
        N_3B_.clone aclone[] = new <init>[3];
        aclone[0] = semiColonRequired;
        aclone[1] = semiColonOptional;
        aclone[2] = errorIfNoSemiColon;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
