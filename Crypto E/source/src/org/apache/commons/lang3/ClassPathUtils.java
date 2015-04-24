// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.commons.lang3;


// Referenced classes of package org.apache.commons.lang3:
//            Validate

public class ClassPathUtils
{

    public ClassPathUtils()
    {
    }

    public static String toFullyQualifiedName(Class class1, String s)
    {
        Validate.notNull(class1, "Parameter '%s' must not be null!", new Object[] {
            "context"
        });
        Validate.notNull(s, "Parameter '%s' must not be null!", new Object[] {
            "resourceName"
        });
        return toFullyQualifiedName(class1.getPackage(), s);
    }

    public static String toFullyQualifiedName(Package package1, String s)
    {
        Validate.notNull(package1, "Parameter '%s' must not be null!", new Object[] {
            "context"
        });
        Validate.notNull(s, "Parameter '%s' must not be null!", new Object[] {
            "resourceName"
        });
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(package1.getName());
        stringbuilder.append(".");
        stringbuilder.append(s);
        return stringbuilder.toString();
    }

    public static String toFullyQualifiedPath(Class class1, String s)
    {
        Validate.notNull(class1, "Parameter '%s' must not be null!", new Object[] {
            "context"
        });
        Validate.notNull(s, "Parameter '%s' must not be null!", new Object[] {
            "resourceName"
        });
        return toFullyQualifiedPath(class1.getPackage(), s);
    }

    public static String toFullyQualifiedPath(Package package1, String s)
    {
        Validate.notNull(package1, "Parameter '%s' must not be null!", new Object[] {
            "context"
        });
        Validate.notNull(s, "Parameter '%s' must not be null!", new Object[] {
            "resourceName"
        });
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(package1.getName().replace('.', '/'));
        stringbuilder.append("/");
        stringbuilder.append(s);
        return stringbuilder.toString();
    }
}
