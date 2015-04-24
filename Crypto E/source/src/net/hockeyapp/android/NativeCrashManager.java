// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.app.Activity;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.network.CloseableUtils;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.nio.charset.Charset;
import java.util.Date;
import java.util.UUID;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package net.hockeyapp.android:
//            Constants

public class NativeCrashManager
{

    private NativeCrashManager()
    {
    }

    public static void a(Activity activity, String s)
    {
        Constants.a(activity);
        String as[];
        int i;
        try
        {
            nativeSetUpBreakpad(Constants.a);
        }
        catch (UnsatisfiedLinkError unsatisfiedlinkerror)
        {
            Timber.a("NativeCrashManager", unsatisfiedlinkerror);
        }
        as = a();
        i = as.length;
        for (int j = 0; j < i; j++)
        {
            String s1 = as[j];
            String s2 = b();
            if (s2 != null)
            {
                a(activity, s, s1, s2);
            }
        }

    }

    private static void a(Activity activity, String s, String s1, String s2)
    {
        (new Thread(s, s2, s1, activity) {

            final String a;
            final String b;
            final String c;
            final Activity d;

            public void run()
            {
                DefaultHttpClient defaulthttpclient;
                HttpPost httppost;
                MultipartEntity multipartentity;
                FileBody filebody;
                long l;
                defaulthttpclient = new DefaultHttpClient();
                httppost = new HttpPost((new StringBuilder()).append("https://rink.hockeyapp.net/api/2/apps/").append(a).append("/crashes/upload").toString());
                multipartentity = new MultipartEntity();
                multipartentity.addPart("log", new FileBody(new File(Constants.a, b)));
                filebody = new FileBody(new File(Constants.a, c));
                l = filebody.getContentLength();
                if (l == 0L)
                {
                    d.deleteFile(b);
                    d.deleteFile(c);
                    return;
                }
                multipartentity.addPart("attachment0", filebody);
                if (ReleaseManager.f())
                {
                    multipartentity.addPart("userId", new StringBody(UserPrefs.k(), Charset.forName("UTF-8")));
                    multipartentity.addPart("contact", new StringBody(UserPrefs.v(), Charset.forName("UTF-8")));
                }
                httppost.setEntity(multipartentity);
                defaulthttpclient.execute(httppost);
                d.deleteFile(b);
                d.deleteFile(c);
                return;
                Exception exception1;
                exception1;
                Timber.e("NativeCrashManager", (new StringBuilder()).append("Failed to upload crashes: ").append(exception1.getMessage()).toString(), new Object[0]);
                d.deleteFile(b);
                d.deleteFile(c);
                return;
                Exception exception;
                exception;
                d.deleteFile(b);
                d.deleteFile(c);
                throw exception;
            }

            
            {
                a = s;
                b = s1;
                c = s2;
                d = activity;
                super();
            }
        }).start();
    }

    private static String[] a()
    {
        if (Constants.a != null)
        {
            File file = new File((new StringBuilder()).append(Constants.a).append("/").toString());
            if (!file.mkdir() && !file.exists())
            {
                return new String[0];
            } else
            {
                return file.list(new FilenameFilter() {

                    public boolean accept(File file1, String s)
                    {
                        return s.endsWith(".dmp");
                    }

                });
            }
        } else
        {
            Timber.c("NativeCrashManager", "Can't search for exception as file path is null.", new Object[0]);
            return new String[0];
        }
    }

    private static String b()
    {
        BufferedWriter bufferedwriter;
        String s;
        s = UUID.randomUUID().toString();
        String s1 = (new StringBuilder()).append(Constants.a).append("/").append(s).append(".faketrace").toString();
        Timber.c("NativeCrashManager", (new StringBuilder()).append("Writing unhandled exception to: ").append(s1).toString(), new Object[0]);
        bufferedwriter = new BufferedWriter(new FileWriter(s1));
        String s2;
        bufferedwriter.write((new StringBuilder()).append("Package: ").append(Constants.d).append("\n").toString());
        bufferedwriter.write((new StringBuilder()).append("Version: ").append(Constants.b).append("\n").toString());
        bufferedwriter.write((new StringBuilder()).append("Android: ").append(Constants.e).append("\n").toString());
        bufferedwriter.write((new StringBuilder()).append("Manufacturer: ").append(Constants.g).append("\n").toString());
        bufferedwriter.write((new StringBuilder()).append("Model: ").append(Constants.f).append("\n").toString());
        bufferedwriter.write((new StringBuilder()).append("Date: ").append(new Date()).append("\n").toString());
        bufferedwriter.write("\n");
        bufferedwriter.write("MinidumpContainer");
        bufferedwriter.flush();
        s2 = (new StringBuilder()).append(s).append(".faketrace").toString();
        return s2;
        Exception exception;
        exception;
        bufferedwriter = null;
_L2:
        CloseableUtils.a(bufferedwriter);
        return null;
        Exception exception1;
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static native void nativeSetUpBreakpad(String s);

    static 
    {
        try
        {
            System.loadLibrary("stlport_shared");
            System.loadLibrary("Breakpad");
        }
        catch (Throwable throwable)
        {
            (new ErrorMetric("Failed to load libBreakpad")).a(throwable).c();
        }
    }
}
