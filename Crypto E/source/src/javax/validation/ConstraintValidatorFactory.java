// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;


// Referenced classes of package javax.validation:
//            ConstraintValidator

public interface ConstraintValidatorFactory
{

    public abstract ConstraintValidator getInstance(Class class1);

    public abstract void releaseInstance(ConstraintValidator constraintvalidator);
}
