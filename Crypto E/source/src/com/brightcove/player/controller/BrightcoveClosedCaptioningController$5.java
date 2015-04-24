// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import com.brightcove.player.captioning.BrightcoveClosedCaptioningOptionsDialog;
import com.brightcove.player.view.BaseVideoView;

// Referenced classes of package com.brightcove.player.controller:
//            BrightcoveClosedCaptioningController

class this._cls0
    implements android.view.tioningController._cls5
{

    final BrightcoveClosedCaptioningController this$0;

    public void onClick(View view)
    {
        Log.i("ClosedCaptionsDialog", "Advanced Options clicked.");
        if (activity != null)
        {
            android.app.FragmentManager fragmentmanager = activity.getFragmentManager();
            BrightcoveClosedCaptioningOptionsDialog brightcoveclosedcaptioningoptionsdialog = new BrightcoveClosedCaptioningOptionsDialog();
            Bundle bundle = new Bundle();
            bundle.putBoolean("isHLS", BrightcoveClosedCaptioningController.access$400(BrightcoveClosedCaptioningController.this));
            brightcoveclosedcaptioningoptionsdialog.setArguments(bundle);
            brightcoveclosedcaptioningoptionsdialog.setEventEmitter(videoPlayer.getEventEmitter());
            brightcoveclosedcaptioningoptionsdialog.show(fragmentmanager, "CaptionsOptionsDialog");
            if (videoPlayer.isPlaying())
            {
                videoPlayer.pause();
            }
        }
    }

    ()
    {
        this$0 = BrightcoveClosedCaptioningController.this;
        super();
    }
}
