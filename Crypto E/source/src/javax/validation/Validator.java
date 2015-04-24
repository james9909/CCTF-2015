// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation;

import java.util.Set;
import javax.validation.executable.ExecutableValidator;
import javax.validation.metadata.BeanDescriptor;

public interface Validator
{

    public abstract ExecutableValidator forExecutables();

    public abstract BeanDescriptor getConstraintsForClass(Class class1);

    public abstract Object unwrap(Class class1);

    public transient abstract Set validate(Object obj, Class aclass[]);

    public transient abstract Set validateProperty(Object obj, String s, Class aclass[]);

    public transient abstract Set validateValue(Class class1, String s, Object obj, Class aclass[]);
}
