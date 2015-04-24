// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.ImageView;

// Referenced classes of package com.snapchat.android.util.bitmap:
//            AsyncLoadBitmapRequest, OnBitmapDecodedCallback

public static class k
{

    private ImageView a;
    private int b;
    private int c;
    private Bitmap d;
    private OnBitmapDecodedCallback e;
    private boolean f;
    private Bundle g;
    private boolean h;
    private Integer i;
    private byte j[];
    private String k;
    private String l;

    static ImageView a(k k1)
    {
        return k1.a;
    }

    static OnBitmapDecodedCallback b(a a1)
    {
        return a1.e;
    }

    private void b()
    {
        if (a == null)
        {
            throw new IllegalArgumentException("Cannot build AsyncLoadBitmapRequest without ImageView.");
        }
        if (l == null)
        {
            throw new IllegalArgumentException("Cannot build AsyncLoadBitmapRequest with null request ID.");
        }
        Integer integer = i;
        int i1 = 0;
        if (integer != null)
        {
            i1 = 1;
        }
        if (j != null)
        {
            i1++;
        }
        if (k != null)
        {
            i1++;
        }
        if (i1 != 1)
        {
            throw new IllegalArgumentException("Must have exactly one Bitmap source for request!");
        } else
        {
            return;
        }
    }

    static Bitmap c(k k1)
    {
        return k1.d;
    }

    static int d(d d1)
    {
        return d1.b;
    }

    static int e(b b1)
    {
        return b1.c;
    }

    static boolean f(c c1)
    {
        return c1.f;
    }

    static boolean g(f f1)
    {
        return f1.h;
    }

    static Bundle h(h h1)
    {
        return h1.g;
    }

    static String i(g g1)
    {
        return g1.l;
    }

    static Integer j(l l1)
    {
        return l1.i;
    }

    static byte[] k(i i1)
    {
        return i1.j;
    }

    static String l(j j1)
    {
        return j1.k;
    }

    public k a(int i1)
    {
        b = i1;
        return this;
    }

    public b a(Bundle bundle)
    {
        g = bundle;
        return this;
    }

    public g a(ImageView imageview)
    {
        a = imageview;
        return this;
    }

    public a a(OnBitmapDecodedCallback onbitmapdecodedcallback)
    {
        e = onbitmapdecodedcallback;
        return this;
    }

    public e a(String s)
    {
        k = s;
        l = s;
        return this;
    }

    public l a(boolean flag)
    {
        h = flag;
        return this;
    }

    public AsyncLoadBitmapRequest a()
    {
        b();
        return new AsyncLoadBitmapRequest(this, null);
    }

    public b b(int i1)
    {
        c = i1;
        return this;
    }

    public ()
    {
        b = -1;
        c = -1;
        f = false;
        h = true;
        i = null;
        j = null;
        k = null;
    }
}
