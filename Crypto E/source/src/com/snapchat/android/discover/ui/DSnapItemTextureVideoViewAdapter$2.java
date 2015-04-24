// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.bitmap.OnBitmapDecodedCallback;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapItemTextureVideoViewAdapter

class a extends OnBitmapDecodedCallback
{

    final DSnapItemTextureVideoViewAdapter a;

    public void a(BitmapDecodeResult bitmapdecoderesult, AsyncLoadBitmapRequest asyncloadbitmaprequest)
    {
        super.a(bitmapdecoderesult, asyncloadbitmaprequest);
        DSnapItemTextureVideoViewAdapter.b(a, true);
        DSnapItemTextureVideoViewAdapter.a(a);
    }

    I(DSnapItemTextureVideoViewAdapter dsnapitemtexturevideoviewadapter)
    {
        a = dsnapitemtexturevideoviewadapter;
        super();
    }
}
