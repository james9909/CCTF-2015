// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.util.Pair;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.MemoryAnalytics;
import com.snapchat.android.database.SharedPreferenceKey;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.bitmap.BitmapPool;
import com.snapchat.android.util.debug.ReleaseManager;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.apache.commons.io.FileUtils;

// Referenced classes of package com.snapchat.android.util:
//            ViewUtils

public class SnapMediaUtils
{

    private static final MemoryAnalytics a = new MemoryAnalytics();

    public SnapMediaUtils()
    {
    }

    public static int a(DisplayMetrics displaymetrics, int i, int j)
    {
        int k = Math.min(displaymetrics.widthPixels, 3379);
        int l = Math.min(displaymetrics.heightPixels, 3379);
        int i1 = 1;
        if (i > k && j > l)
        {
            int j1 = j / 2;
            int k1;
            for (k1 = i / 2; j1 / i1 > l && k1 / i1 > k; i1 *= 2) { }
            if (j1 / i1 == l && k1 / i1 == k)
            {
                i1 *= 2;
            }
        }
        return i1;
    }

    public static Bitmap a(int i, int j, android.graphics.Bitmap.Config config)
    {
        if (i <= 0 || j <= 0)
        {
            return null;
        }
        Bitmap bitmap;
        try
        {
            bitmap = Bitmap.createBitmap(i, j, config);
        }
        catch (OutOfMemoryError outofmemoryerror)
        {
            a.a("safeCreateBitmap(int, int, Bitmap.Config)", outofmemoryerror);
            return null;
        }
        return bitmap;
    }

    public static Bitmap a(Context context, int i)
    {
        return a(context, i, true);
    }

