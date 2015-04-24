// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.TextureView;
import android.widget.MediaController;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.event.EventEmitter;

// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView, BrightcoveTextureView, RenderView

public class BrightcoveTextureVideoView extends BaseVideoView
{
    class TextureListener
        implements android.view.TextureView.SurfaceTextureListener
    {

        final BrightcoveTextureVideoView this$0;

        public void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int i, int j)
        {
            Log.d(BrightcoveTextureVideoView.TAG, "Texture available");
            eventEmitter.emit("readyToPlay");
            videoDisplay.onSurfaceTextureAvailable(surfacetexture, i, j);
        }

        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
        {
            Log.d(BrightcoveTextureVideoView.TAG, "Texture destroyed");
            videoDisplay.onSurfaceTextureDestroyed(surfacetexture);
            return true;
        }

        public void onSurfaceTextureSizeChanged(SurfaceTexture surfacetexture, int i, int j)
        {
            Log.d(BrightcoveTextureVideoView.TAG, "Texture size changed");
            videoDisplay.onSurfaceTextureSizeChanged(surfacetexture, i, j);
        }

        public void onSurfaceTextureUpdated(SurfaceTexture surfacetexture)
        {
            videoDisplay.onSurfaceTextureUpdated(surfacetexture);
        }

        private TextureListener()
        {
            this$0 = BrightcoveTextureVideoView.this;
            super();
        }

    }


    private static final String TAG = com/brightcove/player/view/BrightcoveTextureVideoView.getSimpleName();
    protected BrightcoveTextureView brightcoveTextureView;
    protected TextureListener textureListener;

    public BrightcoveTextureVideoView(Context context)
    {
        super(context);
    }

    public BrightcoveTextureVideoView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public BrightcoveTextureVideoView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public RenderView getRenderView()
    {
        return brightcoveTextureView;
    }

    public TextureView getTextureView()
    {
        return brightcoveTextureView;
    }

    public int getVideoHeight()
    {
        return brightcoveTextureView.getVideoHeight();
    }

    public int getVideoWidth()
    {
        return brightcoveTextureView.getVideoWidth();
    }

    protected void init(Context context)
    {
        Log.i(TAG, "init");
        brightcoveTextureView = new BrightcoveTextureView(context);
        textureListener = new TextureListener();
        brightcoveTextureView.setSurfaceTextureListener(textureListener);
        addView(brightcoveTextureView);
        super.init(context);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        Log.i(TAG, "onTouchEvent");
        if (brightcoveTextureView.isShown() && mediaController != null)
        {
            if (mediaController.isShowing())
            {
                mediaController.hide();
            } else
            {
                mediaController.show();
            }
        }
        return false;
    }

    protected void resetMetaData()
    {
        if (brightcoveTextureView != null)
        {
            brightcoveTextureView.setVideoSize(0, 0);
        }
        super.resetMetaData();
    }

    protected void setChildLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        android.widget.FrameLayout.LayoutParams layoutparams1 = new android.widget.FrameLayout.LayoutParams(layoutparams.width, layoutparams.height);
        layoutparams1.gravity = 17;
        brightcoveTextureView.setLayoutParams(layoutparams1);
        super.setChildLayoutParams(layoutparams);
    }

    public void setEventEmitter(EventEmitter eventemitter)
    {
        super.setEventEmitter(eventemitter);
        videoDisplay = new VideoDisplayComponent(brightcoveTextureView, eventemitter);
    }

    protected void showMediaController()
    {
        if (brightcoveTextureView.isShown() && mediaController != null)
        {
            mediaController.show();
        }
    }


}
