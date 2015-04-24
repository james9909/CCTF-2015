// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.reflect.Field;

public abstract class e
    implements SafeParcelable
{

    private static final Object TP = new Object();
    private static ClassLoader TQ = null;
    private static Integer TR = null;
    private boolean TS;

    public e()
    {
        TS = false;
    }

    private static boolean a(Class class1)
    {
        boolean flag;
        try
        {
            flag = "SAFE_PARCELABLE_NULL_STRING".equals(class1.getField("NULL").get(null));
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            return false;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            return false;
        }
        return flag;
    }

    protected static boolean bd(String s)
    {
        ClassLoader classloader = jC();
        if (classloader == null)
        {
            return true;
        }
        boolean flag;
        try
        {
            flag = a(classloader.loadClass(s));
        }
        catch (Exception exception)
        {
            return false;
        }
        return flag;
    }

    protected static ClassLoader jC()
    {
        ClassLoader classloader;
        synchronized (TP)
        {
            classloader = TQ;
        }
        return classloader;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected static Integer jD()
    {
        Integer integer;
        synchronized (TP)
        {
            integer = TR;
        }
        return integer;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected boolean jE()
    {
        return TS;
    }

}
