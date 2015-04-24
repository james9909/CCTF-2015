// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.networkmanager.media.MediaDownloader;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;

// Referenced classes of package com.snapchat.android.ui:
//            ImageResource

class a extends AsyncTask
{

    final Context a;
    final ImageResource b;
    private final MediaDownloader c = MediaDownloader.a();

    protected transient Bitmap a(Void avoid[])
    {
        Bitmap bitmap;
        if (!ImageResource.a(b).V() && !ImageResource.a(b).W() && !c.a(ImageResource.a(b)))
        {
            break MISSING_BLOCK_LABEL_123;
        }
        bitmap = b.a(a, ImageResource.a(b).d(), new CbcEncryptionAlgorithm(ImageResource.a(b).E(), ImageResource.a(b).F()));
        return bitmap;
        ExternalStorageUnavailableException externalstorageunavailableexception;
        externalstorageunavailableexception;
        Timber.e("ImageResource", (new StringBuilder()).append("Failed to load chat media image ").append(externalstorageunavailableexception).toString(), new Object[0]);
        return null;
    }

    protected void a(Bitmap bitmap)
    {
        ImageResource imageresource = b;
        b b1;
        if (bitmap == null)
        {
            b1 = d;
        } else
        {
            b1 = c;
        }
        imageresource.a(b1);
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Bitmap)obj);
    }

    protected void onPreExecute()
    {
        b.a(b);
    }

    public leException(ImageResource imageresource, Context context)
    {
        b = imageresource;
        super();
        a = context;
    }
}
