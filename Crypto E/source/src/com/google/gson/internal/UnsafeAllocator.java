// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public abstract class UnsafeAllocator
{

    public UnsafeAllocator()
    {
    }

    public static UnsafeAllocator create()
    {
        UnsafeAllocator unsafeallocator2;
        try
        {
            Class class1 = Class.forName("sun.misc.Unsafe");
            Field field = class1.getDeclaredField("theUnsafe");
            field.setAccessible(true);
            Object obj = field.get(null);
            unsafeallocator2 = new UnsafeAllocator(class1.getMethod("allocateInstance", new Class[] {
                java/lang/Class
            }), obj) {

                final Method a;
                final Object b;

                public Object newInstance(Class class2)
                {
                    return a.invoke(b, new Object[] {
                        class2
                    });
                }

            
            {
                a = method;
                b = obj;
                super();
            }
            };
        }
        catch (Exception exception)
        {
            UnsafeAllocator unsafeallocator1;
            try
            {
                Method method2 = java/io/ObjectInputStream.getDeclaredMethod("newInstance", new Class[] {
                    java/lang/Class, java/lang/Class
                });
                method2.setAccessible(true);
                unsafeallocator1 = new UnsafeAllocator(method2) {

                    final Method a;

                    public Object newInstance(Class class2)
                    {
                        return a.invoke(null, new Object[] {
                            class2, java/lang/Object
                        });
                    }

            
            {
                a = method;
                super();
            }
                };
            }
            catch (Exception exception1)
            {
                UnsafeAllocator unsafeallocator;
                try
                {
                    Method method = java/io/ObjectStreamClass.getDeclaredMethod("getConstructorId", new Class[] {
                        java/lang/Class
                    });
                    method.setAccessible(true);
                    int i = ((Integer)method.invoke(null, new Object[] {
                        java/lang/Object
                    })).intValue();
                    Class aclass[] = new Class[2];
                    aclass[0] = java/lang/Class;
                    aclass[1] = Integer.TYPE;
                    Method method1 = java/io/ObjectStreamClass.getDeclaredMethod("newInstance", aclass);
                    method1.setAccessible(true);
                    unsafeallocator = new UnsafeAllocator(method1, i) {

                        final Method a;
                        final int b;

                        public Object newInstance(Class class2)
                        {
                            Method method3 = a;
                            Object aobj[] = new Object[2];
                            aobj[0] = class2;
                            aobj[1] = Integer.valueOf(b);
                            return method3.invoke(null, aobj);
                        }

            
            {
                a = method;
                b = i;
                super();
            }
                    };
                }
                catch (Exception exception2)
                {
                    return new UnsafeAllocator() {

                        public Object newInstance(Class class2)
                        {
                            throw new UnsupportedOperationException((new StringBuilder()).append("Cannot allocate ").append(class2).toString());
                        }

                    };
                }
                return unsafeallocator;
            }
            return unsafeallocator1;
        }
        return unsafeallocator2;
    }

    public abstract Object newInstance(Class class1);
}