    public static Bitmap a(Context context, int i, boolean flag)
    {
        Resources resources;
        if (context == null)
        {
            throw new NullPointerException();
        }
        resources = context.getResources();
        if (resources != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        android.graphics.BitmapFactory.Options options;
        options = new android.graphics.BitmapFactory.Options();
        options.inScaled = flag;
        Bitmap bitmap = BitmapFactory.decodeResource(resources, i, options);
        return bitmap;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        a.a("safeDecodeResource(Context, int, boolean)", outofmemoryerror);
        return null;
        Exception exception;
        exception;
        if (ReleaseManager.e())
        {
            throw new RuntimeException("Could not get drawable! Bad resource perchance?", exception);
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static Bitmap a(Context context, byte abyte0[])
    {
        return a(context, abyte0, android.graphics.Bitmap.Config.ARGB_8888).b();
    }

    protected static Bitmap a(Bitmap bitmap, float f1)
    {
        if (f1 == 1.0F)
        {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.postScale(f1, f1);
        Bitmap bitmap1 = a(bitmap, matrix);
        if (bitmap != bitmap1)
        {
            BitmapPool.a().a(bitmap);
        }
        return bitmap1;
    }

    public static Bitmap a(Bitmap bitmap, Context context)
    {
        int i = ViewUtils.a(PreferenceManager.getDefaultSharedPreferences(context).getInt(SharedPreferenceKey.aj.a(), 0)) - ViewUtils.a(ViewUtils.c(context));
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        float f1 = Math.min(bitmap.getWidth(), bitmap.getHeight());
        float f2 = Math.max(bitmap.getWidth(), bitmap.getHeight());
        float f3 = Math.min(displaymetrics.widthPixels, displaymetrics.heightPixels);
        float f4 = Math.max(displaymetrics.widthPixels, displaymetrics.heightPixels);
        float f5;
        Matrix matrix;
        if (f2 / f1 > f4 / f3)
        {
            f5 = f3 / f1;
        } else
        {
            f5 = f4 / f2;
        }
        matrix = new Matrix();
        if (i != 0)
        {
            matrix.postRotate(i);
        }
        if (f5 != 1.0F)
        {
            matrix.postScale(f5, f5);
        }
        if (matrix.isIdentity())
        {
            return bitmap;
        } else
        {
            return a(bitmap, matrix);
        }
    }

    public static Bitmap a(Bitmap bitmap, Matrix matrix)
    {
        int i = bitmap.getWidth();
        int j = bitmap.getHeight();
        Bitmap bitmap1;
        try
        {
            bitmap1 = Bitmap.createBitmap(bitmap, 0, 0, i, j, matrix, true);
        }
        catch (OutOfMemoryError outofmemoryerror)
        {
            a.a("safeTransformBitmap(Bitmap, Matrix)", outofmemoryerror);
            return bitmap;
        }
        return bitmap1;
    }

    public static Bitmap a(Bitmap bitmap, DisplayMetrics displaymetrics)
    {
        return a(bitmap, d(bitmap, displaymetrics));
    }

    public static Bitmap a(Uri uri, Context context)
    {
        Bitmap bitmap2 = android.provider.MediaStore.Images.Media.getBitmap(context.getContentResolver(), uri);
        Bitmap bitmap = bitmap2;
_L2:
        if (bitmap == null)
        {
            return null;
        }
        break; /* Loop/switch isn't completed */
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        Timber.a("SnapMediaUtils", filenotfoundexception);
        bitmap = null;
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        Timber.a("SnapMediaUtils", ioexception);
        bitmap = null;
        if (true) goto _L2; else goto _L1
_L1:
        DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
        if (bitmap.getWidth() > bitmap.getHeight())
        {
            Matrix matrix = new Matrix();
            matrix.postRotate(90F);
            Bitmap bitmap1 = a(bitmap, matrix);
            bitmap.recycle();
            return b(bitmap1, displaymetrics);
        } else
        {
            return b(bitmap, displaymetrics);
        }
    }

    public static android.graphics.BitmapFactory.Options a(DisplayMetrics displaymetrics, int i, int j, android.graphics.Bitmap.Config config)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inSampleSize = a(displaymetrics, i, j);
        options.inMutable = true;
        options.inPreferredConfig = config;
        options.outHeight = j;
        options.outWidth = i;
        return options;
    }

    protected static Pair a(Bitmap bitmap, DisplayMetrics displaymetrics, boolean flag)
    {
        int i = displaymetrics.widthPixels;
        int j = displaymetrics.heightPixels;
        if (!flag && i < j)
        {
            i = displaymetrics.heightPixels;
            j = displaymetrics.widthPixels;
        }
        int k;
        int l;
        if (i < bitmap.getWidth())
        {
            l = (bitmap.getWidth() - i) / 2;
            k = 0;
        } else
        if (j < bitmap.getHeight())
        {
            k = (bitmap.getHeight() - j) / 2;
            l = 0;
        } else
        {
            k = 0;
            l = 0;
        }
        return Pair.create(Integer.valueOf(l), Integer.valueOf(k));
    }

    public static BitmapDecodeResult a(Context context, byte abyte0[], android.graphics.Bitmap.Config config)
    {
        boolean flag;
        android.graphics.BitmapFactory.Options options1;
        flag = true;
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = flag;
        BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
        if (options.outHeight <= 0 || options.outWidth <= 0)
        {
            return new BitmapDecodeResult();
        }
        options1 = b(context.getResources().getDisplayMetrics(), options.outWidth, options.outHeight);
        options1.inBitmap = BitmapPool.a().a(options1);
        Bitmap bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options1);
        OutOfMemoryError outofmemoryerror;
        BitmapDecodeResult bitmapdecoderesult;
        if (options1.inBitmap == null)
        {
            flag = false;
        }
        bitmapdecoderesult = new BitmapDecodeResult(bitmap, flag);
        return bitmapdecoderesult;
        outofmemoryerror;
        a.a("safeDecodeByteArray(Context, byte[], Bitmap.Config)", outofmemoryerror);
_L2:
        return new BitmapDecodeResult();
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        if (ReleaseManager.f())
        {
            StringWriter stringwriter = new StringWriter();
            PrintWriter printwriter = new PrintWriter(stringwriter);
            illegalargumentexception.printStackTrace(printwriter);
            printwriter.flush();
            a(options1, stringwriter.toString());
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected static void a(android.graphics.BitmapFactory.Options options, String s)
    {
        Bitmap bitmap = options.inBitmap;
        String s1 = (new StringBuilder()).append("Failed to decode bitmap. \n").append(s).append("\n").append("options width: %d\n").append("options height: %d\n").append("options sample size: %d\n").append("options config: %s\n").append("reused bitmap width: %d\n").append("reused bitmap height: %d\n").append("reused bitmap config: %s\n").append("reused bitmap mutable?: %b\n").append("reused bitmap recycled?: %b\n").toString();
        Object aobj[] = new Object[9];
        aobj[0] = Integer.valueOf(options.outWidth);
        aobj[1] = Integer.valueOf(options.outHeight);
        aobj[2] = Integer.valueOf(options.inSampleSize);
        aobj[3] = options.inPreferredConfig.name();
        aobj[4] = Integer.valueOf(bitmap.getWidth());
        aobj[5] = Integer.valueOf(bitmap.getHeight());
        aobj[6] = bitmap.getConfig().name();
        aobj[7] = Boolean.valueOf(bitmap.isMutable());
        aobj[8] = Boolean.valueOf(bitmap.isRecycled());
        throw new IllegalArgumentException(String.format(s1, aobj));
    }

    public static byte[] a(Bitmap bitmap)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 90, bytearrayoutputstream);
        return bytearrayoutputstream.toByteArray();
    }

    public static byte[] a(Bitmap bitmap, int i)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, i, bytearrayoutputstream);
        return bytearrayoutputstream.toByteArray();
    }

