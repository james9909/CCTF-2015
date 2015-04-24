// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation.constraintvalidation;


public final class ValidationTarget extends Enum
{

    private static final ValidationTarget $VALUES[];
    public static final ValidationTarget ANNOTATED_ELEMENT;
    public static final ValidationTarget PARAMETERS;

    private ValidationTarget(String s, int i)
    {
        super(s, i);
    }

    public static ValidationTarget valueOf(String s)
    {
        return (ValidationTarget)Enum.valueOf(javax/validation/constraintvalidation/ValidationTarget, s);
    }

    public static ValidationTarget[] values()
    {
        return (ValidationTarget[])$VALUES.clone();
    }

    static 
    {
        ANNOTATED_ELEMENT = new ValidationTarget("ANNOTATED_ELEMENT", 0);
        PARAMETERS = new ValidationTarget("PARAMETERS", 1);
        ValidationTarget avalidationtarget[] = new ValidationTarget[2];
        avalidationtarget[0] = ANNOTATED_ELEMENT;
        avalidationtarget[1] = PARAMETERS;
        $VALUES = avalidationtarget;
    }
}
