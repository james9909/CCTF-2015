// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Handler;
import com.snapchat.android.analytics.AnalyticsEvents;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.eventbus.BusProvider;
import com.snapchat.android.util.eventbus.HelloWorldEvent;
import com.snapchat.android.util.eventbus.NoFilterEvent;
import com.squareup.otto.Bus;
import java.util.Locale;

// Referenced classes of package com.snapchat.android.util:
//            SnapMediaUtils

public class PhotoEffectTask extends AsyncTask
{

    private int a;
    private final Handler b = new Handler();
    private final Context c;

    public PhotoEffectTask(String s, Context context)
    {
        c = context;
        if (s == null)
        {
            a = -1;
        } else
        {
            String s1 = s.toLowerCase(Locale.US);
            a = a(s1);
            if (a == -1)
            {
                a = b(s1);
                return;
            }
        }
    }

    private int a(String s)
    {
        int i = s.lastIndexOf("#");
        int j;
        if (i != -1)
        {
            if (s.indexOf(' ', j = i + 1) == -1)
            {
                return s.substring(j, s.length()).hashCode();
            }
        }
        return -1;
    }

    public static void a()
    {
        terminateNativeProcessing();
_L1:
        return;
        UnsatisfiedLinkError unsatisfiedlinkerror;
        unsatisfiedlinkerror;
        if (ReleaseManager.e())
        {
            throw unsatisfiedlinkerror;
        }
          goto _L1
    }

