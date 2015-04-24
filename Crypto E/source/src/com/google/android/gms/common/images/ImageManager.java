// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import android.widget.ImageView;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.lc;
import com.google.android.gms.internal.me;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package com.google.android.gms.common.images:
//            a

public final class ImageManager
{
    final class ImageReceiver extends ResultReceiver
    {

        private final ArrayList SU = new ArrayList();
        final ImageManager SV;
        private final Uri mUri;

        static ArrayList a(ImageReceiver imagereceiver)
        {
            return imagereceiver.SU;
        }

        public void b(com.google.android.gms.common.images.a a1)
        {
            com.google.android.gms.common.internal.b.bb("ImageReceiver.addImageRequest() must be called in the main thread");
            SU.add(a1);
        }

        public void c(com.google.android.gms.common.images.a a1)
        {
            com.google.android.gms.common.internal.b.bb("ImageReceiver.removeImageRequest() must be called in the main thread");
            SU.remove(a1);
        }

        public void jw()
        {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", mUri);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            com.google.android.gms.common.images.ImageManager.b(SV).sendBroadcast(intent);
        }

        public void onReceiveResult(int i, Bundle bundle)
        {
            ParcelFileDescriptor parcelfiledescriptor = (ParcelFileDescriptor)bundle.getParcelable("com.google.android.gms.extra.fileDescriptor");
            ImageManager.f(SV).execute(SV. new c(mUri, parcelfiledescriptor));
        }

        ImageReceiver(Uri uri)
        {
            SV = ImageManager.this;
            super(new Handler(Looper.getMainLooper()));
            mUri = uri;
        }
    }

    public static interface OnImageLoadedListener
    {

        public abstract void onImageLoaded(Uri uri, Drawable drawable, boolean flag);
    }

    static final class a
    {

        static int a(ActivityManager activitymanager)
        {
            return activitymanager.getLargeMemoryClass();
        }
    }

    static final class b extends lc
    {

        private static int H(Context context)
        {
            ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
            boolean flag;
            int i;
            if ((0x100000 & context.getApplicationInfo().flags) != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag && me.kq())
            {
                i = a.a(activitymanager);
            } else
            {
                i = activitymanager.getMemoryClass();
            }
            return (int)(0.33F * (float)(i * 0x100000));
        }

        protected int a(a.a a1, Bitmap bitmap)
        {
            return bitmap.getHeight() * bitmap.getRowBytes();
        }

        protected void a(boolean flag, a.a a1, Bitmap bitmap, Bitmap bitmap1)
        {
            super.entryRemoved(flag, a1, bitmap, bitmap1);
        }

        protected void entryRemoved(boolean flag, Object obj, Object obj1, Object obj2)
        {
            a(flag, (a.a)obj, (Bitmap)obj1, (Bitmap)obj2);
        }

        protected int sizeOf(Object obj, Object obj1)
        {
            return a((a.a)obj, (Bitmap)obj1);
        }

        public b(Context context)
        {
            super(H(context));
        }
    }

