// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.support.v4.util.LruCache;
import com.snapchat.android.Timber;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.networkmanager.media.MediaDownloader;
import com.snapchat.android.util.ScExecutors;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;

// Referenced classes of package com.snapchat.android.ui:
//            SnapchatResource

public class ImageResource extends SnapchatResource
{
    class LoadChatMediaTask extends AsyncTask
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
            SnapchatResource.ResourceStatus resourcestatus;
            if (bitmap == null)
            {
                resourcestatus = SnapchatResource.ResourceStatus.d;
            } else
            {
                resourcestatus = SnapchatResource.ResourceStatus.c;
            }
            imageresource.a(resourcestatus);
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
            b.a(SnapchatResource.ResourceStatus.b);
        }

        public LoadChatMediaTask(Context context)
        {
            b = ImageResource.this;
            super();
            a = context;
        }
    }


    protected static final LruCache a;
    private ChatMedia d;

    public ImageResource(ChatMedia chatmedia, SnapchatResource.ResourceListener resourcelistener)
    {
        d = chatmedia;
        b = SnapchatResource.ResourceStatus.a;
        a(resourcelistener);
    }

    static ChatMedia a(ImageResource imageresource)
    {
        return imageresource.d;
    }

    public static void b()
    {
        a.evictAll();
    }

    public Bitmap a(Context context)
    {
        Bitmap bitmap = (Bitmap)a.get(d.d());
        StringBuilder stringbuilder = (new StringBuilder()).append("getImageBitmap - memory cache lookup: ");
        String s;
        if (bitmap == null)
        {
            s = "MISS";
        } else
        {
            s = "HIT";
        }
        Timber.c("ImageResource", stringbuilder.append(s).append(" status ").append(b).toString(), new Object[0]);
        if (bitmap == null)
        {
            if (b != SnapchatResource.ResourceStatus.b)
            {
                a(SnapchatResource.ResourceStatus.a);
            }
            b(context);
            return bitmap;
        } else
        {
            a(SnapchatResource.ResourceStatus.c);
            return bitmap;
        }
    }

    protected Bitmap a(Context context, String s, CbcEncryptionAlgorithm cbcencryptionalgorithm)
    {
        Bitmap bitmap = Caches.g.a(context, s, null, android.graphics.Bitmap.Config.RGB_565);
        if (bitmap == null)
        {
            bitmap = Caches.i.a(context, s, cbcencryptionalgorithm, android.graphics.Bitmap.Config.RGB_565);
        }
        if (bitmap != null)
        {
            a.put(s, bitmap);
        }
        return bitmap;
    }

    public String a()
    {
        if (d == null)
        {
            return null;
        } else
        {
            return d.d();
        }
    }

    public void b(Context context)
    {
        if (b != SnapchatResource.ResourceStatus.c && b != SnapchatResource.ResourceStatus.b)
        {
            (new LoadChatMediaTask(context)).executeOnExecutor(ScExecutors.b, new Void[0]);
        }
    }

    static 
    {
        int i = (int)(0.1F * (float)(int)(Runtime.getRuntime().maxMemory() / 1024L));
        Timber.b("ImageResource", (new StringBuilder()).append("ImageResource LruCache size = ").append(i).append(" kilobytes").toString(), new Object[0]);
        a = new LruCache(i) {

            protected int a(String s, Bitmap bitmap)
            {
                return (int)Math.ceil((float)SnapMediaUtils.e(bitmap) / 1024F);
            }

            protected int sizeOf(Object obj, Object obj1)
            {
                return a((String)obj, (Bitmap)obj1);
            }

        };
    }
}
