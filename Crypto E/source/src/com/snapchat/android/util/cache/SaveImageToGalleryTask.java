// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.util.AlertDialogUtils;
import java.io.File;
import java.io.FileOutputStream;

// Referenced classes of package com.snapchat.android.util.cache:
//            FileUtils

public class SaveImageToGalleryTask extends AsyncTask
{

    private Bitmap a;
    public Context c;

    public SaveImageToGalleryTask(Context context, Bitmap bitmap)
    {
        if (bitmap == null)
        {
            throw new NullPointerException();
        } else
        {
            c = context;
            a = bitmap;
            return;
        }
    }

    protected transient Boolean a(Void avoid[])
    {
        String s = (new StringBuilder()).append(FileUtils.c()).append(".jpg").toString();
        File file = new File(FileUtils.b(), s);
        try
        {
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            a.compress(android.graphics.Bitmap.CompressFormat.JPEG, 95, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
        }
        catch (Exception exception)
        {
            (new ErrorMetric("failed to save image")).a(exception).c();
            return Boolean.valueOf(false);
        }
        if (c == null)
        {
            return Boolean.valueOf(false);
        } else
        {
            android.provider.MediaStore.Images.Media.insertImage(c.getContentResolver(), a, s, null);
            FileUtils.a(c, file);
            return Boolean.valueOf(true);
        }
    }

    public void a()
    {
        AlertDialogUtils.a(0x7f0c0170, c);
    }

    protected void a(Boolean boolean1)
    {
label0:
        {
            a.recycle();
            if (c != null)
            {
                if (!boolean1.booleanValue())
                {
                    break label0;
                }
                a();
            }
            return;
        }
        b();
    }

    public void b()
    {
        AlertDialogUtils.a(0x7f0c016f, c);
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }
}
