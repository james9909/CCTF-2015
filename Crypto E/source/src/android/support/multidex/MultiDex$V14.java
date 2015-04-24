// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.multidex;

import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package android.support.multidex:
//            MultiDex

static final class 
{

    static void a(ClassLoader classloader, List list, File file)
    {
        b(classloader, list, file);
    }

    private static Object[] a(Object obj, ArrayList arraylist, File file)
    {
        return (Object[])(Object[])MultiDex.a(obj, "makeDexElements", new Class[] {
            java/util/ArrayList, java/io/File
        }).invoke(obj, new Object[] {
            arraylist, file
        });
    }

    private static void b(ClassLoader classloader, List list, File file)
    {
        Object obj = MultiDex.a(classloader, "pathList").get(classloader);
        MultiDex.a(obj, "dexElements", a(obj, new ArrayList(list), file));
    }

    private ()
    {
    }
}
