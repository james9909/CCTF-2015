// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.util.bitmap.internal.AsyncPlaceholderDrawable;
import com.snapchat.android.util.bitmap.internal.BitmapDecoder;
import com.snapchat.android.util.bitmap.internal.ImageViewBitmapLoaderTask;
import com.snapchat.android.util.threading.ThreadUtils;

// Referenced classes of package com.snapchat.android.util.bitmap:
//            BitmapRecycling, BitmapPool, AsyncLoadBitmapRequest

public class AsyncBitmapLoader
{

    private final BitmapRecycling a;
    private final Resources b;
    private final com.snapchat.android.util.bitmap.internal.ImageViewBitmapLoaderTask.Factory c;
    private final com.snapchat.android.util.bitmap.internal.AsyncPlaceholderDrawable.Factory d;
    private final BitmapDecoder e;

    public AsyncBitmapLoader(Context context)
    {
        this(context.getResources(), new BitmapRecycling(), new com.snapchat.android.util.bitmap.internal.ImageViewBitmapLoaderTask.Factory(), new com.snapchat.android.util.bitmap.internal.AsyncPlaceholderDrawable.Factory(), new BitmapDecoder(context.getResources().getDisplayMetrics(), context.getContentResolver(), context.getResources(), BitmapPool.a()));
    }

    AsyncBitmapLoader(Resources resources, BitmapRecycling bitmaprecycling, com.snapchat.android.util.bitmap.internal.ImageViewBitmapLoaderTask.Factory factory, com.snapchat.android.util.bitmap.internal.AsyncPlaceholderDrawable.Factory factory1, BitmapDecoder bitmapdecoder)
    {
        b = resources;
        a = bitmaprecycling;
        c = factory;
        d = factory1;
        e = bitmapdecoder;
    }

    private boolean a(String s, ImageView imageview)
    {
        if (imageview != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        ImageViewBitmapLoaderTask imageviewbitmaploadertask = b(imageview);
        if (imageviewbitmaploadertask == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (TextUtils.equals(imageviewbitmaploadertask.a(), s))
        {
            continue; /* Loop/switch isn't completed */
        }
        Object aobj[] = new Object[1];
        aobj[0] = imageviewbitmaploadertask.a();
        Timber.a("AsyncBitmapLoader", "Cancelling loader task for bitmap %s", aobj);
        imageviewbitmaploadertask.cancel(true);
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    private ImageViewBitmapLoaderTask b(ImageView imageview)
    {
        if (imageview != null)
        {
            android.graphics.drawable.Drawable drawable = imageview.getDrawable();
            if (drawable instanceof AsyncPlaceholderDrawable)
            {
                return ((AsyncPlaceholderDrawable)drawable).a();
            }
        }
        return null;
    }

    public void a(ImageView imageview)
    {
        if (imageview == null)
        {
            return;
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(imageview.getId());
            Timber.a("AsyncBitmapLoader", "Recycling ImageView %d.", aobj);
            a.a(imageview);
            return;
        }
    }

    public void a(AsyncLoadBitmapRequest asyncloadbitmaprequest)
    {
        ThreadUtils.a();
        ImageView imageview = asyncloadbitmaprequest.b();
        if (a(asyncloadbitmaprequest.a(), imageview))
        {
            Object aobj[] = new Object[2];
            aobj[0] = asyncloadbitmaprequest.a();
            aobj[1] = Integer.valueOf(imageview.getId());
            Timber.a("AsyncBitmapLoader", "Loading bitmap %s asynchronously into ImageView %d", aobj);
            ImageViewBitmapLoaderTask imageviewbitmaploadertask = c.a(asyncloadbitmaprequest, e);
            imageview.setImageDrawable(d.a(b, asyncloadbitmaprequest.e(), imageviewbitmaploadertask));
            String as[] = new String[1];
            as[0] = asyncloadbitmaprequest.a();
            imageviewbitmaploadertask.execute(as);
        }
    }
}
