// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui;

import android.animation.ObjectAnimator;
import android.widget.ImageView;
import com.snapchat.android.util.bitmap.AsyncLoadBitmapRequest;
import com.snapchat.android.util.bitmap.BitmapDecodeResult;
import com.snapchat.android.util.bitmap.OnBitmapDecodedCallback;

// Referenced classes of package com.snapchat.android.discover.ui:
//            DSnapLoadingViewHolder

class init> extends OnBitmapDecodedCallback
{

    final DSnapLoadingViewHolder a;

    public void a(BitmapDecodeResult bitmapdecoderesult, AsyncLoadBitmapRequest asyncloadbitmaprequest)
    {
        super.a(bitmapdecoderesult, asyncloadbitmaprequest);
        DSnapLoadingViewHolder.b(a).post(new Runnable() {

            final DSnapLoadingViewHolder._cls1 a;

            public void run()
            {
                DSnapLoadingViewHolder.a(a.a).start();
            }

            
            {
                a = DSnapLoadingViewHolder._cls1.this;
                super();
            }
        });
    }

    _cls1.a(DSnapLoadingViewHolder dsnaploadingviewholder)
    {
        a = dsnaploadingviewholder;
        super();
    }
}
