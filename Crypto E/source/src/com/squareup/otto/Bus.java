// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.squareup.otto;

import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArraySet;

// Referenced classes of package com.squareup.otto:
//            HandlerFinder, ThreadEnforcer, EventProducer, EventHandler, 
//            DeadEvent

public class Bus
{
    static class EventWithHandler
    {

        final Object a;
        final EventHandler b;

        public EventWithHandler(Object obj, EventHandler eventhandler)
        {
            a = obj;
            b = eventhandler;
        }
    }


    public static final String b = "default";
    private final ConcurrentMap a;
    private final ConcurrentMap c;
    private final String d;
    private final ThreadEnforcer e;
    private final HandlerFinder f;
    private final ThreadLocal g;
    private final ThreadLocal h;
    private final Map i;

    public Bus()
    {
        this("default");
    }

    public Bus(ThreadEnforcer threadenforcer)
    {
        this(threadenforcer, "default");
    }

    public Bus(ThreadEnforcer threadenforcer, String s)
    {
        this(threadenforcer, s, HandlerFinder.a);
    }

    Bus(ThreadEnforcer threadenforcer, String s, HandlerFinder handlerfinder)
    {
        a = new ConcurrentHashMap();
        c = new ConcurrentHashMap();
        g = new ThreadLocal() {

            final Bus a;

            protected ConcurrentLinkedQueue a()
            {
                return new ConcurrentLinkedQueue();
            }

            protected Object initialValue()
            {
                return a();
            }

            
            {
                a = Bus.this;
                super();
            }
        };
        h = new ThreadLocal() {

            final Bus a;

            protected Boolean a()
            {
                return Boolean.valueOf(false);
            }

            protected Object initialValue()
            {
                return a();
            }

            
            {
                a = Bus.this;
                super();
            }
        };
        i = new HashMap();
        e = threadenforcer;
        d = s;
        f = handlerfinder;
    }

    public Bus(String s)
    {
        this(ThreadEnforcer.b, s);
    }

    private void a(EventHandler eventhandler, EventProducer eventproducer)
    {
        Object obj1 = eventproducer.c();
        Object obj = obj1;
_L1:
        InvocationTargetException invocationtargetexception;
        if (obj == null)
        {
            return;
        } else
        {
            b(obj, eventhandler);
            return;
        }
        invocationtargetexception;
        a((new StringBuilder()).append("Producer ").append(eventproducer).append(" threw an exception.").toString(), invocationtargetexception);
        obj = null;
          goto _L1
    }

    private static void a(String s, InvocationTargetException invocationtargetexception)
    {
        Throwable throwable = invocationtargetexception.getCause();
        if (throwable != null)
        {
            throw new RuntimeException((new StringBuilder()).append(s).append(": ").append(throwable.getMessage()).toString(), throwable);
        } else
        {
            throw new RuntimeException((new StringBuilder()).append(s).append(": ").append(invocationtargetexception.getMessage()).toString(), invocationtargetexception);
        }
    }

    private Set d(Class class1)
    {
        LinkedList linkedlist = new LinkedList();
        HashSet hashset = new HashSet();
        linkedlist.add(class1);
        do
        {
            if (linkedlist.isEmpty())
            {
                break;
            }
            Class class2 = (Class)linkedlist.remove(0);
            hashset.add(class2);
            Class class3 = class2.getSuperclass();
            if (class3 != null)
            {
                linkedlist.add(class3);
            }
        } while (true);
        return hashset;
    }

    EventProducer a(Class class1)
    {
        return (EventProducer)c.get(class1);
    }

    protected void a()
    {
        if (((Boolean)h.get()).booleanValue())
        {
            return;
        }
        h.set(Boolean.valueOf(true));
_L2:
        EventWithHandler eventwithhandler = (EventWithHandler)((ConcurrentLinkedQueue)g.get()).poll();
        if (eventwithhandler == null)
        {
            h.set(Boolean.valueOf(false));
            return;
        }
        if (!eventwithhandler.b.a()) goto _L2; else goto _L1
_L1:
        b(eventwithhandler.a, eventwithhandler.b);
          goto _L2
        Exception exception;
        exception;
        h.set(Boolean.valueOf(false));
        throw exception;
    }

