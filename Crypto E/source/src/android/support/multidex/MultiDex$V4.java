// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.multidex;

import dalvik.system.DexFile;
import java.io.File;
import java.lang.reflect.Field;
import java.util.List;
import java.util.ListIterator;
import java.util.zip.ZipFile;

// Referenced classes of package android.support.multidex:
//            MultiDex

static final class 
{

    static void a(ClassLoader classloader, List list)
    {
        b(classloader, list);
    }

    private static void b(ClassLoader classloader, List list)
    {
        int i = list.size();
        Field field = MultiDex.a(classloader, "path");
        StringBuilder stringbuilder = new StringBuilder((String)field.get(classloader));
        String as[] = new String[i];
        File afile[] = new File[i];
        ZipFile azipfile[] = new ZipFile[i];
        DexFile adexfile[] = new DexFile[i];
        for (ListIterator listiterator = list.listIterator(); listiterator.hasNext();)
        {
            File file = (File)listiterator.next();
            String s = file.getAbsolutePath();
            stringbuilder.append(':').append(s);
            int j = listiterator.previousIndex();
            as[j] = s;
            afile[j] = file;
            azipfile[j] = new ZipFile(file);
            adexfile[j] = DexFile.loadDex(s, (new StringBuilder()).append(s).append(".dex").toString(), 0);
        }

        field.set(classloader, stringbuilder.toString());
        MultiDex.a(classloader, "mPaths", as);
        MultiDex.a(classloader, "mFiles", afile);
        MultiDex.a(classloader, "mZips", azipfile);
        MultiDex.a(classloader, "mDexs", adexfile);
    }

    private ()
    {
    }
}
