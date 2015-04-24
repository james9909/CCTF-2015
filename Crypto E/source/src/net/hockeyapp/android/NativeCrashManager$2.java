// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android;

import android.app.Activity;
import com.snapchat.android.Timber;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.File;
import java.nio.charset.Charset;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.mime.MultipartEntity;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package net.hockeyapp.android:
//            NativeCrashManager, Constants

static final class d extends Thread
{

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

    ody(String s, String s1, String s2, Activity activity)
    {
        a = s;
        b = s1;
        c = s2;
        d = activity;
        super();
    }
}
