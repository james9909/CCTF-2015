// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package crittercism.android;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;

public final class dk
{

    public static void a(File file)
    {
        if (!file.getAbsolutePath().contains("com.crittercism"))
        {
            return;
        }
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            int i = afile.length;
            for (int j = 0; j < i; j++)
            {
                a(afile[j]);
            }

        }
        file.delete();
    }

    public static String b(File file)
    {
        StringBuilder stringbuilder = new StringBuilder();
        FileInputStream fileinputstream = new FileInputStream(file);
        InputStreamReader inputstreamreader = new InputStreamReader(fileinputstream);
_L3:
        int i = inputstreamreader.read();
        if (i == -1) goto _L2; else goto _L1
_L1:
        stringbuilder.append((char)i);
          goto _L3
        Exception exception;
        exception;
        FileInputStream fileinputstream1 = fileinputstream;
_L5:
        if (fileinputstream1 != null)
        {
            fileinputstream1.close();
        }
        if (inputstreamreader != null)
        {
            inputstreamreader.close();
        }
        throw exception;
_L2:
        fileinputstream.close();
        inputstreamreader.close();
        return stringbuilder.toString();
        exception;
        inputstreamreader = null;
        fileinputstream1 = null;
        continue; /* Loop/switch isn't completed */
        exception;
        fileinputstream1 = fileinputstream;
        inputstreamreader = null;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
