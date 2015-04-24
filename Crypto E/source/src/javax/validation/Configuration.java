// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;

import java.io.InputStream;

// Referenced classes of package javax.validation:
//            ValidatorFactory, ConstraintValidatorFactory, BootstrapConfiguration, MessageInterpolator, 
//            ParameterNameProvider, TraversableResolver

public interface Configuration
{

    public abstract Configuration addMapping(InputStream inputstream);

    public abstract Configuration addProperty(String s, String s1);

    public abstract ValidatorFactory buildValidatorFactory();

    public abstract Configuration constraintValidatorFactory(ConstraintValidatorFactory constraintvalidatorfactory);

    public abstract BootstrapConfiguration getBootstrapConfiguration();

    public abstract ConstraintValidatorFactory getDefaultConstraintValidatorFactory();

    public abstract MessageInterpolator getDefaultMessageInterpolator();

    public abstract ParameterNameProvider getDefaultParameterNameProvider();

    public abstract TraversableResolver getDefaultTraversableResolver();

    public abstract Configuration ignoreXmlConfiguration();

    public abstract Configuration messageInterpolator(MessageInterpolator messageinterpolator);

    public abstract Configuration parameterNameProvider(ParameterNameProvider parameternameprovider);

    public abstract Configuration traversableResolver(TraversableResolver traversableresolver);
}
