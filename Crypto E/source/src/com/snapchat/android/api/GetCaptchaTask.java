// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.model.server.ServerResponse;
import com.snapchat.android.util.ScTextUtils;
import com.snapchat.android.util.SnapMediaUtils;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.ResponseBody;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

// Referenced classes of package com.snapchat.android.api:
//            RequestTask

public class GetCaptchaTask extends RequestTask
{
    class BitmapNamePair
    {

        Bitmap mBitmap;
        String mName;
        final GetCaptchaTask this$0;

        BitmapNamePair(String s, Bitmap bitmap)
        {
            this$0 = GetCaptchaTask.this;
            super();
            mName = s;
            mBitmap = bitmap;
        }
    }

    public static interface GetCaptchaInterface
    {

        public abstract void a();

        public abstract void a(String s, List list);
    }


    private static final String CAPTCHA_ID_PREFIX = "filename=";
    private static final String CAPTCHA_ID_SUFFIX = ".zip";
    private static final String HEADER_NAME = "Content-Disposition";
    private static final String TAG = "GetCaptchaTask";
    private static final String TASK_NAME = "GetCaptchaTask";
    private String mCaptchaId;
    private Context mContext;
    private List mImages;
    private GetCaptchaInterface mInterface;

    public GetCaptchaTask(GetCaptchaInterface getcaptchainterface)
    {
        mContext = SnapchatApplication.e();
        if (mContext == null)
        {
            throw new NullPointerException();
        }
        if (getcaptchainterface == null)
        {
            throw new NullPointerException();
        } else
        {
            mInterface = getcaptchainterface;
            mImages = new ArrayList();
            return;
        }
    }

    protected String a()
    {
        return "/bq/get_captcha";
    }

    protected void a(ServerResponse serverresponse)
    {
        super.a(serverresponse);
        if (mCaptchaId != null && mImages.size() == 9)
        {
            ArrayList arraylist = new ArrayList();
            for (Iterator iterator = mImages.iterator(); iterator.hasNext(); arraylist.add(((BitmapNamePair)iterator.next()).mBitmap)) { }
            mInterface.a(mCaptchaId, arraylist);
            return;
        } else
        {
            mInterface.a();
            return;
        }
    }

    public void a(Headers headers, ResponseBody responsebody)
    {
        Iterator iterator = headers.b().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s2 = (String)iterator.next();
            if (!ScTextUtils.a(s2, "Content-Disposition"))
            {
                continue;
            }
            String s3 = headers.a(s2);
            mCaptchaId = s3.substring(s3.indexOf("filename=") + "filename=".length(), s3.indexOf(".zip"));
            break;
        } while (true);
        if (mCaptchaId == null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("No captchaId could be found in the request header: \n");
            Object aobj[];
            for (Iterator iterator1 = headers.b().iterator(); iterator1.hasNext(); stringbuilder.append(String.format("%s: %s\n", aobj)))
            {
                String s = (String)iterator1.next();
                aobj = new Object[2];
                aobj[0] = s;
                aobj[1] = headers.a(s);
            }

            TreeMap treemap = new TreeMap();
            treemap.put("message", stringbuilder.toString());
            (new ErrorMetric("Failed to parse captcha header")).a(treemap).c();
            return;
        }
        ZipInputStream zipinputstream = new ZipInputStream(responsebody.c());
_L4:
        ZipEntry zipentry = zipinputstream.getNextEntry();
        if (zipentry == null)
        {
            break MISSING_BLOCK_LABEL_390;
        }
        String s1;
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte0[];
        s1 = zipentry.getName();
        bytearrayoutputstream = new ByteArrayOutputStream();
        abyte0 = new byte[1024];
_L3:
        int i = zipinputstream.read(abyte0);
        if (i == -1) goto _L2; else goto _L1
_L1:
        bytearrayoutputstream.write(abyte0, 0, i);
          goto _L3
        Exception exception;
        exception;
        try
        {
            zipinputstream.close();
            throw exception;
        }
        catch (IOException ioexception)
        {
            Timber.a("GetCaptchaTask", ioexception);
        }
_L5:
        if (mImages.size() != 9)
        {
            (new ErrorMetric("Failed to unzip captcha archive.")).c();
        }
        Collections.sort(mImages, new Comparator() {

            final GetCaptchaTask this$0;

            public int a(BitmapNamePair bitmapnamepair, BitmapNamePair bitmapnamepair1)
            {
                return bitmapnamepair.mName.compareTo(bitmapnamepair1.mName);
            }

            public int compare(Object obj, Object obj1)
            {
                return a((BitmapNamePair)obj, (BitmapNamePair)obj1);
            }

            
            {
                this$0 = GetCaptchaTask.this;
                super();
            }
        });
        return;
_L2:
        Bitmap bitmap = SnapMediaUtils.a(mContext, bytearrayoutputstream.toByteArray());
        mImages.add(new BitmapNamePair(s1, bitmap));
          goto _L4
        zipinputstream.close();
          goto _L5
    }

    protected Bundle b()
    {
        Bundle bundle = new Bundle();
        bundle.putString("username", UserPrefs.k());
        return bundle;
    }

    protected String c()
    {
        return "GetCaptchaTask";
    }

    protected void onPostExecute(Object obj)
    {
        a((ServerResponse)obj);
    }
}
