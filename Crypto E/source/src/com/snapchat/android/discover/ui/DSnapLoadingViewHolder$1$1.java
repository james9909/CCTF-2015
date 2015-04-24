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

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        DSnapLoadingViewHolder.a(a.a).start();
    }

    it>(it> it>)
    {
        a = it>;
        super();
    }

    // Unreferenced inner class com/snapchat/android/discover/ui/DSnapLoadingViewHolder$1

/* anonymous class */
    class DSnapLoadingViewHolder._cls1 extends OnBitmapDecodedCallback
    {

        final DSnapLoadingViewHolder a;

        public void a(BitmapDecodeResult bitmapdecoderesult, AsyncLoadBitmapRequest asyncloadbitmaprequest)
        {
            super.a(bitmapdecoderesult, asyncloadbitmaprequest);
            DSnapLoadingViewHolder.b(a).post(new DSnapLoadingViewHolder._cls1._cls1(this));
        }

            
            {
                a = dsnaploadingviewholder;
                super();
            }
    }

}