    public static byte[] a(Bitmap bitmap, Bitmap bitmap1)
    {
        Bitmap bitmap2 = f(bitmap);
        if (bitmap1 != null)
        {
            Bitmap bitmap3 = f(bitmap1);
            (new Canvas(bitmap2)).drawBitmap(bitmap3, 0.0F, 0.0F, null);
            bitmap3.recycle();
        }
        byte abyte0[] = a(bitmap2);
        bitmap2.recycle();
        return abyte0;
    }

    public static byte[] a(String s)
    {
        String s1 = Uri.parse(s).getPath();
        if (s1 == null)
        {
            return null;
        }
        File file = new File(s1);
        byte abyte0[];
        try
        {
            abyte0 = FileUtils.readFileToByteArray(file);
        }
        catch (IOException ioexception)
        {
            Timber.a("SnapMediaUtils", ioexception);
            return null;
        }
        return abyte0;
    }

    public static Bitmap b(Bitmap bitmap, int i)
    {
        if (bitmap.getWidth() > bitmap.getHeight())
        {
            Matrix matrix = new Matrix();
            int j = ViewUtils.a(i);
            matrix.postRotate(j);
            Bitmap bitmap1 = a(bitmap, matrix);
            bitmap.recycle();
            if (ReleaseManager.f() && bitmap1.getWidth() > bitmap.getHeight())
            {
                throw new RuntimeException((new StringBuilder()).append("bitmapToPortrait failed. degrees = ").append(j).append(". input = ").append(bitmap.getWidth()).append("x").append(bitmap.getHeight()).toString());
            }
            bitmap = bitmap1;
        }
        return bitmap;
    }

    public static Bitmap b(Bitmap bitmap, Context context)
    {
        int i = ViewUtils.a(PreferenceManager.getDefaultSharedPreferences(context).getInt(SharedPreferenceKey.aj.a(), 0));
        int j = ViewUtils.a(ViewUtils.c(context));
        if (i == j)
        {
            return bitmap;
        } else
        {
            Matrix matrix = new Matrix();
            matrix.postRotate(i - j);
            return a(bitmap, matrix);
        }
    }

    public static Bitmap b(Bitmap bitmap, DisplayMetrics displaymetrics)
    {
        return c(a(bitmap, displaymetrics), displaymetrics);
    }

    public static android.graphics.BitmapFactory.Options b(DisplayMetrics displaymetrics, int i, int j)
    {
        return a(displaymetrics, i, j, android.graphics.Bitmap.Config.ARGB_8888);
    }

