// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.platform;

import com.addlive.impl.ADLNativeWrapper;
import com.addlive.impl.ADLServiceImpl;

// Referenced classes of package com.addlive.platform:
//            ADL, InitState

class this._cls0
    implements Runnable
{

    final ADL this$0;

    public void run()
    {
        if (ADL.access$000(ADL.this) == null)
        {
            return;
        } else
        {
            InitState _tmp = ADL.access$102(InitState.REALEASING);
            ((ADLServiceImpl)ADL.access$500(ADL.this)).release();
            ADL.access$000(ADL.this).releasePlatform();
            ADL.access$002(ADL.this, null);
            InitState _tmp1 = ADL.access$102(InitState.NOT_INITIALIZED);
            return;
        }
    }

    rapper()
    {
        this$0 = ADL.this;
        super();
    }
}
