// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.r;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.ks;
import java.lang.ref.WeakReference;

// Referenced classes of package com.google.android.gms.common.images:
//            a

public static final class Ti extends a
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
        if (!(obj instanceof a))
        {
            return false;
        }
        if (this == obj)
        {
            return true;
        }
        a a1 = (a)obj;
        ImageView imageview = (ImageView)Ti.get();
        ImageView imageview1 = (ImageView)a1.Ti.get();
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

    public ntState(ImageView imageview, int i)
    {
        super(null, i);
        com.google.android.gms.common.internal.b.i(imageview);
        Ti = new WeakReference(imageview);
    }

    public Ti(ImageView imageview, Uri uri)
    {
        super(uri, 0);
        com.google.android.gms.common.internal.b.i(imageview);
        Ti = new WeakReference(imageview);
    }
}
