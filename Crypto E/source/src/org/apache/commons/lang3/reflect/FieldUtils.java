// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3.reflect;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;

// Referenced classes of package org.apache.commons.lang3.reflect:
//            MemberUtils

public class FieldUtils
{

    public FieldUtils()
    {
    }

    public static Field[] getAllFields(Class class1)
    {
        List list = getAllFieldsList(class1);
        return (Field[])list.toArray(new Field[list.size()]);
    }

    public static List getAllFieldsList(Class class1)
    {
        boolean flag;
        ArrayList arraylist;
        if (class1 != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Validate.isTrue(flag, "The class must not be null", new Object[0]);
        arraylist = new ArrayList();
        for (; class1 != null; class1 = class1.getSuperclass())
        {
            Field afield[] = class1.getDeclaredFields();
            int i = afield.length;
            for (int j = 0; j < i; j++)
            {
                arraylist.add(afield[j]);
            }

        }

        return arraylist;
    }

    public static Field getDeclaredField(Class class1, String s)
    {
        return getDeclaredField(class1, s, false);
    }

    public static Field getDeclaredField(Class class1, String s, boolean flag)
    {
        boolean flag1 = true;
        Field field;
        if (class1 == null)
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "The class must not be null", new Object[0]);
        Validate.isTrue(StringUtils.isNotBlank(s), "The field name must not be blank/empty", new Object[0]);
        field = class1.getDeclaredField(s);
        if (!MemberUtils.isAccessible(field))
        {
            if (!flag)
            {
                break MISSING_BLOCK_LABEL_62;
            }
            try
            {
                field.setAccessible(true);
            }
            catch (NoSuchFieldException nosuchfieldexception)
            {
                return null;
            }
        }
        return field;
        return null;
    }

    public static Field getField(Class class1, String s)
    {
        Field field = getField(class1, s, false);
        MemberUtils.setAccessibleWorkaround(field);
        return field;
    }

    public static Field getField(Class class1, String s, boolean flag)
    {
        Class class2;
        Field field;
        boolean flag1;
        if (class1 != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "The class must not be null", new Object[0]);
        Validate.isTrue(StringUtils.isNotBlank(s), "The field name must not be blank/empty", new Object[0]);
        class2 = class1;
_L3:
        if (class2 == null) goto _L2; else goto _L1
_L1:
        field = class2.getDeclaredField(s);
        if (Modifier.isPublic(field.getModifiers()))
        {
            break MISSING_BLOCK_LABEL_66;
        }
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        field.setAccessible(true);
_L5:
        return field;
        NoSuchFieldException nosuchfieldexception1;
        nosuchfieldexception1;
        class2 = class2.getSuperclass();
          goto _L3
_L2:
        Iterator iterator;
        field = null;
        iterator = ClassUtils.getAllInterfaces(class1).iterator();
_L6:
        if (!iterator.hasNext()) goto _L5; else goto _L4
_L4:
        Class class3 = (Class)iterator.next();
        Field field1 = class3.getField(s);
        boolean flag2;
        if (field == null)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        try
        {
            Validate.isTrue(flag2, "Reference to field %s is ambiguous relative to %s; a matching field exists on two or more implemented interfaces.", new Object[] {
                s, class1
            });
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            field1 = field;
        }
        field = field1;
          goto _L6
    }

    public static Object readDeclaredField(Object obj, String s)
    {
        return readDeclaredField(obj, s, false);
    }

    public static Object readDeclaredField(Object obj, String s, boolean flag)
    {
        boolean flag1;
        Class class1;
        Field field;
        boolean flag2;
        if (obj != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "target object must not be null", new Object[0]);
        class1 = obj.getClass();
        field = getDeclaredField(class1, s, flag);
        if (field != null)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        Validate.isTrue(flag2, "Cannot locate declared field %s.%s", new Object[] {
            class1, s
        });
        return readField(field, obj, false);
    }

    public static Object readDeclaredStaticField(Class class1, String s)
    {
        return readDeclaredStaticField(class1, s, false);
    }

