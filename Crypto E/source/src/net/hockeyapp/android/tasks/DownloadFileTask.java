// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.tasks;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.UUID;
import net.hockeyapp.android.Strings;
import net.hockeyapp.android.listeners.DownloadFileListener;

public class DownloadFileTask extends AsyncTask
{

    private Context a;
    private DownloadFileListener b;
    private String c;
    private String d;
    private String e;
    private ProgressDialog f;

    public DownloadFileTask(Context context, String s, DownloadFileListener downloadfilelistener)
    {
        a = context;
        c = s;
        d = (new StringBuilder()).append(UUID.randomUUID()).append(".apk").toString();
        e = (new StringBuilder()).append(Environment.getExternalStorageDirectory().getAbsolutePath()).append("/Download").toString();
        b = downloadfilelistener;
    }

    static DownloadFileListener a(DownloadFileTask downloadfiletask)
    {
        return downloadfiletask.b;
    }

    private String b()
    {
        return (new StringBuilder()).append(c).append("&type=apk").toString();
    }

    protected transient Boolean a(String as[])
    {
        URLConnection urlconnection;
        int i;
        File file;
        try
        {
            urlconnection = a(new URL(b()));
            urlconnection.connect();
            i = urlconnection.getContentLength();
            file = new File(e);
            if (!file.mkdirs() && !file.exists())
            {
                throw new IOException((new StringBuilder()).append("Could not create the dir(s):").append(file.getAbsolutePath()).toString());
            }
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return Boolean.valueOf(false);
        }
        BufferedInputStream bufferedinputstream;
        FileOutputStream fileoutputstream;
        byte abyte0[];
        File file1 = new File(file, d);
        bufferedinputstream = new BufferedInputStream(urlconnection.getInputStream());
        fileoutputstream = new FileOutputStream(file1);
        abyte0 = new byte[1024];
        long l = 0L;
_L1:
        int j = bufferedinputstream.read(abyte0);
        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_211;
        }
        l += j;
        Integer ainteger[] = new Integer[1];
        ainteger[0] = Integer.valueOf((int)((100L * l) / (long)i));
        publishProgress(ainteger);
        fileoutputstream.write(abyte0, 0, j);
          goto _L1
        fileoutputstream.flush();
        fileoutputstream.close();
        bufferedinputstream.close();
        boolean flag;
        Boolean boolean1;
        if (l > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        boolean1 = Boolean.valueOf(flag);
        return boolean1;
    }

    protected URLConnection a(URL url)
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)url.openConnection();
        a(httpurlconnection);
        int i = httpurlconnection.getResponseCode();
        if (i == 301 || i == 302)
        {
            URL url1 = new URL(httpurlconnection.getHeaderField("Location"));
            if (!url.getProtocol().equals(url1.getProtocol()))
            {
                httpurlconnection = (HttpURLConnection)url1.openConnection();
                a(httpurlconnection);
            }
        }
        return httpurlconnection;
    }

    public void a()
    {
        a = null;
        f = null;
    }

    public void a(Context context)
    {
        a = context;
    }

    protected void a(Boolean boolean1)
    {
        if (f != null)
        {
            try
            {
                f.dismiss();
            }
            catch (Exception exception1) { }
        }
        if (boolean1.booleanValue())
        {
            b.a(this);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.fromFile(new File(e, d)), "application/vnd.android.package-archive");
            intent.setFlags(0x10000000);
            a.startActivity(intent);
            return;
        }
        try
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(a);
            builder.setTitle(Strings.a(b, 4));
            builder.setMessage(Strings.a(b, 5));
            builder.setNegativeButton(Strings.a(b, 6), new android.content.DialogInterface.OnClickListener() {

                final DownloadFileTask a;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    DownloadFileTask.a(a).a(a, Boolean.valueOf(false));
                }

            
            {
                a = DownloadFileTask.this;
                super();
            }
            });
            builder.setPositiveButton(Strings.a(b, 7), new android.content.DialogInterface.OnClickListener() {

                final DownloadFileTask a;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    DownloadFileTask.a(a).a(a, Boolean.valueOf(true));
                }

            
            {
                a = DownloadFileTask.this;
                super();
            }
            });
            builder.create().show();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected void a(HttpURLConnection httpurlconnection)
    {
        httpurlconnection.addRequestProperty("User-Agent", "HockeySDK/Android");
        httpurlconnection.setInstanceFollowRedirects(true);
        if (android.os.Build.VERSION.SDK_INT <= 9)
        {
            httpurlconnection.setRequestProperty("connection", "close");
        }
    }

    protected transient void a(Integer ainteger[])
    {
        try
        {
            if (f == null)
            {
                f = new ProgressDialog(a);
                f.setProgressStyle(1);
                f.setMessage("Loading...");
                f.setCancelable(false);
                f.show();
            }
            f.setProgress(ainteger[0].intValue());
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }

    protected void onProgressUpdate(Object aobj[])
    {
        a((Integer[])aobj);
    }
}
