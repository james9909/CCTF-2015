// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package javax.validation.executable;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Set;

public interface ExecutableValidator
{

    public transient abstract Set validateConstructorParameters(Constructor constructor, Object aobj[], Class aclass[]);

    public transient abstract Set validateConstructorReturnValue(Constructor constructor, Object obj, Class aclass[]);

    public transient abstract Set validateParameters(Object obj, Method method, Object aobj[], Class aclass[]);

    public transient abstract Set validateReturnValue(Object obj, Method method, Object obj1, Class aclass[]);
}
