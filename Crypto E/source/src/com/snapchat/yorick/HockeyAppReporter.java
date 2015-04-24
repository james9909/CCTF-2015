// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.yorick;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Build;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.DataInput;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Date;
import java.util.UUID;
import java.util.concurrent.Executor;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.snapchat.yorick:
//            AnrListener, Timber, CloseableUtils, ParsedTrace

public class HockeyAppReporter
    implements AnrListener
{

    protected final String a;
    private final Context b;
    private final String c;
    private final boolean d;

    public HockeyAppReporter(Context context, String s, boolean flag)
    {
        b = context;
        c = s;
        d = flag;
        File file = context.getFilesDir();
        if (file == null)
        {
            throw new NullPointerException();
        } else
        {
            a = file.getAbsolutePath();
            return;
        }
    }

    protected DataInput a()
    {
        return new RandomAccessFile("/data/anr/traces.txt", "r");
    }

    HttpEntity a(String s, String s1)
    {
        MultipartEntityBuilder multipartentitybuilder = MultipartEntityBuilder.create();
        multipartentitybuilder.addPart("log", new FileBody(new File(a, s)));
        if (s1 != null)
        {
            multipartentitybuilder.addPart("description", new FileBody(new File(a, s1)));
        }
        return multipartentitybuilder.build();
    }

    public void a(ParsedTrace parsedtrace)
    {
        Runnable runnable = new Runnable(parsedtrace) {

            final ParsedTrace a;
            final HockeyAppReporter b;

            public void run()
            {
                b.b(a);
            }

            
            {
                b = HockeyAppReporter.this;
                a = parsedtrace;
                super();
            }
        };
        AsyncTask.THREAD_POOL_EXECUTOR.execute(runnable);
    }

    String b()
    {
        String s;
        String s1;
        String s2;
        DataInput datainput1;
        boolean flag;
        boolean flag1;
        if (b == null)
        {
            s = null;
        } else
        {
            s = b.getPackageName();
        }
        s1 = UUID.randomUUID().toString();
        s2 = (new StringBuilder()).append(a).append("/").append(s1).append(".anr_dump").toString();
        Timber.a((new StringBuilder()).append("Writing ANR dump to: ").append(s2).toString(), new Object[0]);
        datainput1 = a();
        IOException ioexception1;
        DataInput datainput = datainput1;
        Exception exception;
        Exception exception1;
        FileOutputStream fileoutputstream;
        IOException ioexception;
        long l;
        String s3;
        String s4;
        byte abyte0[];
        boolean flag2;
        try
        {
            fileoutputstream = new FileOutputStream(s2);
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception1)
        {
            fileoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            fileoutputstream = null;
            continue; /* Loop/switch isn't completed */
        }
        flag = false;
        l = 0L;
_L4:
        s3 = datainput.readLine();
        if (s3 == null || l >= 0x32000L) goto _L2; else goto _L1
_L1:
        if (s3.startsWith((new StringBuilder()).append("Cmd line: ").append(s).toString()))
        {
            flag = true;
        }
        if (!flag) goto _L4; else goto _L3
_L3:
        abyte0 = (new StringBuilder()).append(s3).append("\n").toString().getBytes();
        l += abyte0.length;
        fileoutputstream.write(abyte0);
        flag2 = s3.startsWith("----- end");
        if (!flag2) goto _L4; else goto _L5
_L5:
        flag1 = flag;
_L10:
        if (!flag1)
        {
            if (datainput instanceof Closeable)
            {
                CloseableUtils.a((Closeable)datainput);
            }
            CloseableUtils.a(fileoutputstream);
            return null;
        }
        fileoutputstream.flush();
        s4 = (new StringBuilder()).append(s1).append(".anr_dump").toString();
        if (datainput instanceof Closeable)
        {
            CloseableUtils.a((Closeable)datainput);
        }
        CloseableUtils.a(fileoutputstream);
        return s4;
        ioexception;
        ioexception1 = ioexception;
        fileoutputstream = null;
        datainput = null;
_L8:
        ioexception1.printStackTrace();
        if (datainput instanceof Closeable)
        {
            CloseableUtils.a((Closeable)datainput);
        }
        CloseableUtils.a(fileoutputstream);
        return null;
        exception;
        exception1 = exception;
        fileoutputstream = null;
        datainput = null;
_L7:
        if (datainput instanceof Closeable)
        {
            CloseableUtils.a((Closeable)datainput);
        }
        CloseableUtils.a(fileoutputstream);
        throw exception1;
        exception1;
        if (true) goto _L7; else goto _L6
        ioexception1;
        if (true) goto _L8; else goto _L2
_L2:
        flag1 = flag;
        if (true) goto _L10; else goto _L9
_L9:
    }

    void b(ParsedTrace parsedtrace)
    {
        String s = c(parsedtrace);
        if (s == null)
        {
            return;
        }
        String s1;
        HttpPost httppost;
        Exception exception;
        IOException ioexception;
        if (d)
        {
            s1 = b();
        } else
        {
            s1 = null;
        }
        httppost = new HttpPost((new StringBuilder()).append("https://rink.hockeyapp.net/api/2/apps/").append(c).append("/crashes/upload").toString());
        httppost.setEntity(a(s, s1));
        (new DefaultHttpClient()).execute(httppost);
        if (s1 != null)
        {
            (new File(s1)).delete();
        }
        (new File(s)).delete();
        return;
        ioexception;
        Timber.c((new StringBuilder()).append("Failed to upload crashes: ").append(ioexception.getMessage()).toString(), new Object[0]);
        if (s1 != null)
        {
            (new File(s1)).delete();
        }
        (new File(s)).delete();
        return;
        exception;
        if (s1 != null)
        {
            (new File(s1)).delete();
        }
        (new File(s)).delete();
        throw exception;
    }

    String c(ParsedTrace parsedtrace)
    {
        Object obj;
        BufferedWriter bufferedwriter;
        Exception exception;
        String s;
        PackageInfo packageinfo;
        String s2;
        try
        {
            s = UUID.randomUUID().toString();
            String s1 = (new StringBuilder()).append(a).append('/').append(s).append(".faketrace").toString();
            Timber.a((new StringBuilder()).append("Writing unhandled exception to: ").append(s1).toString(), new Object[0]);
            packageinfo = b.getPackageManager().getPackageInfo(b.getPackageName(), 0);
            bufferedwriter = new BufferedWriter(new FileWriter(s1));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            bufferedwriter = null;
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            bufferedwriter = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            bufferedwriter = null;
            exception = exception1;
        }
_L2:
        bufferedwriter.write((new StringBuilder()).append("Package: ").append(packageinfo.packageName).append('\n').toString());
        bufferedwriter.write((new StringBuilder()).append("Version: ").append(packageinfo.versionCode).append('\n').toString());
        bufferedwriter.write((new StringBuilder()).append("Android: ").append(android.os.Build.VERSION.RELEASE).append('\n').toString());
        bufferedwriter.write((new StringBuilder()).append("Manufacturer: ").append(Build.MANUFACTURER).append('\n').toString());
        bufferedwriter.write((new StringBuilder()).append("Model: ").append(Build.MODEL).append('\n').toString());
        bufferedwriter.write((new StringBuilder()).append("Date: ").append(new Date()).append('\n').toString());
        bufferedwriter.write("\n");
        if (parsedtrace.b == null)
        {
            break MISSING_BLOCK_LABEL_352;
        }
        bufferedwriter.write(parsedtrace.b);
_L1:
        bufferedwriter.flush();
        s2 = (new StringBuilder()).append(s).append(".faketrace").toString();
        CloseableUtils.a(bufferedwriter);
        return s2;
        bufferedwriter.write("EMPTY STACK TRACE");
          goto _L1
        obj;
_L5:
        ((Exception) (obj)).printStackTrace();
        CloseableUtils.a(bufferedwriter);
        return null;
_L3:
        CloseableUtils.a(bufferedwriter);
        throw exception;
        exception;
        if (true) goto _L3; else goto _L2
        obj;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
