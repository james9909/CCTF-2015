// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.builder;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.tuple.Pair;

// Referenced classes of package org.apache.commons.lang3.builder:
//            Builder, IDKey, ReflectionToStringBuilder

public class EqualsBuilder
    implements Builder
{

    private static final ThreadLocal REGISTRY = new ThreadLocal();
    private boolean isEquals;

    public EqualsBuilder()
    {
        isEquals = true;
    }

    static Pair getRegisterPair(Object obj, Object obj1)
    {
        return Pair.of(new IDKey(obj), new IDKey(obj1));
    }

    static Set getRegistry()
    {
        return (Set)REGISTRY.get();
    }

    static boolean isRegistered(Object obj, Object obj1)
    {
        Set set = getRegistry();
        Pair pair = getRegisterPair(obj, obj1);
        Pair pair1 = Pair.of(pair.getLeft(), pair.getRight());
        return set != null && (set.contains(pair) || set.contains(pair1));
    }

    private static void reflectionAppend(Object obj, Object obj1, Class class1, EqualsBuilder equalsbuilder, boolean flag, String as[])
    {
        if (isRegistered(obj, obj1))
        {
            return;
        }
        Field afield[];
        register(obj, obj1);
        afield = class1.getDeclaredFields();
        AccessibleObject.setAccessible(afield, true);
        int i = 0;
_L1:
        Field field;
        if (i >= afield.length || !equalsbuilder.isEquals)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        field = afield[i];
        if (ArrayUtils.contains(as, field.getName()) || field.getName().indexOf('$') != -1)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        if (Modifier.isTransient(field.getModifiers()))
        {
            break MISSING_BLOCK_LABEL_126;
        }
        boolean flag1 = Modifier.isStatic(field.getModifiers());
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        equalsbuilder.append(field.get(obj), field.get(obj1));
        i++;
          goto _L1
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        throw new InternalError("Unexpected IllegalAccessException");
        Exception exception;
        exception;
        unregister(obj, obj1);
        throw exception;
        unregister(obj, obj1);
        return;
    }

    public static boolean reflectionEquals(Object obj, Object obj1, Collection collection)
    {
        return reflectionEquals(obj, obj1, ReflectionToStringBuilder.toNoNullStringArray(collection));
    }

    public static boolean reflectionEquals(Object obj, Object obj1, boolean flag)
    {
        return reflectionEquals(obj, obj1, flag, null, new String[0]);
    }

    public static transient boolean reflectionEquals(Object obj, Object obj1, boolean flag, Class class1, String as[])
    {
        Class class2;
        Class class3;
        if (obj == obj1)
        {
            return true;
        }
        if (obj == null || obj1 == null)
        {
            return false;
        }
        class2 = obj.getClass();
        class3 = obj1.getClass();
        if (!class2.isInstance(obj1)) goto _L2; else goto _L1
_L1:
        EqualsBuilder equalsbuilder;
        IllegalArgumentException illegalargumentexception;
        if (class3.isInstance(obj))
        {
            class3 = class2;
        }
        equalsbuilder = new EqualsBuilder();
        if (!class3.isArray()) goto _L4; else goto _L3
_L3:
        equalsbuilder.append(obj, obj1);
_L8:
        return equalsbuilder.isEquals();
_L2:
        if (class3.isInstance(obj))
        {
            if (!class2.isInstance(obj1))
            {
                class3 = class2;
            }
        } else
        {
            return false;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        reflectionAppend(obj, obj1, class3, equalsbuilder, flag, as);
_L6:
        if (class3.getSuperclass() == null || class3 == class1)
        {
            break; /* Loop/switch isn't completed */
        }
        class3 = class3.getSuperclass();
        reflectionAppend(obj, obj1, class3, equalsbuilder, flag, as);
        if (true) goto _L6; else goto _L5
_L5:
        if (true) goto _L8; else goto _L7
_L7:
        illegalargumentexception;
        return false;
        if (true) goto _L10; else goto _L9
_L10:
        break MISSING_BLOCK_LABEL_47;
_L9:
    }

    public static transient boolean reflectionEquals(Object obj, Object obj1, String as[])
    {
        return reflectionEquals(obj, obj1, false, null, as);
    }

    static void register(Object obj, Object obj1)
    {
        org/apache/commons/lang3/builder/EqualsBuilder;
        JVM INSTR monitorenter ;
        if (getRegistry() == null)
        {
            REGISTRY.set(new HashSet());
        }
        org/apache/commons/lang3/builder/EqualsBuilder;
        JVM INSTR monitorexit ;
        getRegistry().add(getRegisterPair(obj, obj1));
        return;
        Exception exception;
        exception;
        org/apache/commons/lang3/builder/EqualsBuilder;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void unregister(Object obj, Object obj1)
    {
        Set set = getRegistry();
        if (set == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        set.remove(getRegisterPair(obj, obj1));
        org/apache/commons/lang3/builder/EqualsBuilder;
        JVM INSTR monitorenter ;
        Set set1 = getRegistry();
        if (set1 == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        if (set1.isEmpty())
        {
            REGISTRY.remove();
        }
        org/apache/commons/lang3/builder/EqualsBuilder;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        org/apache/commons/lang3/builder/EqualsBuilder;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public EqualsBuilder append(byte byte0, byte byte1)
    {
        if (!isEquals)
        {
            return this;
        }
        boolean flag;
        if (byte0 == byte1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isEquals = flag;
        return this;
    }

    public EqualsBuilder append(char c, char c1)
    {
        if (!isEquals)
        {
            return this;
        }
        boolean flag;
        if (c == c1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isEquals = flag;
        return this;
    }

    public EqualsBuilder append(double d, double d1)
    {
        if (!isEquals)
        {
            return this;
        } else
        {
            return append(Double.doubleToLongBits(d), Double.doubleToLongBits(d1));
        }
    }

    public EqualsBuilder append(float f, float f1)
    {
        if (!isEquals)
        {
            return this;
        } else
        {
            return append(Float.floatToIntBits(f), Float.floatToIntBits(f1));
        }
    }

    public EqualsBuilder append(int i, int j)
    {
        if (!isEquals)
        {
            return this;
        }
        boolean flag;
        if (i == j)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isEquals = flag;
        return this;
    }

    public EqualsBuilder append(long l, long l1)
    {
        if (!isEquals)
        {
            return this;
        }
        boolean flag;
        if (l == l1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isEquals = flag;
        return this;
    }

    public EqualsBuilder append(Object obj, Object obj1)
    {
        while (!isEquals || obj == obj1) 
        {
            return this;
        }
        if (obj == null || obj1 == null)
        {
            setEquals(false);
            return this;
        }
        if (!obj.getClass().isArray())
        {
            isEquals = obj.equals(obj1);
            return this;
        }
        if (obj.getClass() != obj1.getClass())
        {
            setEquals(false);
            return this;
        }
        if (obj instanceof long[])
        {
            append((long[])(long[])obj, (long[])(long[])obj1);
            return this;
        }
        if (obj instanceof int[])
        {
            append((int[])(int[])obj, (int[])(int[])obj1);
            return this;
        }
        if (obj instanceof short[])
        {
            append((short[])(short[])obj, (short[])(short[])obj1);
            return this;
        }
        if (obj instanceof char[])
        {
            append((char[])(char[])obj, (char[])(char[])obj1);
            return this;
        }
        if (obj instanceof byte[])
        {
            append((byte[])(byte[])obj, (byte[])(byte[])obj1);
            return this;
        }
        if (obj instanceof double[])
        {
            append((double[])(double[])obj, (double[])(double[])obj1);
            return this;
        }
        if (obj instanceof float[])
        {
            append((float[])(float[])obj, (float[])(float[])obj1);
            return this;
        }
        if (obj instanceof boolean[])
        {
            append((boolean[])(boolean[])obj, (boolean[])(boolean[])obj1);
            return this;
        } else
        {
            append((Object[])(Object[])obj, (Object[])(Object[])obj1);
            return this;
        }
    }

    public EqualsBuilder append(short word0, short word1)
    {
        if (!isEquals)
        {
            return this;
        }
        boolean flag;
        if (word0 == word1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isEquals = flag;
        return this;
    }

    public EqualsBuilder append(boolean flag, boolean flag1)
    {
        if (!isEquals)
        {
            return this;
        }
        boolean flag2;
        if (flag == flag1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        isEquals = flag2;
        return this;
    }

    public EqualsBuilder append(byte abyte0[], byte abyte1[])
    {
        if (isEquals && abyte0 != abyte1)
        {
            if (abyte0 == null || abyte1 == null)
            {
                setEquals(false);
                return this;
            }
            int i = abyte0.length;
            int j = abyte1.length;
            int k = 0;
            if (i != j)
            {
                setEquals(false);
                return this;
            }
            while (k < abyte0.length && isEquals) 
            {
                append(abyte0[k], abyte1[k]);
                k++;
            }
        }
        return this;
    }

    public EqualsBuilder append(char ac[], char ac1[])
    {
        if (isEquals && ac != ac1)
        {
            if (ac == null || ac1 == null)
            {
                setEquals(false);
                return this;
            }
            int i = ac.length;
            int j = ac1.length;
            int k = 0;
            if (i != j)
            {
                setEquals(false);
                return this;
            }
            while (k < ac.length && isEquals) 
            {
                append(ac[k], ac1[k]);
                k++;
            }
        }
        return this;
    }

    public EqualsBuilder append(double ad[], double ad1[])
    {
        if (isEquals && ad != ad1)
        {
            if (ad == null || ad1 == null)
            {
                setEquals(false);
                return this;
            }
            int i = ad.length;
            int j = ad1.length;
            int k = 0;
            if (i != j)
            {
                setEquals(false);
                return this;
            }
            while (k < ad.length && isEquals) 
            {
                append(ad[k], ad1[k]);
                k++;
            }
        }
        return this;
    }

    public EqualsBuilder append(float af[], float af1[])
    {
        if (isEquals && af != af1)
        {
            if (af == null || af1 == null)
            {
                setEquals(false);
                return this;
            }
            int i = af.length;
            int j = af1.length;
            int k = 0;
            if (i != j)
            {
                setEquals(false);
                return this;
            }
            while (k < af.length && isEquals) 
            {
                append(af[k], af1[k]);
                k++;
            }
        }
        return this;
    }

    public EqualsBuilder append(int ai[], int ai1[])
    {
        if (isEquals && ai != ai1)
        {
            if (ai == null || ai1 == null)
            {
                setEquals(false);
                return this;
            }
            int i = ai.length;
            int j = ai1.length;
            int k = 0;
            if (i != j)
            {
                setEquals(false);
                return this;
            }
            while (k < ai.length && isEquals) 
            {
                append(ai[k], ai1[k]);
                k++;
            }
        }
        return this;
    }

    public EqualsBuilder append(long al[], long al1[])
    {
        if (isEquals && al != al1)
        {
            if (al == null || al1 == null)
            {
                setEquals(false);
                return this;
            }
            int i = al.length;
            int j = al1.length;
            int k = 0;
            if (i != j)
            {
                setEquals(false);
                return this;
            }
            while (k < al.length && isEquals) 
            {
                append(al[k], al1[k]);
                k++;
            }
        }
        return this;
    }

    public EqualsBuilder append(Object aobj[], Object aobj1[])
    {
        if (isEquals && aobj != aobj1)
        {
            if (aobj == null || aobj1 == null)
            {
                setEquals(false);
                return this;
            }
            int i = aobj.length;
            int j = aobj1.length;
            int k = 0;
            if (i != j)
            {
                setEquals(false);
                return this;
            }
            while (k < aobj.length && isEquals) 
            {
                append(aobj[k], aobj1[k]);
                k++;
            }
        }
        return this;
    }

    public EqualsBuilder append(short aword0[], short aword1[])
    {
        if (isEquals && aword0 != aword1)
        {
            if (aword0 == null || aword1 == null)
            {
                setEquals(false);
                return this;
            }
            int i = aword0.length;
            int j = aword1.length;
            int k = 0;
            if (i != j)
            {
                setEquals(false);
                return this;
            }
            while (k < aword0.length && isEquals) 
            {
                append(aword0[k], aword1[k]);
                k++;
            }
        }
        return this;
    }

    public EqualsBuilder append(boolean aflag[], boolean aflag1[])
    {
        if (isEquals && aflag != aflag1)
        {
            if (aflag == null || aflag1 == null)
            {
                setEquals(false);
                return this;
            }
            int i = aflag.length;
            int j = aflag1.length;
            int k = 0;
            if (i != j)
            {
                setEquals(false);
                return this;
            }
            while (k < aflag.length && isEquals) 
            {
                append(aflag[k], aflag1[k]);
                k++;
            }
        }
        return this;
    }

    public EqualsBuilder appendSuper(boolean flag)
    {
        if (!isEquals)
        {
            return this;
        } else
        {
            isEquals = flag;
            return this;
        }
    }

    public Boolean build()
    {
        return Boolean.valueOf(isEquals());
    }

    public volatile Object build()
    {
        return build();
    }

    public boolean isEquals()
    {
        return isEquals;
    }

    public void reset()
    {
        isEquals = true;
    }

    protected void setEquals(boolean flag)
    {
        isEquals = flag;
    }

}
