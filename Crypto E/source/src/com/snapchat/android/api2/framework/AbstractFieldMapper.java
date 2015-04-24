// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.google.gson.annotations.SerializedName;
import com.snapchat.android.util.PrimitiveUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Map;
import java.util.TreeMap;

public abstract class AbstractFieldMapper
{

    private final Class mClazz;

    public AbstractFieldMapper(Class class1)
    {
        mClazz = class1;
    }

    protected Object a(Object obj, Field field)
    {
        Object obj1;
        try
        {
            obj1 = field.get(obj);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException(illegalaccessexception);
        }
        return obj1;
    }

    protected String a(Field field)
    {
        SerializedName serializedname = (SerializedName)field.getAnnotation(com/google/gson/annotations/SerializedName);
        if (serializedname != null)
        {
            return serializedname.value();
        } else
        {
            return field.getName();
        }
    }

    protected Map a(Object obj)
    {
        return a(obj, obj.getClass());
    }

    protected Map a(Object obj, Class class1)
    {
        Object obj1;
        Field field;
        Class class2 = class1.getSuperclass();
        Field afield[];
        int i;
        int j;
        if (class2 == null)
        {
            obj1 = new TreeMap();
        } else
        {
            obj1 = a(class2.cast(obj), class2);
        }
        afield = class1.getDeclaredFields();
        i = afield.length;
        j = 0;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        field = afield[j];
        if (mClazz.isAssignableFrom(PrimitiveUtils.b(field.getType())) && !Modifier.isTransient(field.getModifiers()) && !field.isSynthetic())
        {
            field.setAccessible(true);
            Object obj2 = a(obj, field);
            if (obj2 != null)
            {
                ((Map) (obj1)).put(a(field), b(obj2));
            }
        }
        j++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_32;
_L1:
        return ((Map) (obj1));
    }

    protected abstract Object b(Object obj);
}
