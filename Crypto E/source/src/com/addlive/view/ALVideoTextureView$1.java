// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.view;


// Referenced classes of package com.addlive.view:
//            ALVideoTextureView, VideoRenderer

class val.rendererId
    implements Runnable
{

    final ALVideoTextureView this$0;
    final int val$rendererId;

    public void run()
    {
        ALVideoTextureView.access$200(ALVideoTextureView.this).onStartRendering(val$rendererId, ALVideoTextureView.access$100(ALVideoTextureView.this));
    }

    ()
    {
        this$0 = final_alvideotextureview;
        val$rendererId = I.this;
        super();
    }
}
