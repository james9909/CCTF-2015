// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;
import org.apache.commons.lang3.exception.CloneFailedException;
import org.apache.commons.lang3.mutable.MutableInt;
import org.apache.commons.lang3.text.StrBuilder;

// Referenced classes of package org.apache.commons.lang3:
//            Validate, ArrayUtils

public class ObjectUtils
{
    public static class Null
        implements Serializable
    {

        private static final long serialVersionUID = 0x626e04ed40667ec5L;

        private Object readResolve()
        {
            return ObjectUtils.NULL;
        }

        Null()
        {
        }
    }


    public static final Null NULL = new Null();

    public ObjectUtils()
    {
    }

    public static byte CONST(byte byte0)
    {
        return byte0;
    }

    public static char CONST(char c)
    {
        return c;
    }

    public static double CONST(double d)
    {
        return d;
    }

    public static float CONST(float f)
    {
        return f;
    }

    public static int CONST(int i)
    {
        return i;
    }

    public static long CONST(long l)
    {
        return l;
    }

    public static Object CONST(Object obj)
    {
        return obj;
    }

    public static short CONST(short word0)
    {
        return word0;
    }

    public static boolean CONST(boolean flag)
    {
        return flag;
    }

    public static byte CONST_BYTE(int i)
    {
        if (i < -128 || i > 127)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Supplied value must be a valid byte literal between -128 and 127: [").append(i).append("]").toString());
        } else
        {
            return (byte)i;
        }
    }

    public static short CONST_SHORT(int i)
    {
        if (i < -32768 || i > 32767)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Supplied value must be a valid byte literal between -32768 and 32767: [").append(i).append("]").toString());
        } else
        {
            return (short)i;
        }
    }

    public static Object clone(Object obj)
    {
        if (!(obj instanceof Cloneable))
        {
            break MISSING_BLOCK_LABEL_234;
        }
        if (!obj.getClass().isArray()) goto _L2; else goto _L1
_L1:
        Class class1 = obj.getClass().getComponentType();
        if (class1.isPrimitive()) goto _L4; else goto _L3
_L3:
        Object obj2 = ((Object []) ((Object[])(Object[])obj)).clone();
_L5:
        return obj2;
_L4:
        int i = Array.getLength(obj);
        obj2 = Array.newInstance(class1, i);
        do
        {
            int j = i - 1;
            if (i <= 0)
            {
                break;
            }
            Array.set(obj2, j, Array.get(obj, j));
            i = j;
        } while (true);
        if (true) goto _L5; else goto _L2
_L2:
        Object obj1;
        try
        {
            obj1 = obj.getClass().getMethod("clone", new Class[0]).invoke(obj, new Object[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            throw new CloneFailedException((new StringBuilder()).append("Cloneable type ").append(obj.getClass().getName()).append(" has no clone method").toString(), nosuchmethodexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new CloneFailedException((new StringBuilder()).append("Cannot clone Cloneable type ").append(obj.getClass().getName()).toString(), illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            throw new CloneFailedException((new StringBuilder()).append("Exception cloning Cloneable type ").append(obj.getClass().getName()).toString(), invocationtargetexception.getCause());
        }
        return obj1;
        return null;
    }

    public static Object cloneIfPossible(Object obj)
    {
        Object obj1 = clone(obj);
        if (obj1 == null)
        {
            return obj;
        } else
        {
            return obj1;
        }
    }

    public static int compare(Comparable comparable, Comparable comparable1)
    {
        return compare(comparable, comparable1, false);
    }

    public static int compare(Comparable comparable, Comparable comparable1, boolean flag)
    {
        int i = 1;
        int j = -1;
        if (comparable == comparable1)
        {
            i = 0;
        } else
        if (comparable == null)
        {
            if (!flag)
            {
                return j;
            }
        } else
        if (comparable1 == null)
        {
            if (!flag)
            {
                j = i;
            }
            return j;
        } else
        {
            return comparable.compareTo(comparable1);
        }
        return i;
    }

    public static Object defaultIfNull(Object obj, Object obj1)
    {
        if (obj != null)
        {
            return obj;
        } else
        {
            return obj1;
        }
    }

    public static boolean equals(Object obj, Object obj1)
    {
        if (obj == obj1)
        {
            return true;
        }
        if (obj == null || obj1 == null)
        {
            return false;
        } else
        {
            return obj.equals(obj1);
        }
    }

    public static transient Object firstNonNull(Object aobj[])
    {
        if (aobj != null)
        {
            int i = aobj.length;
            for (int j = 0; j < i; j++)
            {
                Object obj = aobj[j];
                if (obj != null)
                {
                    return obj;
                }
            }

        }
        return null;
    }

    public static int hashCode(Object obj)
    {
        if (obj == null)
        {
            return 0;
        } else
        {
            return obj.hashCode();
        }
    }

    public static transient int hashCodeMulti(Object aobj[])
    {
        int i = 1;
        if (aobj != null)
        {
            int j = aobj.length;
            for (int k = 0; k < j;)
            {
                int l = hashCode(aobj[k]) + i * 31;
                k++;
                i = l;
            }

        }
        return i;
    }

    public static String identityToString(Object obj)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            StringBuilder stringbuilder = new StringBuilder();
            identityToString(stringbuilder, obj);
            return stringbuilder.toString();
        }
    }

    public static void identityToString(Appendable appendable, Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("Cannot get the toString of a null identity");
        } else
        {
            appendable.append(obj.getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(obj)));
            return;
        }
    }

    public static void identityToString(StringBuffer stringbuffer, Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("Cannot get the toString of a null identity");
        } else
        {
            stringbuffer.append(obj.getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(obj)));
            return;
        }
    }

    public static void identityToString(StringBuilder stringbuilder, Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("Cannot get the toString of a null identity");
        } else
        {
            stringbuilder.append(obj.getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(obj)));
            return;
        }
    }

    public static void identityToString(StrBuilder strbuilder, Object obj)
    {
        if (obj == null)
        {
            throw new NullPointerException("Cannot get the toString of a null identity");
        } else
        {
            strbuilder.append(obj.getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(obj)));
            return;
        }
    }

    public static transient Comparable max(Comparable acomparable[])
    {
        Comparable comparable = null;
        if (acomparable != null)
        {
            int i = acomparable.length;
            int j = 0;
            while (j < i) 
            {
                Comparable comparable1 = acomparable[j];
                if (compare(comparable1, comparable, false) <= 0)
                {
                    comparable1 = comparable;
                }
                j++;
                comparable = comparable1;
            }
        }
        return comparable;
    }

    public static transient Comparable median(Comparable acomparable[])
    {
        Validate.notEmpty(acomparable);
        Validate.noNullElements(acomparable);
        TreeSet treeset = new TreeSet();
        Collections.addAll(treeset, acomparable);
        return (Comparable)treeset.toArray()[(-1 + treeset.size()) / 2];
    }

    public static transient Object median(Comparator comparator, Object aobj[])
    {
        Validate.notEmpty(aobj, "null/empty items", new Object[0]);
        Validate.noNullElements(aobj);
        Validate.notNull(comparator, "null comparator", new Object[0]);
        TreeSet treeset = new TreeSet(comparator);
        Collections.addAll(treeset, aobj);
        return treeset.toArray()[(-1 + treeset.size()) / 2];
    }

    public static transient Comparable min(Comparable acomparable[])
    {
        Comparable comparable = null;
        if (acomparable != null)
        {
            int i = acomparable.length;
            int j = 0;
            while (j < i) 
            {
                Comparable comparable1 = acomparable[j];
                if (compare(comparable1, comparable, true) >= 0)
                {
                    comparable1 = comparable;
                }
                j++;
                comparable = comparable1;
            }
        }
        return comparable;
    }

    public static transient Object mode(Object aobj[])
    {
        int i = 0;
        if (ArrayUtils.isNotEmpty(aobj))
        {
            HashMap hashmap = new HashMap(aobj.length);
            int j = aobj.length;
            int k = 0;
            while (k < j) 
            {
                Object obj2 = aobj[k];
                MutableInt mutableint = (MutableInt)hashmap.get(obj2);
                if (mutableint == null)
                {
                    hashmap.put(obj2, new MutableInt(1));
                } else
                {
                    mutableint.increment();
                }
                k++;
            }
            Iterator iterator = hashmap.entrySet().iterator();
            Object obj = null;
            while (iterator.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                int l = ((MutableInt)entry.getValue()).intValue();
                int i1;
                Object obj1;
                if (l == i)
                {
                    i1 = i;
                    obj1 = null;
                } else
                if (l > i)
                {
                    obj1 = entry.getKey();
                    i1 = l;
                } else
                {
                    i1 = i;
                    obj1 = obj;
                }
                i = i1;
                obj = obj1;
            }
        } else
        {
            obj = null;
        }
        return obj;
    }

    public static boolean notEqual(Object obj, Object obj1)
    {
        return !equals(obj, obj1);
    }

    public static String toString(Object obj)
    {
        if (obj == null)
        {
            return "";
        } else
        {
            return obj.toString();
        }
    }

    public static String toString(Object obj, String s)
    {
        if (obj == null)
        {
            return s;
        } else
        {
            return obj.toString();
        }
    }

    public String toString()
    {
        return super.toString();
    }

}