    public void a(Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("Event to post must not be null.");
        }
        e.a(this);
        Iterator iterator = c(obj.getClass()).iterator();
        boolean flag = false;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Set set = b((Class)iterator.next());
            if (set != null && !set.isEmpty())
            {
                flag = true;
                Iterator iterator1 = set.iterator();
                while (iterator1.hasNext()) 
                {
                    a(obj, (EventHandler)iterator1.next());
                }
            }
        } while (true);
        if (!flag && !(obj instanceof DeadEvent))
        {
            a(new DeadEvent(this, obj));
        }
        a();
    }

    protected void a(Object obj, EventHandler eventhandler)
    {
        ((ConcurrentLinkedQueue)g.get()).offer(new EventWithHandler(obj, eventhandler));
    }

    Set b(Class class1)
    {
        return (Set)a.get(class1);
    }

    public void b(Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("Object to unregister must not be null.");
        }
        e.a(this);
        Class class1;
        for (Iterator iterator = f.a(obj).entrySet().iterator(); iterator.hasNext(); ((EventProducer)c.remove(class1)).b())
        {
            java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator.next();
            class1 = (Class)entry1.getKey();
            EventProducer eventproducer = a(class1);
            EventProducer eventproducer1 = (EventProducer)entry1.getValue();
            if (eventproducer1 == null || !eventproducer1.equals(eventproducer))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Missing event producer for an annotated method. Is ").append(obj.getClass()).append(" registered?").toString());
            }
        }

        Set set;
        Collection collection;
label0:
        for (Iterator iterator1 = f.b(obj).entrySet().iterator(); iterator1.hasNext(); set.removeAll(collection))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
            set = b((Class)entry.getKey());
            collection = (Collection)entry.getValue();
            if (set == null || !set.containsAll(collection))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Missing event handler for an annotated method. Is ").append(obj.getClass()).append(" registered?").toString());
            }
            Iterator iterator2 = set.iterator();
            do
            {
                if (!iterator2.hasNext())
                {
                    continue label0;
                }
                EventHandler eventhandler = (EventHandler)iterator2.next();
                if (collection.contains(eventhandler))
                {
                    eventhandler.b();
                }
            } while (true);
        }

    }

    protected void b(Object obj, EventHandler eventhandler)
    {
        try
        {
            eventhandler.a(obj);
            return;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            a((new StringBuilder()).append("Could not dispatch event: ").append(obj.getClass()).append(" to handler ").append(eventhandler).toString(), invocationtargetexception);
        }
    }

    Set c(Class class1)
    {
        Set set = (Set)i.get(class1);
        if (set == null)
        {
            set = d(class1);
            i.put(class1, set);
        }
        return set;
    }

    public void c(Object obj)
    {
        Iterator iterator2;
        if (obj == null)
        {
            throw new NullPointerException("Object to register must not be null.");
        }
        e.a(this);
        Map map = f.a(obj);
        Iterator iterator = map.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Class class3 = (Class)iterator.next();
            EventProducer eventproducer1 = (EventProducer)map.get(class3);
            EventProducer eventproducer2 = (EventProducer)c.putIfAbsent(class3, eventproducer1);
            if (eventproducer2 != null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Producer method for type ").append(class3).append(" found on type ").append(eventproducer1.a.getClass()).append(", but already registered by type ").append(eventproducer2.a.getClass()).append(".").toString());
            }
            Set set = (Set)a.get(class3);
            if (set != null && !set.isEmpty())
            {
                Iterator iterator4 = set.iterator();
                while (iterator4.hasNext()) 
                {
                    a((EventHandler)iterator4.next(), eventproducer1);
                }
            }
        } while (true);
        Map map1 = f.b(obj);
        Class class2;
        Object obj1;
        for (Iterator iterator1 = map1.keySet().iterator(); iterator1.hasNext(); ((Set) (obj1)).addAll((Set)map1.get(class2)))
        {
            class2 = (Class)iterator1.next();
            obj1 = (Set)a.get(class2);
            if (obj1 != null)
            {
                continue;
            }
            CopyOnWriteArraySet copyonwritearrayset = new CopyOnWriteArraySet();
            obj1 = (Set)a.putIfAbsent(class2, copyonwritearrayset);
            if (obj1 == null)
            {
                obj1 = copyonwritearrayset;
            }
        }

        iterator2 = map1.entrySet().iterator();
_L2:
        EventProducer eventproducer;
        Iterator iterator3;
        java.util.Map.Entry entry;
        do
        {
            if (!iterator2.hasNext())
            {
                break MISSING_BLOCK_LABEL_513;
            }
            entry = (java.util.Map.Entry)iterator2.next();
            Class class1 = (Class)entry.getKey();
            eventproducer = (EventProducer)c.get(class1);
        } while (eventproducer == null || !eventproducer.a());
        iterator3 = ((Set)entry.getValue()).iterator();
_L4:
        if (!iterator3.hasNext()) goto _L2; else goto _L1
_L1:
        EventHandler eventhandler = (EventHandler)iterator3.next();
        if (!eventproducer.a()) goto _L2; else goto _L3
_L3:
        if (eventhandler.a())
        {
            a(eventhandler, eventproducer);
        }
          goto _L4
    }

    public String toString()
    {
        return (new StringBuilder()).append("[Bus \"").append(d).append("\"]").toString();
    }
}
