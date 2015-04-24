// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.ImageView;
import com.snapchat.android.util.bitmap.internal.BitmapSource;
import com.snapchat.android.util.bitmap.internal.ByteArrayBitmapSource;
import com.snapchat.android.util.bitmap.internal.ResourceBitmapSource;
import com.snapchat.android.util.bitmap.internal.UriBitmapSource;

// Referenced classes of package com.snapchat.android.util.bitmap:
//            OnBitmapDecodedCallback

public class AsyncLoadBitmapRequest
{
    public static class Builder
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

        static ImageView a(Builder builder)
        {
            return builder.a;
        }

        static OnBitmapDecodedCallback b(Builder builder)
        {
            return builder.e;
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

        static Bitmap c(Builder builder)
        {
            return builder.d;
        }

        static int d(Builder builder)
        {
            return builder.b;
        }

        static int e(Builder builder)
        {
            return builder.c;
        }

        static boolean f(Builder builder)
        {
            return builder.f;
        }

        static boolean g(Builder builder)
        {
            return builder.h;
        }

        static Bundle h(Builder builder)
        {
            return builder.g;
        }

        static String i(Builder builder)
        {
            return builder.l;
        }

        static Integer j(Builder builder)
        {
            return builder.i;
        }

        static byte[] k(Builder builder)
        {
            return builder.j;
        }

        static String l(Builder builder)
        {
            return builder.k;
        }

        public Builder a(int i1)
        {
            b = i1;
            return this;
        }

        public Builder a(Bundle bundle)
        {
            g = bundle;
            return this;
        }

        public Builder a(ImageView imageview)
        {
            a = imageview;
            return this;
        }

        public Builder a(OnBitmapDecodedCallback onbitmapdecodedcallback)
        {
            e = onbitmapdecodedcallback;
            return this;
        }

        public Builder a(String s)
        {
            k = s;
            l = s;
            return this;
        }

        public Builder a(boolean flag)
        {
            h = flag;
            return this;
        }

        public AsyncLoadBitmapRequest a()
        {
            b();
            return new AsyncLoadBitmapRequest(this);
        }

        public Builder b(int i1)
        {
            c = i1;
            return this;
        }

        public Builder()
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


    private final ImageView a;
    private final OnBitmapDecodedCallback b;
    private BitmapSource c;
    private final Bitmap d;
    private final Bundle e;
    private final String f;
    private final boolean g;
    private final int h;
    private final int i;
    private final boolean j;

    private AsyncLoadBitmapRequest(Builder builder)
    {
        a = Builder.a(builder);
        b = Builder.b(builder);
        d = Builder.c(builder);
        h = Builder.d(builder);
        i = Builder.e(builder);
        g = Builder.f(builder);
        j = Builder.g(builder);
        e = Builder.h(builder);
        f = Builder.i(builder);
        if (Builder.j(builder) != null)
        {
            c = new ResourceBitmapSource(Builder.j(builder).intValue());
            return;
        }
        if (Builder.k(builder) != null)
        {
            c = new ByteArrayBitmapSource(Builder.k(builder));
            return;
        } else
        {
            c = new UriBitmapSource(Builder.l(builder));
            return;
        }
    }


    public String a()
    {
        return f;
    }

    public ImageView b()
    {
        return a;
    }

    public int c()
    {
        return h;
    }

    public int d()
    {
        return i;
    }

    public Bitmap e()
    {
        return d;
    }

    public OnBitmapDecodedCallback f()
    {
        return b;
    }

    public Bundle g()
    {
        return e;
    }

    public boolean h()
    {
        return j;
    }

    public BitmapSource i()
    {
        return c;
    }
}
