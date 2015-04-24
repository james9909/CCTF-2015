// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.google.android.gms.internal:
//            gc, ma

class vu
    implements vu
{

    final gc vt;
    final boolean vu;

    public Drawable a(InputStream inputstream)
    {
        byte abyte1[] = ma.d(inputstream);
        byte abyte0[] = abyte1;
_L2:
        if (abyte0 == null)
        {
            vt.a(2, vu);
            return null;
        }
        break; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        abyte0 = null;
        if (true) goto _L2; else goto _L1
_L1:
        android.graphics.Bitmap bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        if (bitmap == null)
        {
            vt.a(2, vu);
            return null;
        } else
        {
            return new BitmapDrawable(Resources.getSystem(), bitmap);
        }
    }

    public Object b(InputStream inputstream)
    {
        return a(inputstream);
    }

    public Drawable cZ()
    {
        vt.a(2, vu);
        return null;
    }

    public Object da()
    {
        return cZ();
    }

    ble(gc gc1, boolean flag)
    {
        vt = gc1;
        vu = flag;
        super();
    }
}
