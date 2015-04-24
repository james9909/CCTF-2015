// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation.metadata;


public final class MethodType extends Enum
{

    private static final MethodType $VALUES[];
    public static final MethodType GETTER;
    public static final MethodType NON_GETTER;

    private MethodType(String s, int i)
    {
        super(s, i);
    }

    public static MethodType valueOf(String s)
    {
        return (MethodType)Enum.valueOf(javax/validation/metadata/MethodType, s);
    }

    public static MethodType[] values()
    {
        return (MethodType[])$VALUES.clone();
    }

    static 
    {
        GETTER = new MethodType("GETTER", 0);
        NON_GETTER = new MethodType("NON_GETTER", 1);
        MethodType amethodtype[] = new MethodType[2];
        amethodtype[0] = GETTER;
        amethodtype[1] = NON_GETTER;
        $VALUES = amethodtype;
    }
}
