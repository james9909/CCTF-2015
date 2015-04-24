// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.otto;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class EventHandler
{

    private final Object a;
    private final Method b;
    private final int c;
    private boolean d;

    EventHandler(Object obj, Method method)
    {
        d = true;
        if (obj == null)
        {
            throw new NullPointerException("EventHandler target cannot be null.");
        }
        if (method == null)
        {
            throw new NullPointerException("EventHandler method cannot be null.");
        } else
        {
            a = obj;
            b = method;
            method.setAccessible(true);
            c = 31 * (31 + method.hashCode()) + obj.hashCode();
            return;
        }
    }

    public void a(Object obj)
    {
        if (!d)
        {
            throw new IllegalStateException((new StringBuilder()).append(toString()).append(" has been invalidated and can no longer handle events.").toString());
        }
        try
        {
            b.invoke(a, new Object[] {
                obj
            });
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new AssertionError(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            if (invocationtargetexception.getCause() instanceof Error)
            {
                throw (Error)invocationtargetexception.getCause();
            } else
            {
                throw invocationtargetexception;
            }
        }
    }

    public boolean a()
    {
        return d;
    }

    public void b()
    {
        d = false;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            EventHandler eventhandler = (EventHandler)obj;
            if (!b.equals(eventhandler.b) || a != eventhandler.a)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return c;
    }

    public String toString()
    {
        return (new StringBuilder()).append("[EventHandler ").append(b).append("]").toString();
    }
}
