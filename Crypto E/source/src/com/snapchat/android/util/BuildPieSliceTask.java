// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.snapchat.android.Timber;
import com.snapchat.android.fragments.stories.StoriesListItem;
import com.snapchat.android.model.StorySnap;
import com.snapchat.android.networkmanager.media.MediaDownloader;
import com.snapchat.android.util.bitmap.BitmapPool;
import com.snapchat.android.util.cache.Cache;
import com.snapchat.android.util.cache.Caches;
import com.snapchat.android.util.cache.ExternalStorageUnavailableException;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class BuildPieSliceTask extends AsyncTask
{
    public static final class StoryThumbnailType extends Enum
    {

        public static final StoryThumbnailType a;
        public static final StoryThumbnailType b;
        public static final StoryThumbnailType c;
        private static final StoryThumbnailType d[];

        public static StoryThumbnailType valueOf(String s)
        {
            return (StoryThumbnailType)Enum.valueOf(com/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType, s);
        }

        public static StoryThumbnailType[] values()
        {
            return (StoryThumbnailType[])d.clone();
        }

        static 
        {
            a = new StoryThumbnailType("ALL_SNAPS", 0);
            b = new StoryThumbnailType("SOME_SNAPS", 1);
            c = new StoryThumbnailType("OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY", 2);
            StoryThumbnailType astorythumbnailtype[] = new StoryThumbnailType[3];
            astorythumbnailtype[0] = a;
            astorythumbnailtype[1] = b;
            astorythumbnailtype[2] = c;
            d = astorythumbnailtype;
        }

        private StoryThumbnailType(String s, int i)
        {
            super(s, i);
        }
    }


    private final MediaDownloader a;
    private final BitmapPool b;
    private final Context c;
    private final List d;
    private final StoryThumbnailType e;

    protected BuildPieSliceTask(Context context, MediaDownloader mediadownloader, BitmapPool bitmappool, List list, StoriesListItem storieslistitem)
    {
        int i;
        i = 0;
        super();
        d = new ArrayList();
        if (list == null || list.size() <= 0)
        {
            throw new RuntimeException("Null or zero-length stories array passed to BuildPieSliceTask()");
        }
        c = context;
        b = bitmappool;
        a = mediadownloader;
        e = storieslistitem.h();
        static class _cls2
        {

            static final int a[];

            static 
            {
                a = new int[StoryThumbnailType.values().length];
                try
                {
                    a[StoryThumbnailType.a.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    a[StoryThumbnailType.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[StoryThumbnailType.b.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls2.a[e.ordinal()];
        JVM INSTR tableswitch 1 3: default 108
    //                   1 109
    //                   2 155
    //                   3 182;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            StorySnap storysnap1 = (StorySnap)iterator.next();
            d.add(storysnap1);
        }
          goto _L1
_L3:
        d.add(list.get(-1 + list.size()));
        return;
_L4:
        long l1;
        long l2;
        long l = ((StorySnap)list.get(0)).ae();
        l1 = (((StorySnap)list.get(-1 + list.size())).ae() - l) / 5L;
        l2 = l + l1;
_L10:
        if (i >= list.size()) goto _L1; else goto _L5
_L5:
        StorySnap storysnap = (StorySnap)list.get(i);
        if (i <= 0 || i >= -1 + list.size()) goto _L7; else goto _L6
_L6:
        if (storysnap.ae() <= l2) goto _L9; else goto _L8
_L8:
        i++;
          goto _L10
_L9:
        l2 += l1;
_L7:
        d.add(storysnap);
          goto _L8
    }

    public BuildPieSliceTask(Context context, List list, StoriesListItem storieslistitem)
    {
        this(context, MediaDownloader.a(), BitmapPool.a(), list, storieslistitem);
    }

    private float a(long l)
    {
        return (24F - (float)(Long.valueOf((new Date()).getTime()).longValue() - l) / 3600000F) / 24F;
    }

    protected static RectF a(int i, int j)
    {
        if (i == j)
        {
            return new RectF(0.0F, 0.0F, j, j);
        } else
        {
            int k = i / 2;
            int l = j / 2;
            int i1 = l - k;
            int j1 = l + k;
            return new RectF(i1, i1, j1, j1);
        }
    }

    static MediaDownloader a(BuildPieSliceTask buildpieslicetask)
    {
        return buildpieslicetask.a;
    }

    private void a()
    {
        ExecutorService executorservice = Executors.newCachedThreadPool();
        CountDownLatch countdownlatch = new CountDownLatch(d.size());
        for (Iterator iterator = d.iterator(); iterator.hasNext(); executorservice.execute(new Runnable((StorySnap)iterator.next(), countdownlatch) {

        final StorySnap a;
        final CountDownLatch b;
        final BuildPieSliceTask c;

        public void run()
        {
            if (!a.aw())
            {
                if (a.aA() != null)
                {
                    try
                    {
                        BuildPieSliceTask.a(c).a(a, a.aA());
                    }
                    catch (ExternalStorageUnavailableException externalstorageunavailableexception)
                    {
                        throw new RuntimeException(externalstorageunavailableexception.getMessage());
                    }
                } else
                {
                    Object aobj[] = new Object[1];
                    aobj[0] = a.d();
                    Timber.e("BuildPieSliceTask", "Thumbnail url for %s is null!", aobj);
                }
            }
            b.countDown();
        }

            
            {
                c = BuildPieSliceTask.this;
                a = storysnap;
                b = countdownlatch;
                super();
            }
    })) { }
        try
        {
            countdownlatch.await();
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            Timber.a("BuildPieSliceTask", interruptedexception);
        }
    }

    private void a(Canvas canvas)
    {
        Paint paint = new Paint();
        paint.setColor(c.getResources().getColor(0x7f080037));
        paint.setAntiAlias(true);
        canvas.drawArc(new RectF(0.0F, 0.0F, canvas.getWidth(), canvas.getHeight()), -90F - 360F, 360F, true, paint);
    }

    protected transient Bitmap a(Void avoid[])
    {
        if (d.size() <= 0)
        {
            return null;
        }
        a();
        boolean flag;
        Bitmap bitmap;
        Canvas canvas;
        Paint paint;
        byte byte0;
        Iterator iterator;
        boolean flag1;
        if (!d.isEmpty() && ((StorySnap)d.get(0)).e())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        bitmap = Bitmap.createBitmap(102, 102, android.graphics.Bitmap.Config.ARGB_8888);
        canvas = new Canvas(bitmap);
        paint = new Paint();
        paint.setAntiAlias(true);
        if (flag)
        {
            a(canvas);
        }
        if (flag)
        {
            byte0 = 95;
        } else
        {
            byte0 = 102;
        }
        iterator = d.iterator();
        flag1 = false;
        do
        {
            if (iterator.hasNext())
            {
                StorySnap storysnap = (StorySnap)iterator.next();
                String s = storysnap.ay();
                Bitmap bitmap1 = Caches.b.a(c, s, null, android.graphics.Bitmap.Config.RGB_565);
                if (bitmap1 == null)
                {
                    CbcEncryptionAlgorithm cbcencryptionalgorithm = storysnap.R();
                    CbcEncryptionAlgorithm cbcencryptionalgorithm1 = new CbcEncryptionAlgorithm(cbcencryptionalgorithm.a(), cbcencryptionalgorithm.c());
                    String s1 = storysnap.d();
                    Bitmap bitmap2;
                    Bitmap bitmap3;
                    RectF rectf;
                    float f;
                    float f1;
                    float f2;
                    BitmapShader bitmapshader;
                    Matrix matrix;
                    if (TextUtils.isEmpty(s1))
                    {
                        s1 = s;
                    }
                    bitmap1 = Caches.b.a(c, s1, cbcencryptionalgorithm1, android.graphics.Bitmap.Config.RGB_565);
                    if (bitmap1 == null)
                    {
                        Timber.e("BuildPieSliceTask", "Failed to load bitmap from internal memory", new Object[0]);
                        continue;
                    }
                }
                if (bitmap1.getWidth() != byte0 || bitmap1.getHeight() != byte0)
                {
                    bitmap2 = Bitmap.createScaledBitmap(bitmap1, byte0, byte0, true);
                    b.a(bitmap1);
                    bitmap3 = bitmap2;
                } else
                {
                    bitmap3 = bitmap1;
                }
                rectf = a(byte0, bitmap.getWidth());
                if (e == StoryThumbnailType.c)
                {
                    f = 1.0F;
                } else
                {
                    f = a(storysnap.ae());
                }
                f1 = 360F * f;
                f2 = -90F - f1;
                bitmapshader = new BitmapShader(bitmap3, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP);
                matrix = new Matrix();
                matrix.setTranslate(rectf.left, rectf.top);
                bitmapshader.setLocalMatrix(matrix);
                paint.setShader(bitmapshader);
                canvas.drawArc(rectf, f2, f1, true, paint);
                flag1 = true;
            } else
            {
                if (flag1)
                {
                    return bitmap;
                }
                return null;
            }
        } while (true);
    }

    protected abstract void a(Bitmap bitmap);

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Bitmap)obj);
    }
}
