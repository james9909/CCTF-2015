// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.event;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.lang3.Validate;

public class EventListenerSupport
    implements Serializable
{
    public class ProxyInvocationHandler
        implements InvocationHandler
    {

        final EventListenerSupport this$0;

        public Object invoke(Object obj, Method method, Object aobj[])
        {
            for (Iterator iterator = listeners.iterator(); iterator.hasNext(); method.invoke(iterator.next(), aobj)) { }
            return null;
        }

        protected ProxyInvocationHandler()
        {
            this$0 = EventListenerSupport.this;
            super();
        }
    }


    private static final long serialVersionUID = 0x31ddd8615c1ecd20L;
    private List listeners;
    private transient Object prototypeArray[];
    private transient Object proxy;

    private EventListenerSupport()
    {
        listeners = new CopyOnWriteArrayList();
    }

    public EventListenerSupport(Class class1)
    {
        this(class1, Thread.currentThread().getContextClassLoader());
    }

    public EventListenerSupport(Class class1, ClassLoader classloader)
    {
        this();
        Validate.notNull(class1, "Listener interface cannot be null.", new Object[0]);
        Validate.notNull(classloader, "ClassLoader cannot be null.", new Object[0]);
        boolean flag = class1.isInterface();
        Object aobj[] = new Object[1];
        aobj[0] = class1.getName();
        Validate.isTrue(flag, "Class {0} is not an interface", aobj);
        initializeTransientFields(class1, classloader);
    }

    public static EventListenerSupport create(Class class1)
    {
        return new EventListenerSupport(class1);
    }

    private void createProxy(Class class1, ClassLoader classloader)
    {
        proxy = class1.cast(Proxy.newProxyInstance(classloader, new Class[] {
            class1
        }, createInvocationHandler()));
    }

    private void initializeTransientFields(Class class1, ClassLoader classloader)
    {
        prototypeArray = (Object[])(Object[])Array.newInstance(class1, 0);
        createProxy(class1, classloader);
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        Object aobj[] = (Object[])(Object[])objectinputstream.readObject();
        listeners = new CopyOnWriteArrayList(aobj);
        initializeTransientFields(((Object) (aobj)).getClass().getComponentType(), Thread.currentThread().getContextClassLoader());
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
    {
        ArrayList arraylist = new ArrayList();
        ObjectOutputStream objectoutputstream1 = new ObjectOutputStream(new ByteArrayOutputStream());
        for (Iterator iterator = listeners.iterator(); iterator.hasNext();)
        {
            Object obj = iterator.next();
            try
            {
                objectoutputstream1.writeObject(obj);
                arraylist.add(obj);
            }
            catch (IOException ioexception)
            {
                objectoutputstream1 = new ObjectOutputStream(new ByteArrayOutputStream());
            }
        }

        objectoutputstream.writeObject(((Object) (arraylist.toArray(prototypeArray))));
    }

    public void addListener(Object obj)
    {
        Validate.notNull(obj, "Listener object cannot be null.", new Object[0]);
        listeners.add(obj);
    }

    protected InvocationHandler createInvocationHandler()
    {
        return new ProxyInvocationHandler();
    }

    public Object fire()
    {
        return proxy;
    }

    int getListenerCount()
    {
        return listeners.size();
    }

    public Object[] getListeners()
    {
        return listeners.toArray(prototypeArray);
    }

    public void removeListener(Object obj)
    {
        Validate.notNull(obj, "Listener object cannot be null.", new Object[0]);
        listeners.remove(obj);
    }

}
