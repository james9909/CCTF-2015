// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.view.View;
import com.brightcove.player.event.EventEmitter;
import java.util.HashMap;

// Referenced classes of package com.brightcove.player.controller:
//            BrightcoveClosedCaptioningController

class this._cls0
    implements android.view.tioningController._cls1
{

    final BrightcoveClosedCaptioningController this$0;

    public void onClick(View view)
    {
        boolean flag;
        HashMap hashmap;
        if (view.getId() == com.brightcove.player.ntroller)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hashmap = new HashMap();
        hashmap.put("boolean", Boolean.valueOf(flag));
        BrightcoveClosedCaptioningController.access$000(BrightcoveClosedCaptioningController.this).emit("setCaptionsState", hashmap);
        saveClosedCaptioningState(flag);
    }

    ()
    {
        this$0 = BrightcoveClosedCaptioningController.this;
        super();
    }
}
