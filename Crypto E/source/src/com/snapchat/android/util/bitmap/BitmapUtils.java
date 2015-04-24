// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap;

import android.graphics.Bitmap;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.Timber;
import com.snapchat.android.model.ReceivedSnap;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.threading.ThreadUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class BitmapUtils
{

    private BitmapUtils()
    {
    }

    public static int a(android.graphics.Bitmap.Config config)
    {
label0:
        {
            byte byte0 = 4;
            static class _cls2
            {

                static final int a[];

                static 
                {
                    a = new int[android.graphics.Bitmap.Config.values().length];
                    try
                    {
                        a[android.graphics.Bitmap.Config.ARGB_8888.ordinal()] = 1;
                    }
                    catch (NoSuchFieldError nosuchfielderror) { }
                    try
                    {
                        a[android.graphics.Bitmap.Config.RGB_565.ordinal()] = 2;
                    }
                    catch (NoSuchFieldError nosuchfielderror1) { }
                    try
                    {
                        a[android.graphics.Bitmap.Config.ARGB_4444.ordinal()] = 3;
                    }
                    catch (NoSuchFieldError nosuchfielderror2) { }
                    try
                    {
                        a[android.graphics.Bitmap.Config.ALPHA_8.ordinal()] = 4;
                    }
                    catch (NoSuchFieldError nosuchfielderror3)
                    {
                        return;
                    }
                }
            }

            switch (_cls2.a[config.ordinal()])
            {
            default:
                if (ReleaseManager.e())
                {
                    throw new RuntimeException("Unknown Bitmap config.");
                }
                break;

            case 1: // '\001'
                break;

            case 4: // '\004'
                break label0;

            case 2: // '\002'
            case 3: // '\003'
                byte0 = 2;
                break;
            }
            return byte0;
        }
        return 1;
    }

    public static Bitmap a(FutureTask futuretask)
    {
        if (futuretask == null)
        {
            break MISSING_BLOCK_LABEL_72;
        }
        Bitmap bitmap = (Bitmap)futuretask.get(10L, TimeUnit.MILLISECONDS);
        return bitmap;
        TimeoutException timeoutexception;
        timeoutexception;
        Timber.c("BitmapUtils", "getBitmapFromFutureTask timed out getting bitmap - returning null", new Object[0]);
        return null;
        InterruptedException interruptedexception;
        interruptedexception;
        if (ReleaseManager.f())
        {
            throw new RuntimeException("InterruptedException from preloading snap");
        } else
        {
            return null;
        }
        ExecutionException executionexception;
        executionexception;
        if (ReleaseManager.f())
        {
            throw new RuntimeException("ExecutionException from preloading snap");
        }
        return null;
    }

    public static FutureTask a(ReceivedSnap receivedsnap)
    {
        return new FutureTask(new Callable(receivedsnap) {

            final ReceivedSnap a;

            public Bitmap a()
            {
                ThreadUtils.b();
                if (!a.am())
                {
                    return a.b(SnapchatApplication.e());
                } else
                {
                    return null;
                }
            }

            public Object call()
            {
                return a();
            }

            
            {
                a = receivedsnap;
                super();
            }
        });
    }

    public static boolean a(android.graphics.Bitmap.Config config, android.graphics.Bitmap.Config config1)
    {
        switch (_cls2.a[config1.ordinal()])
        {
        default:
            if (ReleaseManager.e())
            {
                throw new RuntimeException("Unknown Bitmap config.");
            } else
            {
                return false;
            }

        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
            if (config1 != config || a(config1) < a(config))
            {
                break;
            }
            // fall through

        case 1: // '\001'
            return true;
        }
        return false;
    }
}
