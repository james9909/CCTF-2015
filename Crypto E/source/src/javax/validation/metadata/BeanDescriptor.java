// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation.metadata;

import java.util.Set;

// Referenced classes of package javax.validation.metadata:
//            ElementDescriptor, MethodType, ConstructorDescriptor, MethodDescriptor, 
//            PropertyDescriptor

public interface BeanDescriptor
    extends ElementDescriptor
{

    public abstract Set getConstrainedConstructors();

    public transient abstract Set getConstrainedMethods(MethodType methodtype, MethodType amethodtype[]);

    public abstract Set getConstrainedProperties();

    public transient abstract ConstructorDescriptor getConstraintsForConstructor(Class aclass[]);

    public transient abstract MethodDescriptor getConstraintsForMethod(String s, Class aclass[]);

    public abstract PropertyDescriptor getConstraintsForProperty(String s);

    public abstract boolean isBeanConstrained();
}
