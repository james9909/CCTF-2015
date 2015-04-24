// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.kr;
import com.google.android.gms.internal.ks;
import com.google.android.gms.internal.kt;
import java.lang.ref.WeakReference;

public abstract class com.google.android.gms.common.images.a
{
    static final class a
    {

        public final Uri uri;

        public boolean equals(Object obj)
        {
            if (!(obj instanceof a))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            } else
            {
                return r.equal(((a)obj).uri, uri);
            }
        }

        public int hashCode()
        {
            Object aobj[] = new Object[1];
            aobj[0] = uri;
            return r.hashCode(aobj);
        }

        public a(Uri uri1)
        {
            uri = uri1;
        }
    }

    public static final class b extends com.google.android.gms.common.images.a
    {

        private WeakReference Ti;

        private void a(ImageView imageview, Drawable drawable, boolean flag, boolean flag1, boolean flag2)
        {
            boolean flag3;
            int j;
            if (!flag1 && !flag2)
            {
                flag3 = true;
            } else
            {
                flag3 = false;
            }
            if (!flag3 || !(imageview instanceof ks)) goto _L2; else goto _L1
_L1:
            j = ((ks)imageview).jz();
            if (Tb == 0 || j != Tb) goto _L2; else goto _L3
_L3:
            return;
_L2:
            boolean flag4 = b(flag, flag1);
            Object obj;
            if (Tc && drawable != null)
            {
                obj = drawable.getConstantState().newDrawable();
            } else
            {
                obj = drawable;
            }
            if (flag4)
            {
                obj = a(imageview.getDrawable(), ((Drawable) (obj)));
            }
            imageview.setImageDrawable(((Drawable) (obj)));
            if (imageview instanceof ks)
            {
                ks ks1 = (ks)imageview;
                Uri uri;
                int i;
                if (flag2)
                {
                    uri = SZ.uri;
                } else
                {
                    uri = null;
                }
                ks1.h(uri);
                if (flag3)
                {
                    i = Tb;
                } else
                {
                    i = 0;
                }
                ks1.bJ(i);
            }
            if (flag4)
            {
                ((kq)obj).startTransition(250);
                return;
            }
            if (true) goto _L3; else goto _L4
_L4:
        }

        protected void a(Drawable drawable, boolean flag, boolean flag1, boolean flag2)
        {
            ImageView imageview = (ImageView)Ti.get();
            if (imageview != null)
            {
                a(imageview, drawable, flag, flag1, flag2);
            }
        }

        public boolean equals(Object obj)
        {
            if (!(obj instanceof b))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            b b1 = (b)obj;
            ImageView imageview = (ImageView)Ti.get();
            ImageView imageview1 = (ImageView)b1.Ti.get();
            boolean flag;
            if (imageview1 != null && imageview != null && r.equal(imageview1, imageview))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            return flag;
        }

        public int hashCode()
        {
            return 0;
        }

        public b(ImageView imageview, int i)
        {
            super(null, i);
            com.google.android.gms.common.internal.b.i(imageview);
            Ti = new WeakReference(imageview);
        }

        public b(ImageView imageview, Uri uri)
        {
            super(uri, 0);
            com.google.android.gms.common.internal.b.i(imageview);
            Ti = new WeakReference(imageview);
        }
    }

    public static final class c extends com.google.android.gms.common.images.a
    {

        private WeakReference Tj;

        protected void a(Drawable drawable, boolean flag, boolean flag1, boolean flag2)
        {
            if (!flag1)
            {
                ImageManager.OnImageLoadedListener onimageloadedlistener = (ImageManager.OnImageLoadedListener)Tj.get();
                if (onimageloadedlistener != null)
                {
                    onimageloadedlistener.onImageLoaded(SZ.uri, drawable, flag2);
                }
            }
        }

        public boolean equals(Object obj)
        {
            if (!(obj instanceof c))
            {
                return false;
            }
            if (this == obj)
            {
                return true;
            }
            c c1 = (c)obj;
            ImageManager.OnImageLoadedListener onimageloadedlistener = (ImageManager.OnImageLoadedListener)Tj.get();
            ImageManager.OnImageLoadedListener onimageloadedlistener1 = (ImageManager.OnImageLoadedListener)c1.Tj.get();
            boolean flag;
            if (onimageloadedlistener1 != null && onimageloadedlistener != null && r.equal(onimageloadedlistener1, onimageloadedlistener) && r.equal(c1.SZ, SZ))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            return flag;
        }

        public int hashCode()
        {
            Object aobj[] = new Object[1];
            aobj[0] = SZ;
            return r.hashCode(aobj);
        }

        public c(ImageManager.OnImageLoadedListener onimageloadedlistener, Uri uri)
        {
            super(uri, 0);
            com.google.android.gms.common.internal.b.i(onimageloadedlistener);
            Tj = new WeakReference(onimageloadedlistener);
        }
    }


    final a SZ;
    protected int Ta;
    protected int Tb;
    protected boolean Tc;
    protected ImageManager.OnImageLoadedListener Td;
    private boolean Te;
    private boolean Tf;
    private boolean Tg;
    protected int Th;

    public com.google.android.gms.common.images.a(Uri uri, int i)
    {
        Ta = 0;
        Tb = 0;
        Tc = false;
        Te = true;
        Tf = false;
        Tg = true;
        SZ = new a(uri);
        Tb = i;
    }

    private Drawable a(Context context, kt kt1, int i)
    {
        Resources resources = context.getResources();
        if (Th > 0)
        {
            com.google.android.gms.internal.kt.a a1 = new com.google.android.gms.internal.kt.a(i, Th);
            Drawable drawable = (Drawable)kt1.get(a1);
            if (drawable == null)
            {
                drawable = resources.getDrawable(i);
                if ((1 & Th) != 0)
                {
                    drawable = a(resources, drawable);
                }
                kt1.put(a1, drawable);
            }
            return drawable;
        } else
        {
            return resources.getDrawable(i);
        }
    }

    protected Drawable a(Resources resources, Drawable drawable)
    {
        return kr.a(resources, drawable);
    }

    protected kq a(Drawable drawable, Drawable drawable1)
    {
        if (drawable != null)
        {
            if (drawable instanceof kq)
            {
                drawable = ((kq)drawable).jx();
            }
        } else
        {
            drawable = null;
        }
        return new kq(drawable, drawable1);
    }

    void a(Context context, Bitmap bitmap, boolean flag)
    {
        com.google.android.gms.common.internal.b.i(bitmap);
        if ((1 & Th) != 0)
        {
            bitmap = kr.a(bitmap);
        }
        BitmapDrawable bitmapdrawable = new BitmapDrawable(context.getResources(), bitmap);
        if (Td != null)
        {
            Td.onImageLoaded(SZ.uri, bitmapdrawable, true);
        }
        a(((Drawable) (bitmapdrawable)), flag, false, true);
    }

    void a(Context context, kt kt1)
    {
        if (Tg)
        {
            int i = Ta;
            Drawable drawable = null;
            if (i != 0)
            {
                drawable = a(context, kt1, Ta);
            }
            a(drawable, false, true, false);
        }
    }

    void a(Context context, kt kt1, boolean flag)
    {
        int i = Tb;
        Drawable drawable = null;
        if (i != 0)
        {
            drawable = a(context, kt1, Tb);
        }
        if (Td != null)
        {
            Td.onImageLoaded(SZ.uri, drawable, false);
        }
        a(drawable, flag, false, false);
    }

    protected abstract void a(Drawable drawable, boolean flag, boolean flag1, boolean flag2);

    protected boolean b(boolean flag, boolean flag1)
    {
        return Te && !flag1 && (!flag || Tf);
    }

    public void bH(int i)
    {
        Tb = i;
    }
}