    public static byte[] b(Bitmap bitmap)
    {
        return a(bitmap, ((Bitmap) (null)));
    }

    public static Bitmap c(Bitmap bitmap)
    {
        Bitmap bitmap1;
        try
        {
            bitmap1 = Bitmap.createBitmap(bitmap);
        }
        catch (OutOfMemoryError outofmemoryerror)
        {
            a.a("safeCreateBitmap(Bitmap)", outofmemoryerror);
            return null;
        }
        return bitmap1;
    }

    public static Bitmap c(Bitmap bitmap, DisplayMetrics displaymetrics)
    {
        Pair pair = e(bitmap, displaymetrics);
        int i = ((Integer)pair.first).intValue();
        int j = ((Integer)pair.second).intValue();
        if (displaymetrics.widthPixels < bitmap.getWidth() && i > 0)
        {
            int k = Math.min(bitmap.getHeight(), displaymetrics.heightPixels);
            bitmap = Bitmap.createBitmap(bitmap, i, 0, displaymetrics.widthPixels, k);
        } else
        if (displaymetrics.heightPixels < bitmap.getHeight() && j > 0)
        {
            return Bitmap.createBitmap(bitmap, 0, j, Math.min(bitmap.getWidth(), displaymetrics.widthPixels), displaymetrics.heightPixels);
        }
        return bitmap;
    }

    protected static float d(Bitmap bitmap, DisplayMetrics displaymetrics)
    {
        float f1 = displaymetrics.widthPixels;
        float f2 = displaymetrics.heightPixels;
        float f3 = bitmap.getWidth();
        float f4 = bitmap.getHeight();
        if (f4 / f3 > f2 / f1)
        {
            return f1 / f3;
        } else
        {
            return f2 / f4;
        }
    }

    public static Bitmap d(Bitmap bitmap)
    {
        float f1;
        if ((float)bitmap.getWidth() / (float)bitmap.getHeight() > 0.5633803F)
        {
            f1 = 1136F / (float)bitmap.getHeight();
        } else
        {
            f1 = 640F / (float)bitmap.getWidth();
        }
        if (f1 <= 1.0F)
        {
            return bitmap;
        } else
        {
            Matrix matrix = new Matrix();
            matrix.postScale(f1, f1);
            return a(bitmap, matrix);
        }
    }

    public static int e(Bitmap bitmap)
    {
        if (bitmap == null)
        {
            return 0;
        }
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            return bitmap.getAllocationByteCount();
        } else
        {
            return bitmap.getRowBytes() * bitmap.getHeight();
        }
    }

    public static Pair e(Bitmap bitmap, DisplayMetrics displaymetrics)
    {
        return a(bitmap, displaymetrics, ViewUtils.d(SnapchatApplication.e()));
    }

    private static Bitmap f(Bitmap bitmap)
    {
        Bitmap bitmap1 = Bitmap.createScaledBitmap(bitmap, 102, (int)(102F * ((float)bitmap.getHeight() / (float)bitmap.getWidth())), true);
        int i = bitmap1.getHeight() / 2 - bitmap1.getWidth() / 2;
        Bitmap bitmap2;
        if (i >= 0)
        {
            bitmap2 = Bitmap.createBitmap(bitmap1, 0, i, bitmap1.getWidth(), bitmap1.getWidth());
        } else
        {
            bitmap2 = Bitmap.createBitmap(bitmap1, -i, 0, bitmap1.getHeight(), bitmap1.getHeight());
        }
        bitmap1.recycle();
        return bitmap2;
    }

    public static Matrix f(Bitmap bitmap, DisplayMetrics displaymetrics)
    {
        Pair pair = e(bitmap, displaymetrics);
        int i = -1 * ((Integer)pair.first).intValue();
        int j = -1 * ((Integer)pair.second).intValue();
        Matrix matrix = new Matrix();
        matrix.setTranslate(i, j);
        return matrix;
    }

}
