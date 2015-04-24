// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.tasks;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import net.hockeyapp.android.Constants;
import net.hockeyapp.android.utils.ConnectionManager;
import net.hockeyapp.android.utils.Util;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

public class SendFeedbackTask extends AsyncTask
{

    private Context a;
    private Handler b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private boolean i;
    private ProgressDialog j;

    public SendFeedbackTask(Context context, String s, String s1, String s2, String s3, String s4, String s5, 
            Handler handler, boolean flag)
    {
        a = context;
        c = s;
        d = s1;
        e = s2;
        f = s3;
        g = s4;
        h = s5;
        b = handler;
        i = flag;
        if (context != null)
        {
            Constants.a(context);
        }
    }

    private HashMap a(HttpClient httpclient)
    {
        HashMap hashmap;
        hashmap = new HashMap();
        hashmap.put("type", "send");
        UrlEncodedFormEntity urlencodedformentity;
        ArrayList arraylist = new ArrayList();
        arraylist.add(new BasicNameValuePair("name", d));
        arraylist.add(new BasicNameValuePair("email", e));
        arraylist.add(new BasicNameValuePair("subject", f));
        arraylist.add(new BasicNameValuePair("text", g));
        arraylist.add(new BasicNameValuePair("bundle_identifier", Constants.d));
        arraylist.add(new BasicNameValuePair("bundle_short_version", Constants.c));
        arraylist.add(new BasicNameValuePair("bundle_version", Constants.b));
        arraylist.add(new BasicNameValuePair("os_version", Constants.e));
        arraylist.add(new BasicNameValuePair("oem", Constants.g));
        arraylist.add(new BasicNameValuePair("model", Constants.f));
        urlencodedformentity = new UrlEncodedFormEntity(arraylist, "UTF-8");
        urlencodedformentity.setContentEncoding("UTF-8");
        if (h == null) goto _L2; else goto _L1
_L1:
        HttpPut httpput;
        c = (new StringBuilder()).append(c).append(h).append("/").toString();
        httpput = new HttpPut(c);
        HttpPost httppost = null;
_L10:
        if (httpput == null) goto _L4; else goto _L3
_L3:
        HttpResponse httpresponse;
        httpput.setEntity(urlencodedformentity);
        httpresponse = httpclient.execute(httpput);
_L8:
        if (httpresponse == null) goto _L6; else goto _L5
_L5:
        hashmap.put("response", EntityUtils.toString(httpresponse.getEntity()));
        hashmap.put("status", (new StringBuilder()).append("").append(httpresponse.getStatusLine().getStatusCode()).toString());
        return hashmap;
_L2:
        httppost = new HttpPost(c);
        httpput = null;
        continue; /* Loop/switch isn't completed */
_L4:
        httpresponse = null;
        if (httppost == null) goto _L8; else goto _L7
_L7:
        HttpResponse httpresponse1;
        httppost.setEntity(urlencodedformentity);
        httpresponse1 = httpclient.execute(httppost);
        httpresponse = httpresponse1;
          goto _L8
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        unsupportedencodingexception.printStackTrace();
        return hashmap;
        ClientProtocolException clientprotocolexception;
        clientprotocolexception;
        clientprotocolexception.printStackTrace();
        return hashmap;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
_L6:
        return hashmap;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private HashMap b(HttpClient httpclient)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder()).append(c).append(Util.a(h)).toString());
        HttpGet httpget = new HttpGet(stringbuilder.toString());
        HashMap hashmap = new HashMap();
        hashmap.put("type", "fetch");
        try
        {
            HttpResponse httpresponse = httpclient.execute(httpget);
            hashmap.put("response", EntityUtils.toString(httpresponse.getEntity()));
            hashmap.put("status", (new StringBuilder()).append("").append(httpresponse.getStatusLine().getStatusCode()).toString());
        }
        catch (ClientProtocolException clientprotocolexception)
        {
            clientprotocolexception.printStackTrace();
            return hashmap;
        }
        catch (IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
            return hashmap;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return hashmap;
        }
        return hashmap;
    }

    protected transient HashMap a(Void avoid[])
    {
        HttpClient httpclient = ConnectionManager.a().b();
        if (i && h != null)
        {
            return b(httpclient);
        }
        if (!i)
        {
            return a(httpclient);
        } else
        {
            return null;
        }
    }

    public void a()
    {
        a = null;
        j = null;
    }

    protected void a(HashMap hashmap)
    {
        if (j != null)
        {
            try
            {
                j.dismiss();
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        if (b != null)
        {
            Message message = new Message();
            Bundle bundle = new Bundle();
            if (hashmap != null)
            {
                bundle.putString("request_type", (String)hashmap.get("type"));
                bundle.putString("feedback_response", (String)hashmap.get("response"));
                bundle.putString("feedback_status", (String)hashmap.get("status"));
            } else
            {
                bundle.putString("request_type", "unknown");
            }
            message.setData(bundle);
            b.sendMessage(message);
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((HashMap)obj);
    }

    protected void onPreExecute()
    {
        String s = "Sending feedback..";
        if (i)
        {
            s = "Retrieving discussions...";
        }
        if (j == null || !j.isShowing())
        {
            j = ProgressDialog.show(a, "", s, true, false);
        }
    }
}
