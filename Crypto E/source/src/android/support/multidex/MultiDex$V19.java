// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.multidex;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package android.support.multidex:
//            MultiDex

static final class 
{

    static void a(ClassLoader classloader, List list, File file)
    {
        b(classloader, list, file);
    }

    private static Object[] a(Object obj, ArrayList arraylist, File file, ArrayList arraylist1)
    {
        return (Object[])(Object[])MultiDex.a(obj, "makeDexElements", new Class[] {
            java/util/ArrayList, java/io/File, java/util/ArrayList
        }).invoke(obj, new Object[] {
            arraylist, file, arraylist1
        });
    }

    private static void b(ClassLoader classloader, List list, File file)
    {
        Object obj = MultiDex.a(classloader, "pathList").get(classloader);
        ArrayList arraylist = new ArrayList();
        MultiDex.a(obj, "dexElements", a(obj, new ArrayList(list), file, arraylist));
        if (arraylist.size() > 0)
        {
            for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); Log.w("MultiDex", "Exception in makeDexElement", (IOException)iterator.next())) { }
            Field field = MultiDex.a(classloader, "dexElementsSuppressedExceptions");
            IOException aioexception[] = (IOException[])(IOException[])field.get(classloader);
            IOException aioexception2[];
            if (aioexception == null)
            {
                aioexception2 = (IOException[])arraylist.toArray(new IOException[arraylist.size()]);
            } else
            {
                IOException aioexception1[] = new IOException[arraylist.size() + aioexception.length];
                arraylist.toArray(aioexception1);
                System.arraycopy(aioexception, 0, aioexception1, arraylist.size(), aioexception.length);
                aioexception2 = aioexception1;
            }
            field.set(classloader, aioexception2);
        }
    }

    private ()
    {
    }
}