    public static void a(int i, Bitmap bitmap, Bitmap bitmap1, Context context)
    {
        if (bitmap.getConfig() != android.graphics.Bitmap.Config.ARGB_8888 && bitmap.getConfig() != android.graphics.Bitmap.Config.RGB_565)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unsupported bitmap config: ").append(bitmap.getConfig()).toString());
        }
        if (bitmap1.getConfig() != android.graphics.Bitmap.Config.ARGB_8888 && bitmap1.getConfig() != android.graphics.Bitmap.Config.RGB_565)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unsupported bitmap config: ").append(bitmap1.getConfig()).toString());
        }
        if (bitmap.isRecycled())
        {
            throw new IllegalArgumentException("Input bitmap recycled.");
        }
        if (bitmap1.isRecycled())
        {
            throw new IllegalArgumentException("Output bitmap recycled.");
        }
        if (bitmap.getWidth() != bitmap1.getWidth())
        {
            throw new IllegalArgumentException();
        }
        if (bitmap.getHeight() != bitmap1.getHeight())
        {
            throw new IllegalArgumentException();
        }
        if (i == 17)
        {
            try
            {
                a(bitmap, bitmap1, context);
                return;
            }
            catch (UnsatisfiedLinkError unsatisfiedlinkerror)
            {
                AnalyticsEvents.f(unsatisfiedlinkerror.getMessage());
            }
            break MISSING_BLOCK_LABEL_202;
        }
        nativePhotoEffect(i, bitmap, bitmap1);
        return;
    }

    private static void a(Bitmap bitmap, Bitmap bitmap1, Context context)
    {
        Bitmap bitmap2 = SnapMediaUtils.a(context, 0x7f020150, false);
        if (bitmap2 == null)
        {
            throw new NullPointerException();
        } else
        {
            nativeLookupTablePhotoEffect(bitmap, bitmap2, bitmap1);
            bitmap2.recycle();
            return;
        }
    }

    private int b(String s)
    {
        int i = s.lastIndexOf("...");
        if (i == -1)
        {
            return -1;
        }
        int j = s.lastIndexOf(' ', i);
        if (j == -1)
        {
            j = 0;
        }
        return s.substring(j, i).hashCode();
    }

    private static native void nativeLookupTablePhotoEffect(Bitmap bitmap, Bitmap bitmap1, Bitmap bitmap2);

    private static native void nativePhotoEffect(int i, Bitmap bitmap, Bitmap bitmap1);

    private static native void terminateNativeProcessing();

    protected transient Bitmap a(Bitmap abitmap[])
    {
        Bitmap bitmap = abitmap[0];
        a;
        JVM INSTR lookupswitch 21: default 188
    //                   -2134586306: 342
    //                   -1914354435: 190
    //                   -1900895245: 352
    //                   -1524582912: 197
    //                   -1430172959: 422
    //                   -1338968417: 372
    //                   -20616511: 322
    //                   95475: 258
    //                   103158: 412
    //                   29256997: 285
    //                   93832707: 392
    //                   94097687: 294
    //                   95351100: 402
    //                   106671290: 303
    //                   109324790: 267
    //                   170546239: 362
    //                   581399968: 382
    //                   921111605: 276
    //                   1184744569: 220
    //                   1332899135: 312
    //                   1486442645: 332;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22
_L1:
        return null;
_L3:
        AnalyticsEvents.b("POPULAR");
        return null;
_L5:
        AnalyticsEvents.b("HELLO_WORLD_FILTER");
        b.post(new Runnable() {

            final PhotoEffectTask a;

            public void run()
            {
                BusProvider.a().a(new HelloWorldEvent());
            }

            
            {
                a = PhotoEffectTask.this;
                super();
            }
        });
        return null;
_L20:
        byte byte0;
        String s;
        s = "NO_FILTER";
        byte0 = -1;
_L23:
        if (bitmap != null)
        {
            AnalyticsEvents.b(s);
            if (byte0 == -1)
            {
                b.post(new Runnable() {

                    final PhotoEffectTask a;

                    public void run()
                    {
                        BusProvider.a().a(new NoFilterEvent());
                    }

            
            {
                a = PhotoEffectTask.this;
                super();
            }
                });
                return null;
            } else
            {
                Bitmap bitmap1 = SnapMediaUtils.a(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
                a(byte0, bitmap, bitmap1, c);
                return bitmap1;
            }
        }
        if (true) goto _L1; else goto _L9
_L9:
        s = "B&W";
        byte0 = 0;
          goto _L23
_L16:
        byte0 = 1;
        s = "SEPIA";
          goto _L23
_L19:
        byte0 = 2;
        s = "INVERT";
          goto _L23
_L11:
        byte0 = 3;
        s = "INSTASNAP";
          goto _L23
_L13:
        byte0 = 4;
        s = "BULGE";
          goto _L23
_L15:
        byte0 = 5;
        s = "PINCH";
          goto _L23
_L21:
        byte0 = 6;
        s = "BLACK_HOLE";
          goto _L23
_L8:
        byte0 = 7;
        s = "RADIOACTIVE";
          goto _L23
_L22:
        byte0 = 8;
        s = "SKETCHY";
          goto _L23
_L2:
        byte0 = 9;
        s = "MIRROR";
          goto _L23
_L4:
        byte0 = 10;
        s = "SELECTIVE_COLOR";
          goto _L23
_L17:
        byte0 = 11;
        s = "LIGHTEN";
          goto _L23
_L7:
        byte0 = 12;
        s = "DARKEN";
          goto _L23
_L18:
        byte0 = 13;
        s = "EQUALIZE";
          goto _L23
_L12:
        byte0 = 14;
        s = "BLOOM";
          goto _L23
_L14:
        byte0 = 15;
        s = "DANOZ";
          goto _L23
_L10:
        byte0 = 16;
        s = "TONE_MAP";
          goto _L23
_L6:
        byte0 = 17;
        s = "MISS_ETIKATE";
          goto _L23
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Bitmap[])aobj);
    }

    static 
    {
        try
        {
            System.loadLibrary("stlport_shared");
            System.loadLibrary("photoeffect");
        }
        catch (Throwable throwable)
        {
            (new ErrorMetric("Photo filter failed to load library")).a(throwable).c();
        }
    }
}
