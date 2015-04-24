// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;

import java.lang.ref.SoftReference;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.WeakHashMap;
import javax.validation.bootstrap.GenericBootstrap;
import javax.validation.bootstrap.ProviderSpecificBootstrap;
import javax.validation.spi.BootstrapState;
import javax.validation.spi.ValidationProvider;

// Referenced classes of package javax.validation:
//            Configuration, ValidatorFactory, ValidationProviderResolver, ValidationException

public class Validation
{
    static class DefaultValidationProviderResolver
        implements ValidationProviderResolver
    {

        public List getValidationProviders()
        {
            return GetValidationProviderListAction.getValidationProviderList();
        }

        private DefaultValidationProviderResolver()
        {
        }

    }

    static class GenericBootstrapImpl
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
                defaultResolver = new DefaultValidationProviderResolver();
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

        private GenericBootstrapImpl()
        {
        }

    }

    static class GetValidationProviderListAction
        implements PrivilegedAction
    {

        private static final WeakHashMap providersPerClassloader = new WeakHashMap();

        private void cacheValidationProviders(ClassLoader classloader, List list)
        {
            this;
            JVM INSTR monitorenter ;
            providersPerClassloader.put(classloader, new SoftReference(list));
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        private List getCachedValidationProviders(ClassLoader classloader)
        {
            this;
            JVM INSTR monitorenter ;
            SoftReference softreference = (SoftReference)providersPerClassloader.get(classloader);
            if (softreference == null) goto _L2; else goto _L1
_L1:
            List list = (List)softreference.get();
_L4:
            this;
            JVM INSTR monitorexit ;
            return list;
_L2:
            list = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            throw exception;
        }

        public static List getValidationProviderList()
        {
            GetValidationProviderListAction getvalidationproviderlistaction = new GetValidationProviderListAction();
            if (System.getSecurityManager() != null)
            {
                return (List)AccessController.doPrivileged(getvalidationproviderlistaction);
            } else
            {
                return getvalidationproviderlistaction.run();
            }
        }

        private List loadProviders(ClassLoader classloader)
        {
            Iterator iterator = ServiceLoader.load(javax/validation/spi/ValidationProvider, classloader).iterator();
            ArrayList arraylist = new ArrayList();
            while (iterator.hasNext()) 
            {
                try
                {
                    arraylist.add(iterator.next());
                }
                catch (ServiceConfigurationError serviceconfigurationerror) { }
            }
            return arraylist;
        }

        public volatile Object run()
        {
            return run();
        }

        public List run()
        {
            ClassLoader classloader;
            List list;
            classloader = Thread.currentThread().getContextClassLoader();
            list = getCachedValidationProviders(classloader);
            if (list == null) goto _L2; else goto _L1
_L1:
            return list;
_L2:
            List list1;
            list1 = loadProviders(classloader);
            if (!list1.isEmpty())
            {
                break; /* Loop/switch isn't completed */
            }
            classloader = javax/validation/Validation$DefaultValidationProviderResolver.getClassLoader();
            list = getCachedValidationProviders(classloader);
            if (list != null)
            {
                continue; /* Loop/switch isn't completed */
            }
            list1 = loadProviders(classloader);
            break; /* Loop/switch isn't completed */
            if (true) goto _L1; else goto _L3
_L3:
            cacheValidationProviders(classloader, list1);
            return list1;
        }


        private GetValidationProviderListAction()
        {
        }
    }

    static class ProviderSpecificBootstrapImpl
        implements ProviderSpecificBootstrap
    {

        private ValidationProviderResolver resolver;
        private final Class validationProviderClass;

        public Configuration configure()
        {
            if (validationProviderClass == null)
            {
                throw new ValidationException("builder is mandatory. Use Validation.byDefaultProvider() to use the generic provider discovery mechanism");
            }
            GenericBootstrapImpl genericbootstrapimpl = new GenericBootstrapImpl();
            List list;
            Iterator iterator;
            if (resolver == null)
            {
                resolver = genericbootstrapimpl.getDefaultValidationProviderResolver();
            } else
            {
                genericbootstrapimpl.providerResolver(resolver);
            }
            try
            {
                list = resolver.getValidationProviders();
            }
            catch (RuntimeException runtimeexception)
            {
                throw new ValidationException("Unable to get available provider resolvers.", runtimeexception);
            }
            for (iterator = list.iterator(); iterator.hasNext();)
            {
                ValidationProvider validationprovider = (ValidationProvider)iterator.next();
                if (validationProviderClass.isAssignableFrom(validationprovider.getClass()))
                {
                    return ((ValidationProvider)validationProviderClass.cast(validationprovider)).createSpecializedConfiguration(genericbootstrapimpl);
                }
            }

            throw new ValidationException((new StringBuilder()).append("Unable to find provider: ").append(validationProviderClass).toString());
        }

        public ProviderSpecificBootstrap providerResolver(ValidationProviderResolver validationproviderresolver)
        {
            resolver = validationproviderresolver;
            return this;
        }

        public ProviderSpecificBootstrapImpl(Class class1)
        {
            validationProviderClass = class1;
        }
    }


    public Validation()
    {
    }

    public static ValidatorFactory buildDefaultValidatorFactory()
    {
        return byDefaultProvider().configure().buildValidatorFactory();
    }

    public static GenericBootstrap byDefaultProvider()
    {
        return new GenericBootstrapImpl();
    }

    public static ProviderSpecificBootstrap byProvider(Class class1)
    {
        return new ProviderSpecificBootstrapImpl(class1);
    }
}
