// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.bitmap.internal;

import android.os.AsyncTask;
import com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.bitmap.OnBitmapDecodedCallback;

// Referenced classes of package com.snapchat.android.util.bitmap.internal:
//            BitmapDecoder

public class ImageViewBitmapLoaderTask extends AsyncTask
{
    public static class Factory
    {

        public ImageViewBitmapLoaderTask a(AsyncLoadBitmapRequest asyncloadbitmaprequest, BitmapDecoder bitmapdecoder)
        {
            return new ImageViewBitmapLoaderTask(asyncloadbitmaprequest, bitmapdecoder);
        }

        public Factory()
        {
        }
    }


    private final AsyncLoadBitmapRequest a;
    private final BitmapDecoder b;
    private final OnBitmapDecodedCallback c;

    public ImageViewBitmapLoaderTask(AsyncLoadBitmapRequest asyncloadbitmaprequest, BitmapDecoder bitmapdecoder)
    {
        this(asyncloadbitmaprequest, bitmapdecoder, new OnBitmapDecodedCallback());
    }

    ImageViewBitmapLoaderTask(AsyncLoadBitmapRequest asyncloadbitmaprequest, BitmapDecoder bitmapdecoder, OnBitmapDecodedCallback onbitmapdecodedcallback)
    {
        a = asyncloadbitmaprequest;
        b = bitmapdecoder;
        c = onbitmapdecodedcallback;
    }

    protected transient BitmapDecodeResult a(String as[])
    {
        return b.a(a.i(), a.d(), a.c(), a.h());
    }

    public String a()
    {
        return a.a();
    }

    protected void a(BitmapDecodeResult bitmapdecoderesult)
    {
        OnBitmapDecodedCallback onbitmapdecodedcallback = a.f();
        if (onbitmapdecodedcallback != null)
        {
            onbitmapdecodedcallback.a(bitmapdecoderesult, a);
            return;
        } else
        {
            c.a(bitmapdecoderesult, a);
            return;
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((BitmapDecodeResult)obj);
    }
}
