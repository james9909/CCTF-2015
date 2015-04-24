// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap;

import android.graphics.Bitmap;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.threading.ThreadUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.snapchat.android.util.bitmap:
//            BitmapSizeComparator, BitmapUtils

public class BitmapPool
{

    private static final BitmapPool a = new BitmapPool();
    private final PriorityQueue b = new PriorityQueue(6, new BitmapSizeComparator());
    private final Map c = new ConcurrentHashMap();
    private final Object d = new Object();

    protected BitmapPool()
    {
    }

    public static BitmapPool a()
    {
        return a;
    }

    private void a(int i, Bitmap bitmap)
    {
        synchronized (d)
        {
            b.add(bitmap);
            if (ReleaseManager.f())
            {
                String s = c();
                c.put(Integer.valueOf(i), s);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void a(BitmapPool bitmappool, int i, Bitmap bitmap)
    {
        bitmappool.a(i, bitmap);
    }

    private String c()
    {
        StackTraceElement astacktraceelement[] = (StackTraceElement[])Thread.getAllStackTraces().get(Thread.currentThread());
        if (astacktraceelement != null && astacktraceelement.length > 5)
        {
            StackTraceElement stacktraceelement = astacktraceelement[5];
            return (new StringBuilder()).append(stacktraceelement.getClassName()).append(".").append(stacktraceelement.getMethodName()).toString();
        } else
        {
            return "UNKNOWN";
        }
    }

    private String c(Bitmap bitmap)
    {
        int i = bitmap.hashCode();
        if (c.containsKey(Integer.valueOf(i)))
        {
            return (String)c.get(Integer.valueOf(i));
        } else
        {
            return "UNKNOWN";
        }
    }

    public Bitmap a(android.graphics.BitmapFactory.Options options)
    {
        return a(options, false);
    }

    public Bitmap a(android.graphics.BitmapFactory.Options options, boolean flag)
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        Iterator iterator = b.iterator();
_L1:
        Bitmap bitmap;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_157;
        }
        bitmap = (Bitmap)iterator.next();
        if (bitmap != null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        Timber.c("BitmapPool", "Bitmap has been GC'd.", new Object[0]);
        iterator.remove();
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        if (!bitmap.isRecycled())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!ReleaseManager.f()) goto _L1; else goto _L2
_L2:
        throw new RuntimeException((new StringBuilder()).append("Bitmap is recycled, last added by ").append(c(bitmap)).toString());
        if (!a(bitmap, options, flag)) goto _L1; else goto _L3
_L3:
        Timber.c("BitmapPool", "Found a matching candidate.", new Object[0]);
        bitmap.eraseColor(0);
        iterator.remove();
        obj;
        JVM INSTR monitorexit ;
        return bitmap;
        obj;
        JVM INSTR monitorexit ;
        Timber.c("BitmapPool", "No matching candidates found.", new Object[0]);
        return null;
    }

    public void a(Bitmap bitmap)
    {
        a(bitmap, false);
    }

    public void a(Bitmap bitmap, boolean flag)
    {
        if (bitmap == null || bitmap.getConfig() == null || !bitmap.isMutable() || bitmap.isRecycled())
        {
            return;
        }
        int i = bitmap.hashCode();
        if (flag)
        {
            a(i, bitmap);
            return;
        } else
        {
            ThreadUtils.b(new Runnable(i, bitmap) {

                final int a;
                final Bitmap b;
                final BitmapPool c;

                public void run()
                {
                    BitmapPool.a(c, a, b);
                }

            
            {
                c = BitmapPool.this;
                a = i;
                b = bitmap;
                super();
            }
            });
            return;
        }
    }

    protected boolean a(Bitmap bitmap, android.graphics.BitmapFactory.Options options, boolean flag)
    {
        boolean flag1 = true;
        if (!BitmapUtils.a(options.inPreferredConfig, bitmap.getConfig()))
        {
            return false;
        }
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            return b(bitmap, options, flag);
        }
        if (bitmap.getWidth() != options.outWidth || bitmap.getHeight() != options.outHeight || options.inSampleSize != flag1)
        {
            flag1 = false;
        }
        return flag1;
    }

    protected int b(Bitmap bitmap)
    {
        return bitmap.getAllocationByteCount();
    }

    public void b()
    {
        synchronized (d)
        {
            Timber.c("BitmapPool", "Clearing bitmap pool", new Object[0]);
            b.clear();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected boolean b(Bitmap bitmap, android.graphics.BitmapFactory.Options options, boolean flag)
    {
        if (!flag || bitmap.getHeight() == options.outHeight && bitmap.getWidth() == options.outWidth)
        {
            int i = (options.outWidth / options.inSampleSize) * (options.outHeight / options.inSampleSize) * BitmapUtils.a(options.inPreferredConfig);
            if (i <= b(bitmap) && options.inPreferredConfig != bitmap.getConfig())
            {
                Timber.c("BitmapPool", "Using a candidate bitmap whose config != target bitmap config", new Object[0]);
            }
            if (i <= b(bitmap))
            {
                return true;
            }
        }
        return false;
    }

}
