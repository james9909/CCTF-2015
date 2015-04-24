// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;


public final class ConstraintTarget extends Enum
{

    private static final ConstraintTarget $VALUES[];
    public static final ConstraintTarget IMPLICIT;
    public static final ConstraintTarget PARAMETERS;
    public static final ConstraintTarget RETURN_VALUE;

    private ConstraintTarget(String s, int i)
    {
        super(s, i);
    }

    public static ConstraintTarget valueOf(String s)
    {
        return (ConstraintTarget)Enum.valueOf(javax/validation/ConstraintTarget, s);
    }

    public static ConstraintTarget[] values()
    {
        return (ConstraintTarget[])$VALUES.clone();
    }

    static 
    {
        IMPLICIT = new ConstraintTarget("IMPLICIT", 0);
        RETURN_VALUE = new ConstraintTarget("RETURN_VALUE", 1);
        PARAMETERS = new ConstraintTarget("PARAMETERS", 2);
        ConstraintTarget aconstrainttarget[] = new ConstraintTarget[3];
        aconstrainttarget[0] = IMPLICIT;
        aconstrainttarget[1] = RETURN_VALUE;
        aconstrainttarget[2] = PARAMETERS;
        $VALUES = aconstrainttarget;
    }
}
