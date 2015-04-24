// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;


// Referenced classes of package javax.validation:
//            ConstraintValidatorFactory, Validator, MessageInterpolator, ParameterNameProvider, 
//            TraversableResolver

public interface ValidatorContext
{

    public abstract ValidatorContext constraintValidatorFactory(ConstraintValidatorFactory constraintvalidatorfactory);

    public abstract Validator getValidator();

    public abstract ValidatorContext messageInterpolator(MessageInterpolator messageinterpolator);

    public abstract ValidatorContext parameterNameProvider(ParameterNameProvider parameternameprovider);

    public abstract ValidatorContext traversableResolver(TraversableResolver traversableresolver);
}
