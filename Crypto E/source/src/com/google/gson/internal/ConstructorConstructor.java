// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal;

import com.google.gson.InstanceCreator;
import com.google.gson.JsonIOException;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

// Referenced classes of package com.google.gson.internal:
//            ObjectConstructor, LinkedTreeMap, UnsafeAllocator

public final class ConstructorConstructor
{

    private final Map a;

    public ConstructorConstructor(Map map)
    {
        a = map;
    }

    private ObjectConstructor a(Class class1)
    {
        ObjectConstructor objectconstructor;
        try
        {
            Constructor constructor = class1.getDeclaredConstructor(new Class[0]);
            if (!constructor.isAccessible())
            {
                constructor.setAccessible(true);
            }
            objectconstructor = new ObjectConstructor(constructor) {

                final Constructor a;
                final ConstructorConstructor b;

                public Object construct()
                {
                    Object obj;
                    try
                    {
                        obj = a.newInstance(null);
                    }
                    catch (InstantiationException instantiationexception)
                    {
                        throw new RuntimeException((new StringBuilder()).append("Failed to invoke ").append(a).append(" with no args").toString(), instantiationexception);
                    }
                    catch (InvocationTargetException invocationtargetexception)
                    {
                        throw new RuntimeException((new StringBuilder()).append("Failed to invoke ").append(a).append(" with no args").toString(), invocationtargetexception.getTargetException());
                    }
                    catch (IllegalAccessException illegalaccessexception)
                    {
                        throw new AssertionError(illegalaccessexception);
                    }
                    return obj;
                }

            
            {
                b = ConstructorConstructor.this;
                a = constructor;
                super();
            }
            };
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return null;
        }
        return objectconstructor;
    }

    private ObjectConstructor a(Type type, Class class1)
    {
        if (java/util/Collection.isAssignableFrom(class1))
        {
            if (java/util/SortedSet.isAssignableFrom(class1))
            {
                return new ObjectConstructor() {

                    final ConstructorConstructor a;

                    public Object construct()
                    {
                        return new TreeSet();
                    }

            
            {
                a = ConstructorConstructor.this;
                super();
            }
                };
            }
            if (java/util/EnumSet.isAssignableFrom(class1))
            {
                return new ObjectConstructor(type) {

                    final Type a;
                    final ConstructorConstructor b;

                    public Object construct()
                    {
                        if (a instanceof ParameterizedType)
                        {
                            Type type1 = ((ParameterizedType)a).getActualTypeArguments()[0];
                            if (type1 instanceof Class)
                            {
                                return EnumSet.noneOf((Class)type1);
                            } else
                            {
                                throw new JsonIOException((new StringBuilder()).append("Invalid EnumSet type: ").append(a.toString()).toString());
                            }
                        } else
                        {
                            throw new JsonIOException((new StringBuilder()).append("Invalid EnumSet type: ").append(a.toString()).toString());
                        }
                    }

            
            {
                b = ConstructorConstructor.this;
                a = type;
                super();
            }
                };
            }
            if (java/util/Set.isAssignableFrom(class1))
            {
                return new ObjectConstructor() {

                    final ConstructorConstructor a;

                    public Object construct()
                    {
                        return new LinkedHashSet();
                    }

            
            {
                a = ConstructorConstructor.this;
                super();
            }
                };
            }
            if (java/util/Queue.isAssignableFrom(class1))
            {
                return new ObjectConstructor() {

                    final ConstructorConstructor a;

                    public Object construct()
                    {
                        return new LinkedList();
                    }

            
            {
                a = ConstructorConstructor.this;
                super();
            }
                };
            } else
            {
                return new ObjectConstructor() {

                    final ConstructorConstructor a;

                    public Object construct()
                    {
                        return new ArrayList();
                    }

            
            {
                a = ConstructorConstructor.this;
                super();
            }
                };
            }
        }
        if (java/util/Map.isAssignableFrom(class1))
        {
            if (java/util/SortedMap.isAssignableFrom(class1))
            {
                return new ObjectConstructor() {

                    final ConstructorConstructor a;

                    public Object construct()
                    {
                        return new TreeMap();
                    }

            
            {
                a = ConstructorConstructor.this;
                super();
            }
                };
            }
            if ((type instanceof ParameterizedType) && !java/lang/String.isAssignableFrom(TypeToken.get(((ParameterizedType)type).getActualTypeArguments()[0]).getRawType()))
            {
                return new ObjectConstructor() {

                    final ConstructorConstructor a;

                    public Object construct()
                    {
                        return new LinkedHashMap();
                    }

            
            {
                a = ConstructorConstructor.this;
                super();
            }
                };
            } else
            {
                return new ObjectConstructor() {

                    final ConstructorConstructor a;

                    public Object construct()
                    {
                        return new LinkedTreeMap();
                    }

            
            {
                a = ConstructorConstructor.this;
                super();
            }
                };
            }
        } else
        {
            return null;
        }
    }

    private ObjectConstructor b(Type type, Class class1)
    {
        return new ObjectConstructor(class1, type) {

            final Class a;
            final Type b;
            final ConstructorConstructor c;
            private final UnsafeAllocator d = UnsafeAllocator.create();

            public Object construct()
            {
                Object obj;
                try
                {
                    obj = d.newInstance(a);
                }
                catch (Exception exception)
                {
                    throw new RuntimeException((new StringBuilder()).append("Unable to invoke no-args constructor for ").append(b).append(". ").append("Register an InstanceCreator with Gson for this type may fix this problem.").toString(), exception);
                }
                return obj;
            }

            
            {
                c = ConstructorConstructor.this;
                a = class1;
                b = type;
                super();
            }
        };
    }

    public ObjectConstructor get(TypeToken typetoken)
    {
        Type type = typetoken.getType();
        Class class1 = typetoken.getRawType();
        InstanceCreator instancecreator = (InstanceCreator)a.get(type);
        ObjectConstructor objectconstructor;
        if (instancecreator != null)
        {
            objectconstructor = new ObjectConstructor(instancecreator, type) {

                final InstanceCreator a;
                final Type b;
                final ConstructorConstructor c;

                public Object construct()
                {
                    return a.createInstance(b);
                }

            
            {
                c = ConstructorConstructor.this;
                a = instancecreator;
                b = type;
                super();
            }
            };
        } else
        {
            InstanceCreator instancecreator1 = (InstanceCreator)a.get(class1);
            if (instancecreator1 != null)
            {
                return new ObjectConstructor(instancecreator1, type) {

                    final InstanceCreator a;
                    final Type b;
                    final ConstructorConstructor c;

                    public Object construct()
                    {
                        return a.createInstance(b);
                    }

            
            {
                c = ConstructorConstructor.this;
                a = instancecreator;
                b = type;
                super();
            }
                };
            }
            objectconstructor = a(class1);
            if (objectconstructor == null)
            {
                objectconstructor = a(type, class1);
                if (objectconstructor == null)
                {
                    return b(type, class1);
                }
            }
        }
        return objectconstructor;
    }

    public String toString()
    {
        return a.toString();
    }
}
