// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.cache;

import android.graphics.Bitmap;
import com.snapchat.android.model.AnnotatedMediabryo;
import com.snapchat.android.model.SnapVideobryo;
import com.snapchat.android.util.SnapMediaUtils;
import com.snapchat.android.util.SnapUtils;

// Referenced classes of package com.snapchat.android.util.cache:
//            Caches, Cache

public class SendSnapCacheWrapper
{

    private static SendSnapCacheWrapper a;

    private SendSnapCacheWrapper()
    {
    }

    public static SendSnapCacheWrapper a()
    {
        com/snapchat/android/util/cache/SendSnapCacheWrapper;
        JVM INSTR monitorenter ;
        SendSnapCacheWrapper sendsnapcachewrapper;
        if (a == null)
        {
            a = new SendSnapCacheWrapper();
        }
        sendsnapcachewrapper = a;
        com/snapchat/android/util/cache/SendSnapCacheWrapper;
        JVM INSTR monitorexit ;
        return sendsnapcachewrapper;
        Exception exception;
        exception;
        throw exception;
    }

    protected Bitmap a(Bitmap bitmap)
    {
        return SnapMediaUtils.d(bitmap);
    }

    public void a(AnnotatedMediabryo annotatedmediabryo, boolean flag)
    {
        Bitmap bitmap = annotatedmediabryo.B();
        if (flag)
        {
            bitmap = a(bitmap);
        }
        Caches.h.a(d(annotatedmediabryo), bitmap, android.graphics.Bitmap.CompressFormat.PNG);
    }

    public void a(SnapVideobryo snapvideobryo)
    {
        String s = snapvideobryo.N();
        byte abyte0[] = snapvideobryo.d();
        if (snapvideobryo.B() != null)
        {
            Caches.h.a(s, abyte0);
            return;
        } else
        {
            Caches.h.a(s, snapvideobryo.Q());
            return;
        }
    }

    public byte[] a(AnnotatedMediabryo annotatedmediabryo)
    {
        String s = annotatedmediabryo.N();
        if (SnapUtils.a(annotatedmediabryo))
        {
            return Caches.h.a(s);
        } else
        {
            return Caches.g.a(s);
        }
    }

    public void b(AnnotatedMediabryo annotatedmediabryo)
    {
        String s = annotatedmediabryo.N();
        if (!SnapUtils.a(annotatedmediabryo))
        {
            Caches.g.d(s);
        } else
        {
            Caches.h.d(s);
            Caches.h.d(d(annotatedmediabryo));
        }
        Caches.h.a(true);
    }

    public String c(AnnotatedMediabryo annotatedmediabryo)
    {
        return Caches.h.b(d(annotatedmediabryo));
    }

    public String d(AnnotatedMediabryo annotatedmediabryo)
    {
        return (new StringBuilder()).append(annotatedmediabryo.N()).append("~overlay~").toString();
    }

    public void e(AnnotatedMediabryo annotatedmediabryo)
    {
        String s = annotatedmediabryo.N();
        Caches.g.a(s, annotatedmediabryo.d());
    }
}
