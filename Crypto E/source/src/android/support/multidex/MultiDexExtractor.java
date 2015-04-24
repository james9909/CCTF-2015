// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

// Referenced classes of package android.support.multidex:
//            ZipUtil

final class MultiDexExtractor
{

    private static Method a;

    MultiDexExtractor()
    {
    }

    private static SharedPreferences a(Context context)
    {
        int i;
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            i = 0;
        } else
        {
            i = 4;
        }
        return context.getSharedPreferences("multidex.version", i);
    }

    static List a(Context context, ApplicationInfo applicationinfo, File file, boolean flag)
    {
        File file1;
        long l;
        Log.i("MultiDex", (new StringBuilder()).append("MultiDexExtractor.load(").append(applicationinfo.sourceDir).append(", ").append(flag).append(")").toString());
        file1 = new File(applicationinfo.sourceDir);
        l = c(file1);
        if (flag || a(context, file1, l)) goto _L2; else goto _L1
_L1:
        List list;
        List list1;
        try
        {
            list1 = a(context, file1, file);
        }
        catch (IOException ioexception)
        {
            Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", ioexception);
            list = a(file1, file);
            a(context, b(file1), l, 1 + list.size());
            continue; /* Loop/switch isn't completed */
        }
        list = list1;
_L4:
        Log.i("MultiDex", (new StringBuilder()).append("load found ").append(list.size()).append(" secondary dex files").toString());
        return list;
_L2:
        Log.i("MultiDex", "Detected that extraction must be performed.");
        list = a(file1, file);
        a(context, b(file1), l, 1 + list.size());
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static List a(Context context, File file, File file1)
    {
        Log.i("MultiDex", "loading existing secondary dex files");
        String s = (new StringBuilder()).append(file.getName()).append(".classes").toString();
        int i = a(context).getInt("dex.number", 1);
        ArrayList arraylist = new ArrayList(i);
        for (int j = 2; j <= i; j++)
        {
            File file2 = new File(file1, (new StringBuilder()).append(s).append(j).append(".zip").toString());
            if (file2.isFile())
            {
                arraylist.add(file2);
                if (!a(file2))
                {
                    Log.i("MultiDex", (new StringBuilder()).append("Invalid zip file: ").append(file2).toString());
                    throw new IOException("Invalid ZIP file.");
                }
            } else
            {
                throw new IOException((new StringBuilder()).append("Missing extracted secondary dex file '").append(file2.getPath()).append("'").toString());
            }
        }

        return arraylist;
    }

    private static List a(File file, File file1)
    {
        String s;
        ArrayList arraylist;
        ZipFile zipfile;
        s = (new StringBuilder()).append(file.getName()).append(".classes").toString();
        a(file1, s);
        arraylist = new ArrayList();
        zipfile = new ZipFile(file);
        ZipEntry zipentry = zipfile.getEntry((new StringBuilder()).append("classes").append(2).append(".dex").toString());
        int i = 2;
_L4:
        if (zipentry == null) goto _L2; else goto _L1
_L1:
        File file2;
        file2 = new File(file1, (new StringBuilder()).append(s).append(i).append(".zip").toString());
        arraylist.add(file2);
        Log.i("MultiDex", (new StringBuilder()).append("Extraction is needed for file ").append(file2).toString());
        boolean flag;
        int j;
        flag = false;
        j = 0;
_L3:
        int l;
        if (j >= 3 || flag)
        {
            break MISSING_BLOCK_LABEL_323;
        }
        l = j + 1;
        boolean flag1;
        StringBuilder stringbuilder;
        a(zipfile, zipentry, file2, s);
        flag1 = a(file2);
        stringbuilder = (new StringBuilder()).append("Extraction ");
        Exception exception;
        String s1;
        if (flag1)
        {
            s1 = "success";
        } else
        {
            s1 = "failed";
        }
        Log.i("MultiDex", stringbuilder.append(s1).append(" - length ").append(file2.getAbsolutePath()).append(": ").append(file2.length()).toString());
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_469;
        }
        file2.delete();
        if (!file2.exists())
        {
            break MISSING_BLOCK_LABEL_469;
        }
        Log.w("MultiDex", (new StringBuilder()).append("Failed to delete corrupted secondary dex '").append(file2.getPath()).append("'").toString());
        flag = flag1;
        j = l;
          goto _L3
        if (flag)
        {
            break MISSING_BLOCK_LABEL_384;
        }
        throw new IOException((new StringBuilder()).append("Could not create zip file ").append(file2.getAbsolutePath()).append(" for secondary dex (").append(i).append(")").toString());
        exception;
        int k;
        ZipEntry zipentry1;
        IOException ioexception1;
        try
        {
            zipfile.close();
        }
        catch (IOException ioexception)
        {
            Log.w("MultiDex", "Failed to close resource", ioexception);
        }
        throw exception;
        k = i + 1;
        zipentry1 = zipfile.getEntry((new StringBuilder()).append("classes").append(k).append(".dex").toString());
        zipentry = zipentry1;
        i = k;
          goto _L4
_L2:
        try
        {
            zipfile.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception1)
        {
            Log.w("MultiDex", "Failed to close resource", ioexception1);
            return arraylist;
        }
        return arraylist;
        flag = flag1;
        j = l;
          goto _L3
    }

    private static void a(Context context, long l, long l1, int i)
    {
        android.content.SharedPreferences.Editor editor = a(context).edit();
        editor.putLong("timestamp", l);
        editor.putLong("crc", l1);
        editor.putInt("dex.number", i);
        a(editor);
    }

    private static void a(android.content.SharedPreferences.Editor editor)
    {
        if (a != null)
        {
            try
            {
                a.invoke(editor, new Object[0]);
                return;
            }
            catch (InvocationTargetException invocationtargetexception) { }
            catch (IllegalAccessException illegalaccessexception) { }
        }
        editor.commit();
    }

    private static void a(Closeable closeable)
    {
        try
        {
            closeable.close();
            return;
        }
        catch (IOException ioexception)
        {
            Log.w("MultiDex", "Failed to close resource", ioexception);
        }
    }

    private static void a(File file, String s)
    {
        file.mkdirs();
        if (!file.isDirectory())
        {
            throw new IOException((new StringBuilder()).append("Failed to create dex directory ").append(file.getPath()).toString());
        }
        File afile[] = file.listFiles(new FileFilter(s) {

            final String a;

            public boolean accept(File file2)
            {
                return !file2.getName().startsWith(a);
            }

            
            {
                a = s;
                super();
            }
        });
        if (afile == null)
        {
            Log.w("MultiDex", (new StringBuilder()).append("Failed to list secondary dex dir content (").append(file.getPath()).append(").").toString());
        } else
        {
            int i = afile.length;
            int j = 0;
            while (j < i) 
            {
                File file1 = afile[j];
                Log.i("MultiDex", (new StringBuilder()).append("Trying to delete old file ").append(file1.getPath()).append(" of size ").append(file1.length()).toString());
                if (!file1.delete())
                {
                    Log.w("MultiDex", (new StringBuilder()).append("Failed to delete old file ").append(file1.getPath()).toString());
                } else
                {
                    Log.i("MultiDex", (new StringBuilder()).append("Deleted old file ").append(file1.getPath()).toString());
                }
                j++;
            }
        }
    }

    private static void a(ZipFile zipfile, ZipEntry zipentry, File file, String s)
    {
        InputStream inputstream;
        File file1;
        inputstream = zipfile.getInputStream(zipentry);
        file1 = File.createTempFile(s, ".zip", file.getParentFile());
        Log.i("MultiDex", (new StringBuilder()).append("Extracting ").append(file1.getPath()).toString());
        ZipOutputStream zipoutputstream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(file1)));
        byte abyte0[];
        int i;
        ZipEntry zipentry1 = new ZipEntry("classes.dex");
        zipentry1.setTime(zipentry.getTime());
        zipoutputstream.putNextEntry(zipentry1);
        abyte0 = new byte[16384];
        i = inputstream.read(abyte0);
