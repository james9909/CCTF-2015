// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package org.apache.commons.lang3:
//            Validate, ArrayUtils

public class EnumUtils
{

    private static final String CANNOT_STORE_S_S_VALUES_IN_S_BITS = "Cannot store %s %s values in %s bits";
    private static final String ENUM_CLASS_MUST_BE_DEFINED = "EnumClass must be defined.";
    private static final String NULL_ELEMENTS_NOT_PERMITTED = "null elements not permitted";
    private static final String S_DOES_NOT_SEEM_TO_BE_AN_ENUM_TYPE = "%s does not seem to be an Enum type";

    public EnumUtils()
    {
    }

    private static Class asEnum(Class class1)
    {
        Validate.notNull(class1, "EnumClass must be defined.", new Object[0]);
        Validate.isTrue(class1.isEnum(), "%s does not seem to be an Enum type", new Object[] {
            class1
        });
        return class1;
    }

    private static Class checkBitVectorable(Class class1)
    {
        Enum aenum[] = (Enum[])asEnum(class1).getEnumConstants();
        boolean flag;
        Object aobj[];
        if (aenum.length <= 64)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aobj = new Object[3];
        aobj[0] = Integer.valueOf(aenum.length);
        aobj[1] = class1.getSimpleName();
        aobj[2] = Integer.valueOf(64);
        Validate.isTrue(flag, "Cannot store %s %s values in %s bits", aobj);
        return class1;
    }

    public static long generateBitVector(Class class1, Iterable iterable)
    {
        checkBitVectorable(class1);
        Validate.notNull(iterable);
        Iterator iterator = iterable.iterator();
        long l = 0L;
        while (iterator.hasNext()) 
        {
            Enum enum = (Enum)iterator.next();
            boolean flag;
            if (enum != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Validate.isTrue(flag, "null elements not permitted", new Object[0]);
            l |= 1 << enum.ordinal();
        }
        return l;
    }

    public static transient long generateBitVector(Class class1, Enum aenum[])
    {
        Validate.noNullElements(aenum);
        return generateBitVector(class1, ((Iterable) (Arrays.asList(aenum))));
    }

    public static long[] generateBitVectors(Class class1, Iterable iterable)
    {
        asEnum(class1);
        Validate.notNull(iterable);
        EnumSet enumset = EnumSet.noneOf(class1);
        Iterator iterator = iterable.iterator();
        while (iterator.hasNext()) 
        {
            Enum enum1 = (Enum)iterator.next();
            boolean flag;
            if (enum1 != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Validate.isTrue(flag, "null elements not permitted", new Object[0]);
            enumset.add(enum1);
        }
        long al[] = new long[1 + (-1 + ((Enum[])class1.getEnumConstants()).length) / 64];
        for (Iterator iterator1 = enumset.iterator(); iterator1.hasNext();)
        {
            Enum enum = (Enum)iterator1.next();
            int i = enum.ordinal() / 64;
            al[i] = al[i] | (long)(1 << enum.ordinal() % 64);
        }

        ArrayUtils.reverse(al);
        return al;
    }

    public static transient long[] generateBitVectors(Class class1, Enum aenum[])
    {
        asEnum(class1);
        Validate.noNullElements(aenum);
        EnumSet enumset = EnumSet.noneOf(class1);
        Collections.addAll(enumset, aenum);
        long al[] = new long[1 + (-1 + ((Enum[])class1.getEnumConstants()).length) / 64];
        for (Iterator iterator = enumset.iterator(); iterator.hasNext();)
        {
            Enum enum = (Enum)iterator.next();
            int i = enum.ordinal() / 64;
            al[i] = al[i] | (long)(1 << enum.ordinal() % 64);
        }

        ArrayUtils.reverse(al);
        return al;
    }

    public static Enum getEnum(Class class1, String s)
    {
        if (s == null)
        {
            return null;
        }
        Enum enum;
        try
        {
            enum = Enum.valueOf(class1, s);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return null;
        }
        return enum;
    }

    public static List getEnumList(Class class1)
    {
        return new ArrayList(Arrays.asList(class1.getEnumConstants()));
    }

    public static Map getEnumMap(Class class1)
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        Enum aenum[] = (Enum[])class1.getEnumConstants();
        int i = aenum.length;
        for (int j = 0; j < i; j++)
        {
            Enum enum = aenum[j];
            linkedhashmap.put(enum.name(), enum);
        }

        return linkedhashmap;
    }

    public static boolean isValidEnum(Class class1, String s)
    {
        if (s == null)
        {
            return false;
        }
        try
        {
            Enum.valueOf(class1, s);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return false;
        }
        return true;
    }

    public static EnumSet processBitVector(Class class1, long l)
    {
        checkBitVectorable(class1).getEnumConstants();
        return processBitVectors(class1, new long[] {
            l
        });
    }

    public static transient EnumSet processBitVectors(Class class1, long al[])
    {
        EnumSet enumset = EnumSet.noneOf(asEnum(class1));
        long al1[] = ArrayUtils.clone((long[])Validate.notNull(al));
        ArrayUtils.reverse(al1);
        Enum aenum[] = (Enum[])class1.getEnumConstants();
        int i = aenum.length;
        for (int j = 0; j < i; j++)
        {
            Enum enum = aenum[j];
            int k = enum.ordinal() / 64;
            if (k < al1.length && (al1[k] & (long)(1 << enum.ordinal() % 64)) != 0L)
            {
                enumset.add(enum);
            }
        }

        return enumset;
    }
}
