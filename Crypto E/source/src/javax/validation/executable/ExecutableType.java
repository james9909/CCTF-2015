// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation.executable;


public final class ExecutableType extends Enum
{

    private static final ExecutableType $VALUES[];
    public static final ExecutableType ALL;
    public static final ExecutableType CONSTRUCTORS;
    public static final ExecutableType GETTER_METHODS;
    public static final ExecutableType IMPLICIT;
    public static final ExecutableType NONE;
    public static final ExecutableType NON_GETTER_METHODS;

    private ExecutableType(String s, int i)
    {
        super(s, i);
    }

    public static ExecutableType valueOf(String s)
    {
        return (ExecutableType)Enum.valueOf(javax/validation/executable/ExecutableType, s);
    }

    public static ExecutableType[] values()
    {
        return (ExecutableType[])$VALUES.clone();
    }

    static 
    {
        IMPLICIT = new ExecutableType("IMPLICIT", 0);
        NONE = new ExecutableType("NONE", 1);
        CONSTRUCTORS = new ExecutableType("CONSTRUCTORS", 2);
        NON_GETTER_METHODS = new ExecutableType("NON_GETTER_METHODS", 3);
        GETTER_METHODS = new ExecutableType("GETTER_METHODS", 4);
        ALL = new ExecutableType("ALL", 5);
        ExecutableType aexecutabletype[] = new ExecutableType[6];
        aexecutabletype[0] = IMPLICIT;
        aexecutabletype[1] = NONE;
        aexecutabletype[2] = CONSTRUCTORS;
        aexecutabletype[3] = NON_GETTER_METHODS;
        aexecutabletype[4] = GETTER_METHODS;
        aexecutabletype[5] = ALL;
        $VALUES = aexecutabletype;
    }
}
