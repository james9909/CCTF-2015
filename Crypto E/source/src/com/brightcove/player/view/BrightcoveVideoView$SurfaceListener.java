// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.util.Log;
import android.view.SurfaceHolder;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.event.EventEmitter;

// Referenced classes of package com.brightcove.player.view:
//            BrightcoveVideoView

class <init>
    implements android.view.rfaceListener
{

    final BrightcoveVideoView this$0;

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        Log.d(BrightcoveVideoView.access$100(), (new StringBuilder()).append("Surface changed to ").append(j).append(", ").append(k).toString());
        videoDisplay.surfaceChanged(surfaceholder, i, j, k);
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        Log.d(BrightcoveVideoView.access$100(), "Surface created.");
        eventEmitter.emit("readyToPlay");
        videoDisplay.surfaceCreated(surfaceholder);
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        Log.d(BrightcoveVideoView.access$100(), "Surface destroyed.");
        videoDisplay.surfaceDestroyed(surfaceholder);
    }

    private ()
    {
        this$0 = BrightcoveVideoView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
