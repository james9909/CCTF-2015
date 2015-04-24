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
import javax.validation.spi.ValidationProvider;

// Referenced classes of package javax.validation:
//            Validation

static class r
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
        providersPerClassloader providersperclassloader = new <init>();
        if (System.getSecurityManager() != null)
        {
            return (List)AccessController.doPrivileged(providersperclassloader);
        } else
        {
            return providersperclassloader.run();
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


    private r()
    {
    }
}