    public static Object readDeclaredStaticField(Class class1, String s, boolean flag)
    {
        Field field = getDeclaredField(class1, s, flag);
        boolean flag1;
        Object aobj[];
        if (field != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        aobj = new Object[2];
        aobj[0] = class1.getName();
        aobj[1] = s;
        Validate.isTrue(flag1, "Cannot locate declared field %s.%s", aobj);
        return readStaticField(field, false);
    }

    public static Object readField(Object obj, String s)
    {
        return readField(obj, s, false);
    }

    public static Object readField(Object obj, String s, boolean flag)
    {
        boolean flag1;
        Class class1;
        Field field;
        boolean flag2;
        if (obj != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "target object must not be null", new Object[0]);
        class1 = obj.getClass();
        field = getField(class1, s, flag);
        if (field != null)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        Validate.isTrue(flag2, "Cannot locate field %s on %s", new Object[] {
            s, class1
        });
        return readField(field, obj, false);
    }

    public static Object readField(Field field, Object obj)
    {
        return readField(field, obj, false);
    }

    public static Object readField(Field field, Object obj, boolean flag)
    {
        boolean flag1;
        if (field != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "The field must not be null", new Object[0]);
        if (flag && !field.isAccessible())
        {
            field.setAccessible(true);
        } else
        {
            MemberUtils.setAccessibleWorkaround(field);
        }
        return field.get(obj);
    }

    public static Object readStaticField(Class class1, String s)
    {
        return readStaticField(class1, s, false);
    }

    public static Object readStaticField(Class class1, String s, boolean flag)
    {
        Field field = getField(class1, s, flag);
        boolean flag1;
        if (field != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "Cannot locate field '%s' on %s", new Object[] {
            s, class1
        });
        return readStaticField(field, false);
    }

    public static Object readStaticField(Field field)
    {
        return readStaticField(field, false);
    }

    public static Object readStaticField(Field field, boolean flag)
    {
        boolean flag1;
        boolean flag2;
        Object aobj[];
        if (field != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "The field must not be null", new Object[0]);
        flag2 = Modifier.isStatic(field.getModifiers());
        aobj = new Object[1];
        aobj[0] = field.getName();
        Validate.isTrue(flag2, "The field '%s' is not static", aobj);
        return readField(field, (Object)null, flag);
    }

    public static void removeFinalModifier(Field field)
    {
        removeFinalModifier(field, true);
    }

    public static void removeFinalModifier(Field field, boolean flag)
    {
        boolean flag1;
        flag1 = true;
        boolean flag2;
        IllegalAccessException illegalaccessexception;
        NoSuchFieldException nosuchfieldexception;
        Field field1;
        Exception exception;
        if (field != null)
        {
            flag2 = flag1;
        } else
        {
            flag2 = false;
        }
        Validate.isTrue(flag2, "The field must not be null", new Object[0]);
        if (!Modifier.isFinal(field.getModifiers())) goto _L2; else goto _L1
_L1:
        field1 = java/lang/reflect/Field.getDeclaredField("modifiers");
        if (!flag) goto _L4; else goto _L3
_L3:
        if (field1.isAccessible()) goto _L4; else goto _L5
_L5:
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        field1.setAccessible(true);
        field1.setInt(field, 0xffffffef & field.getModifiers());
        if (flag1)
        {
            try
            {
                field1.setAccessible(false);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (NoSuchFieldException nosuchfieldexception)
            {
                return;
            }
            // Misplaced declaration of an exception variable
            catch (IllegalAccessException illegalaccessexception) { }
        }
          goto _L2
        exception;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        field1.setAccessible(false);
        throw exception;
_L2:
        return;
_L4:
        flag1 = false;
        if (true) goto _L5; else goto _L6
_L6:
    }

    public static void writeDeclaredField(Object obj, String s, Object obj1)
    {
        writeDeclaredField(obj, s, obj1, false);
    }

    public static void writeDeclaredField(Object obj, String s, Object obj1, boolean flag)
    {
        boolean flag1;
        Class class1;
        Field field;
        boolean flag2;
        Object aobj[];
        if (obj != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "target object must not be null", new Object[0]);
        class1 = obj.getClass();
        field = getDeclaredField(class1, s, flag);
        if (field != null)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        aobj = new Object[2];
        aobj[0] = class1.getName();
        aobj[1] = s;
        Validate.isTrue(flag2, "Cannot locate declared field %s.%s", aobj);
        writeField(field, obj, obj1, false);
    }

    public static void writeDeclaredStaticField(Class class1, String s, Object obj)
    {
        writeDeclaredStaticField(class1, s, obj, false);
    }

    public static void writeDeclaredStaticField(Class class1, String s, Object obj, boolean flag)
    {
        Field field = getDeclaredField(class1, s, flag);
        boolean flag1;
        Object aobj[];
        if (field != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        aobj = new Object[2];
        aobj[0] = class1.getName();
        aobj[1] = s;
        Validate.isTrue(flag1, "Cannot locate declared field %s.%s", aobj);
        writeField(field, (Object)null, obj, false);
    }

    public static void writeField(Object obj, String s, Object obj1)
    {
        writeField(obj, s, obj1, false);
    }

    public static void writeField(Object obj, String s, Object obj1, boolean flag)
    {
        boolean flag1;
        Class class1;
        Field field;
        boolean flag2;
        Object aobj[];
        if (obj != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "target object must not be null", new Object[0]);
        class1 = obj.getClass();
        field = getField(class1, s, flag);
        if (field != null)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        aobj = new Object[2];
        aobj[0] = class1.getName();
        aobj[1] = s;
        Validate.isTrue(flag2, "Cannot locate declared field %s.%s", aobj);
        writeField(field, obj, obj1, false);
    }

    public static void writeField(Field field, Object obj, Object obj1)
    {
        writeField(field, obj, obj1, false);
    }

    public static void writeField(Field field, Object obj, Object obj1, boolean flag)
    {
        boolean flag1;
        if (field != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "The field must not be null", new Object[0]);
        if (flag && !field.isAccessible())
        {
            field.setAccessible(true);
        } else
        {
            MemberUtils.setAccessibleWorkaround(field);
        }
        field.set(obj, obj1);
    }

    public static void writeStaticField(Class class1, String s, Object obj)
    {
        writeStaticField(class1, s, obj, false);
    }

    public static void writeStaticField(Class class1, String s, Object obj, boolean flag)
    {
        Field field = getField(class1, s, flag);
        boolean flag1;
        if (field != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "Cannot locate field %s on %s", new Object[] {
            s, class1
        });
        writeStaticField(field, obj, false);
    }

    public static void writeStaticField(Field field, Object obj)
    {
        writeStaticField(field, obj, false);
    }

    public static void writeStaticField(Field field, Object obj, boolean flag)
    {
        boolean flag1;
        boolean flag2;
        Object aobj[];
        if (field != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Validate.isTrue(flag1, "The field must not be null", new Object[0]);
        flag2 = Modifier.isStatic(field.getModifiers());
        aobj = new Object[2];
        aobj[0] = field.getDeclaringClass().getName();
        aobj[1] = field.getName();
        Validate.isTrue(flag2, "The field %s.%s is not static", aobj);
        writeField(field, (Object)null, obj, flag);
    }
}
