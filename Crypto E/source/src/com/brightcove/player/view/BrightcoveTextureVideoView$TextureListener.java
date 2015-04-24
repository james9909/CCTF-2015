// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.graphics.SurfaceTexture;
import android.util.Log;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.event.EventEmitter;

// Referenced classes of package com.brightcove.player.view:
//            BrightcoveTextureVideoView

class <init>
    implements android.view.xtureListener
{

    final BrightcoveTextureVideoView this$0;

    public void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int i, int j)
    {
        Log.d(BrightcoveTextureVideoView.access$100(), "Texture available");
        eventEmitter.emit("readyToPlay");
        videoDisplay.onSurfaceTextureAvailable(surfacetexture, i, j);
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
    {
        Log.d(BrightcoveTextureVideoView.access$100(), "Texture destroyed");
        videoDisplay.onSurfaceTextureDestroyed(surfacetexture);
        return true;
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfacetexture, int i, int j)
    {
        Log.d(BrightcoveTextureVideoView.access$100(), "Texture size changed");
        videoDisplay.onSurfaceTextureSizeChanged(surfacetexture, i, j);
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfacetexture)
    {
        videoDisplay.onSurfaceTextureUpdated(surfacetexture);
    }

    private ()
    {
        this$0 = BrightcoveTextureVideoView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
