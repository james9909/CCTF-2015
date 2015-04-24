// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap.internal;

import android.content.ContentResolver;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.snapchat.android.Timber;
import com.snapchat.android.util.debug.ReleaseManager;
import com.snapchat.android.util.network.CloseableUtils;
import java.io.IOException;

// Referenced classes of package com.snapchat.android.util.bitmap.internal:
//            BitmapSource

public class UriBitmapSource
    implements BitmapSource
{

    private final String a;
    private ContentResolver b;

    public UriBitmapSource(String s)
    {
        if (!s.startsWith("file://"))
        {
            a = (new StringBuilder()).append("file://").append(s).toString();
            return;
        } else
        {
            a = s;
            return;
        }
    }

    public Bitmap a(android.graphics.BitmapFactory.Options options)
    {
        Bitmap bitmap1;
        if (b == null)
        {
            boolean flag = ReleaseManager.e();
            bitmap1 = null;
            if (flag)
            {
                throw new IllegalStateException("Cannot decode bitmap without calling prepare!");
            }
            break MISSING_BLOCK_LABEL_69;
        }
        java.io.InputStream inputstream1;
        Uri uri = Uri.parse(a);
        inputstream1 = b.openInputStream(uri);
        java.io.InputStream inputstream = inputstream1;
        Bitmap bitmap = BitmapFactory.decodeStream(inputstream, null, options);
        bitmap1 = bitmap;
        CloseableUtils.a(inputstream);
        return bitmap1;
        Object obj;
        obj;
        inputstream = null;
_L4:
        Timber.a("UriBitmapSource", ((Throwable) (obj)));
        CloseableUtils.a(inputstream);
        return null;
        Exception exception1;
        exception1;
        Exception exception;
        inputstream = null;
        exception = exception1;
_L2:
        CloseableUtils.a(inputstream);
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        continue; /* Loop/switch isn't completed */
        obj;
        inputstream = null;
        continue; /* Loop/switch isn't completed */
        obj;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(ContentResolver contentresolver, Resources resources)
    {
        b = contentresolver;
    }
}