_L1:
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_146;
        }
        zipoutputstream.write(abyte0, 0, i);
        i = inputstream.read(abyte0);
          goto _L1
        zipoutputstream.closeEntry();
        zipoutputstream.close();
        Log.i("MultiDex", (new StringBuilder()).append("Renaming to ").append(file.getPath()).toString());
        if (!file1.renameTo(file))
        {
            throw new IOException((new StringBuilder()).append("Failed to rename \"").append(file1.getAbsolutePath()).append("\" to \"").append(file.getAbsolutePath()).append("\"").toString());
        }
        break MISSING_BLOCK_LABEL_271;
        Exception exception1;
        exception1;
        a(((Closeable) (inputstream)));
        file1.delete();
        throw exception1;
        Exception exception;
        exception;
        zipoutputstream.close();
        throw exception;
        a(((Closeable) (inputstream)));
        file1.delete();
        return;
    }

    private static boolean a(Context context, File file, long l)
    {
        SharedPreferences sharedpreferences = a(context);
        return sharedpreferences.getLong("timestamp", -1L) != b(file) || sharedpreferences.getLong("crc", -1L) != l;
    }

    static boolean a(File file)
    {
        ZipFile zipfile = new ZipFile(file);
        try
        {
            zipfile.close();
        }
        catch (IOException ioexception)
        {
            try
            {
                Log.w("MultiDex", (new StringBuilder()).append("Failed to close zip file: ").append(file.getAbsolutePath()).toString());
            }
            catch (ZipException zipexception)
            {
                Log.w("MultiDex", (new StringBuilder()).append("File ").append(file.getAbsolutePath()).append(" is not a valid zip file.").toString(), zipexception);
            }
            catch (IOException ioexception1)
            {
                Log.w("MultiDex", (new StringBuilder()).append("Got an IOException trying to open zip file: ").append(file.getAbsolutePath()).toString(), ioexception1);
            }
            return false;
        }
        return true;
    }

    private static long b(File file)
    {
        long l = file.lastModified();
        if (l == -1L)
        {
            l--;
        }
        return l;
    }

    private static long c(File file)
    {
        long l = ZipUtil.a(file);
        if (l == -1L)
        {
            l--;
        }
        return l;
    }

    static 
    {
        try
        {
            a = android/content/SharedPreferences$Editor.getMethod("apply", new Class[0]);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            a = null;
        }
    }
}
