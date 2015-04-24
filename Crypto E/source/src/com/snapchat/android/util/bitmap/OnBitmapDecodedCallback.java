// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap;

import android.text.TextUtils;
import android.widget.ImageView;
import com.snapchat.android.util.bitmap.internal.AsyncPlaceholderDrawable;
import com.snapchat.android.util.bitmap.internal.ImageViewBitmapLoaderTask;
import com.snapchat.android.util.threading.ThreadUtils;

// Referenced classes of package com.snapchat.android.util.bitmap:
//            BitmapDecodeResult, AsyncLoadBitmapRequest

public class OnBitmapDecodedCallback
{

    public OnBitmapDecodedCallback()
    {
    }

    public void a(BitmapDecodeResult bitmapdecoderesult, AsyncLoadBitmapRequest asyncloadbitmaprequest)
    {
        ThreadUtils.a();
        if (bitmapdecoderesult.b() != null)
        {
            ImageView imageview = asyncloadbitmaprequest.b();
            if (imageview != null)
            {
                android.graphics.drawable.Drawable drawable = imageview.getDrawable();
                if (drawable instanceof AsyncPlaceholderDrawable)
                {
                    AsyncPlaceholderDrawable asyncplaceholderdrawable = (AsyncPlaceholderDrawable)drawable;
                    if (TextUtils.equals(asyncloadbitmaprequest.a(), asyncplaceholderdrawable.a().a()))
                    {
                        imageview.setImageBitmap(bitmapdecoderesult.b());
                    }
                }
            }
        }
    }
}
