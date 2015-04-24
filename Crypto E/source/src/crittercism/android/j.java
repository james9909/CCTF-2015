// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

// Referenced classes of package crittercism.android:
//            by

public final class j
{

    public static Object a(Field field, Object obj)
    {
        while (field == null || field == null) 
        {
            return null;
        }
        field.setAccessible(true);
        Object obj1;
        try
        {
            obj1 = field.get(obj);
        }
        catch (ThreadDeath threaddeath)
        {
            throw threaddeath;
        }
        catch (Throwable throwable)
        {
            throw new by("Unable to get value of field", throwable);
        }
        return obj1;
    }

    public static Field a(Class class1, Class class2)
    {
        Field afield[] = class1.getDeclaredFields();
        Field field = null;
        for (int i = 0; i < afield.length; i++)
        {
            if (!class2.isAssignableFrom(afield[i].getType()))
            {
                continue;
            }
            if (field != null)
            {
                throw new by((new StringBuilder("Field is ambiguous: ")).append(field.getName()).append(", ").append(afield[i].getName()).toString());
            }
            field = afield[i];
        }

        if (field == null)
        {
            throw new by((new StringBuilder("Could not find field matching type: ")).append(class2.getName()).toString());
        } else
        {
            field.setAccessible(true);
            return field;
        }
    }

    public static void a(AccessibleObject aaccessibleobject[])
    {
        for (int i = 0; i < aaccessibleobject.length; i++)
        {
            AccessibleObject accessibleobject = aaccessibleobject[i];
            if (accessibleobject != null)
            {
                accessibleobject.setAccessible(true);
            }
        }

    }
}
