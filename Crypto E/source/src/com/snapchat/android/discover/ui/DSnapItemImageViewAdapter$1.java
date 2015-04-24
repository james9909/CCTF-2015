// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import com.snapchat.android.discover.ui.media.DSnapMediaListener;
import com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.bitmap.OnBitmapDecodedCallback;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemImageViewAdapter

class t> extends OnBitmapDecodedCallback
{

    final DSnapItemImageViewAdapter a;

    public void a(BitmapDecodeResult bitmapdecoderesult, AsyncLoadBitmapRequest asyncloadbitmaprequest)
    {
        super.a(bitmapdecoderesult, asyncloadbitmaprequest);
        if (DSnapItemImageViewAdapter.a(a) != null)
        {
            DSnapItemImageViewAdapter.a(a).b();
        }
    }

    (DSnapItemImageViewAdapter dsnapitemimageviewadapter)
    {
        a = dsnapitemimageviewadapter;
        super();
    }
}
