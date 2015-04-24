// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;

import java.lang.annotation.Annotation;

// Referenced classes of package javax.validation:
//            ConstraintValidatorContext

public interface ConstraintValidator
{

    public abstract void initialize(Annotation annotation);

    public abstract boolean isValid(Object obj, ConstraintValidatorContext constraintvalidatorcontext);
}