    final class c
        implements Runnable
    {

        final ImageManager SV;
        private final ParcelFileDescriptor SW;
        private final Uri mUri;

        public void run()
        {
            ParcelFileDescriptor parcelfiledescriptor;
            Bitmap bitmap;
            boolean flag;
            com.google.android.gms.common.internal.b.bc("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            parcelfiledescriptor = SW;
            bitmap = null;
            flag = false;
            if (parcelfiledescriptor == null) goto _L2; else goto _L1
_L1:
            Bitmap bitmap1 = BitmapFactory.decodeFileDescriptor(SW.getFileDescriptor());
            bitmap = bitmap1;
_L3:
            CountDownLatch countdownlatch;
            OutOfMemoryError outofmemoryerror;
            try
            {
                SW.close();
            }
            catch (IOException ioexception)
            {
                Log.e("ImageManager", "closed failed", ioexception);
            }
_L2:
            countdownlatch = new CountDownLatch(1);
            ImageManager.g(SV).post(SV. new f(mUri, bitmap, flag, countdownlatch));
            try
            {
                countdownlatch.await();
                return;
            }
            catch (InterruptedException interruptedexception)
            {
                Log.w("ImageManager", (new StringBuilder()).append("Latch interrupted while posting ").append(mUri).toString());
            }
            break MISSING_BLOCK_LABEL_170;
            outofmemoryerror;
            Log.e("ImageManager", (new StringBuilder()).append("OOM while loading bitmap for uri: ").append(mUri).toString(), outofmemoryerror);
            flag = true;
            bitmap = null;
              goto _L3
        }

        public c(Uri uri, ParcelFileDescriptor parcelfiledescriptor)
        {
            SV = ImageManager.this;
            super();
            mUri = uri;
            SW = parcelfiledescriptor;
        }
    }

    final class d
        implements Runnable
    {

        final ImageManager SV;
        private final com.google.android.gms.common.images.a SX;

        public void run()
        {
            com.google.android.gms.common.internal.b.bb("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imagereceiver = (ImageReceiver)ImageManager.a(SV).get(SX);
            if (imagereceiver != null)
            {
                ImageManager.a(SV).remove(SX);
                imagereceiver.c(SX);
            }
            a.a a1 = SX.SZ;
            if (a1.uri == null)
            {
                SX.a(com.google.android.gms.common.images.ImageManager.b(SV), ImageManager.c(SV), true);
                return;
            }
            Bitmap bitmap = ImageManager.a(SV, a1);
            if (bitmap != null)
            {
                SX.a(com.google.android.gms.common.images.ImageManager.b(SV), bitmap, true);
                return;
            }
            Long long1 = (Long)ImageManager.d(SV).get(a1.uri);
            if (long1 != null)
            {
                if (SystemClock.elapsedRealtime() - long1.longValue() < 0x36ee80L)
                {
                    SX.a(com.google.android.gms.common.images.ImageManager.b(SV), ImageManager.c(SV), true);
                    return;
                }
                ImageManager.d(SV).remove(a1.uri);
            }
            SX.a(com.google.android.gms.common.images.ImageManager.b(SV), ImageManager.c(SV));
            ImageReceiver imagereceiver1 = (ImageReceiver)ImageManager.e(SV).get(a1.uri);
            if (imagereceiver1 == null)
            {
                imagereceiver1 = SV. new ImageReceiver(a1.uri);
                ImageManager.e(SV).put(a1.uri, imagereceiver1);
            }
            imagereceiver1.b(SX);
            if (!(SX instanceof a.c))
            {
                ImageManager.a(SV).put(SX, imagereceiver1);
            }
            synchronized (ImageManager.ju())
            {
                if (!ImageManager.jv().contains(a1.uri))
                {
                    ImageManager.jv().add(a1.uri);
                    imagereceiver1.jw();
                }
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public d(com.google.android.gms.common.images.a a1)
        {
            SV = ImageManager.this;
            super();
            SX = a1;
        }
    }

    static final class e
        implements ComponentCallbacks2
    {

        private final b SP;

        public void onConfigurationChanged(Configuration configuration)
        {
        }

        public void onLowMemory()
        {
            SP.evictAll();
        }

        public void onTrimMemory(int i)
        {
            if (i >= 60)
            {
                SP.evictAll();
            } else
            if (i >= 20)
            {
                SP.trimToSize(SP.size() / 2);
                return;
            }
        }

        public e(b b1)
        {
            SP = b1;
        }
    }

    final class f
        implements Runnable
    {

        final ImageManager SV;
        private boolean SY;
        private final Bitmap mBitmap;
        private final Uri mUri;
        private final CountDownLatch mm;

        private void a(ImageReceiver imagereceiver, boolean flag)
        {
            ArrayList arraylist = ImageReceiver.a(imagereceiver);
            int i = arraylist.size();
            int j = 0;
            while (j < i) 
            {
                com.google.android.gms.common.images.a a1 = (com.google.android.gms.common.images.a)arraylist.get(j);
                if (flag)
                {
                    a1.a(com.google.android.gms.common.images.ImageManager.b(SV), mBitmap, false);
                } else
                {
                    ImageManager.d(SV).put(mUri, Long.valueOf(SystemClock.elapsedRealtime()));
                    a1.a(com.google.android.gms.common.images.ImageManager.b(SV), ImageManager.c(SV), false);
                }
                if (!(a1 instanceof a.c))
                {
                    ImageManager.a(SV).remove(a1);
                }
                j++;
            }
        }

        public void run()
        {
            com.google.android.gms.common.internal.b.bb("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean flag;
            if (mBitmap != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (ImageManager.h(SV) != null)
            {
                if (SY)
                {
                    ImageManager.h(SV).evictAll();
                    System.gc();
                    SY = false;
                    ImageManager.g(SV).post(this);
                    return;
                }
                if (flag)
                {
                    ImageManager.h(SV).put(new a.a(mUri), mBitmap);
                }
            }
            ImageReceiver imagereceiver = (ImageReceiver)ImageManager.e(SV).remove(mUri);
            if (imagereceiver != null)
            {
                a(imagereceiver, flag);
            }
            mm.countDown();
            synchronized (ImageManager.ju())
            {
                ImageManager.jv().remove(mUri);
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public f(Uri uri, Bitmap bitmap, boolean flag, CountDownLatch countdownlatch)
        {
            SV = ImageManager.this;
            super();
            mUri = uri;
            mBitmap = bitmap;
            SY = flag;
            mm = countdownlatch;
        }
    }


    private static final Object SK = new Object();
    private static HashSet SL = new HashSet();
    private static ImageManager SM;
    private static ImageManager SN;
    private final ExecutorService SO = Executors.newFixedThreadPool(4);
    private final b SP;
    private final kt SQ = new kt();
    private final Map SR = new HashMap();
    private final Map SS = new HashMap();
    private final Map ST = new HashMap();
    private final Context mContext;
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    private ImageManager(Context context, boolean flag)
    {
        mContext = context.getApplicationContext();
        if (flag)
        {
            SP = new b(mContext);
            if (me.kt())
            {
                jt();
            }
        } else
        {
            SP = null;
        }
    }

    static Bitmap a(ImageManager imagemanager, a.a a1)
    {
        return imagemanager.a(a1);
    }

    private Bitmap a(a.a a1)
    {
        if (SP == null)
        {
            return null;
        } else
        {
            return (Bitmap)SP.get(a1);
        }
    }

    static Map a(ImageManager imagemanager)
    {
        return imagemanager.SR;
    }

    static Context b(ImageManager imagemanager)
    {
        return imagemanager.mContext;
    }

    public static ImageManager c(Context context, boolean flag)
    {
        if (flag)
        {
            if (SN == null)
            {
                SN = new ImageManager(context, true);
            }
            return SN;
        }
        if (SM == null)
        {
            SM = new ImageManager(context, false);
        }
        return SM;
    }

    static kt c(ImageManager imagemanager)
    {
        return imagemanager.SQ;
    }

    public static ImageManager create(Context context)
    {
        return c(context, false);
    }

    static Map d(ImageManager imagemanager)
    {
        return imagemanager.ST;
    }

    static Map e(ImageManager imagemanager)
    {
        return imagemanager.SS;
    }

    static ExecutorService f(ImageManager imagemanager)
    {
        return imagemanager.SO;
    }

    static Handler g(ImageManager imagemanager)
    {
        return imagemanager.mHandler;
    }

    static b h(ImageManager imagemanager)
    {
        return imagemanager.SP;
    }

    private void jt()
    {
        mContext.registerComponentCallbacks(new e(SP));
    }

    static Object ju()
    {
        return SK;
    }

    static HashSet jv()
    {
        return SL;
    }

    public void a(com.google.android.gms.common.images.a a1)
    {
        com.google.android.gms.common.internal.b.bb("ImageManager.loadImage() must be called in the main thread");
        (new d(a1)).run();
    }

    public void loadImage(ImageView imageview, int i)
    {
        a(new a.b(imageview, i));
    }

    public void loadImage(ImageView imageview, Uri uri)
    {
        a(new a.b(imageview, uri));
    }

    public void loadImage(ImageView imageview, Uri uri, int i)
    {
        a.b b1 = new a.b(imageview, uri);
        b1.bH(i);
        a(b1);
    }

    public void loadImage(OnImageLoadedListener onimageloadedlistener, Uri uri)
    {
        a(new a.c(onimageloadedlistener, uri));
    }

    public void loadImage(OnImageLoadedListener onimageloadedlistener, Uri uri, int i)
    {
        a.c c1 = new a.c(onimageloadedlistener, uri);
        c1.bH(i);
        a(c1);
    }

}
