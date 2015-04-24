// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;

import java.util.List;
import javax.validation.bootstrap.GenericBootstrap;
import javax.validation.spi.BootstrapState;
import javax.validation.spi.ValidationProvider;

// Referenced classes of package javax.validation:
//            ValidationException, ValidationProviderResolver, Validation, Configuration

static class <init>
    implements GenericBootstrap, BootstrapState
{

    private ValidationProviderResolver defaultResolver;
    private ValidationProviderResolver resolver;

    public Configuration configure()
    {
        ValidationProviderResolver validationproviderresolver;
        List list;
        if (resolver == null)
        {
            validationproviderresolver = getDefaultValidationProviderResolver();
        } else
        {
            validationproviderresolver = resolver;
        }
        try
        {
            list = validationproviderresolver.getValidationProviders();
        }
        catch (ValidationException validationexception)
        {
            throw validationexception;
        }
        catch (RuntimeException runtimeexception)
        {
            throw new ValidationException("Unable to get available provider resolvers.", runtimeexception);
        }
        if (list.size() == 0)
        {
            throw new ValidationException("Unable to create a Configuration, because no Bean Validation provider could be found. Add a provider like Hibernate Validator (RI) to your classpath.");
        }
        Configuration configuration;
        try
        {
            configuration = ((ValidationProvider)validationproviderresolver.getValidationProviders().get(0)).createGenericConfiguration(this);
        }
        catch (RuntimeException runtimeexception1)
        {
            throw new ValidationException("Unable to instantiate Configuration.", runtimeexception1);
        }
        return configuration;
    }

    public ValidationProviderResolver getDefaultValidationProviderResolver()
    {
        if (defaultResolver == null)
        {
            defaultResolver = new iderResolver(null);
        }
        return defaultResolver;
    }

    public ValidationProviderResolver getValidationProviderResolver()
    {
        return resolver;
    }

    public GenericBootstrap providerResolver(ValidationProviderResolver validationproviderresolver)
    {
        resolver = validationproviderresolver;
        return this;
    }

    private iderResolver()
    {
    }

    iderResolver(iderResolver iderresolver)
    {
        this();
    }
}
