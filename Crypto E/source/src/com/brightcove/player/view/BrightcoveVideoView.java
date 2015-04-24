// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.widget.MediaController;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.event.EventEmitter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView, BrightcoveSurfaceView, BrightcoveClosedCaptioningSurfaceView, RenderView

public class BrightcoveVideoView extends BaseVideoView
{
    class SurfaceListener
        implements android.view.SurfaceHolder.Callback
    {

        final BrightcoveVideoView this$0;

        public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
        {
            Log.d(BrightcoveVideoView.TAG, (new StringBuilder()).append("Surface changed to ").append(j).append(", ").append(k).toString());
            videoDisplay.surfaceChanged(surfaceholder, i, j, k);
        }

        public void surfaceCreated(SurfaceHolder surfaceholder)
        {
            Log.d(BrightcoveVideoView.TAG, "Surface created.");
            eventEmitter.emit("readyToPlay");
            videoDisplay.surfaceCreated(surfaceholder);
        }

        public void surfaceDestroyed(SurfaceHolder surfaceholder)
        {
            Log.d(BrightcoveVideoView.TAG, "Surface destroyed.");
            videoDisplay.surfaceDestroyed(surfaceholder);
        }

        private SurfaceListener()
        {
            this$0 = BrightcoveVideoView.this;
            super();
        }

    }


    private static final String TAG = com/brightcove/player/view/BrightcoveVideoView.getSimpleName();
    protected BrightcoveSurfaceView brightcoveSurfaceView;
    protected Class brightcoveSurfaceViewClass;
    protected SurfaceListener surfaceListener;

    public BrightcoveVideoView(Context context)
    {
        super(context);
    }

    public BrightcoveVideoView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public BrightcoveVideoView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public RenderView getRenderView()
    {
        return brightcoveSurfaceView;
    }

    public SurfaceView getSurfaceView()
    {
        return brightcoveSurfaceView;
    }

    public int getVideoHeight()
    {
        return brightcoveSurfaceView.getVideoHeight();
    }

    public int getVideoWidth()
    {
        return brightcoveSurfaceView.getVideoWidth();
    }

    protected void init(Context context)
    {
        Log.i(TAG, "init");
        if (brightcoveSurfaceViewClass == null)
        {
            if (android.os.Build.VERSION.SDK_INT >= 19)
            {
                brightcoveSurfaceViewClass = com/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;
            } else
            {
                brightcoveSurfaceViewClass = com/brightcove/player/view/BrightcoveSurfaceView;
            }
        }
        try
        {
            brightcoveSurfaceView = (BrightcoveSurfaceView)brightcoveSurfaceViewClass.getConstructors()[0].newInstance(new Object[] {
                context
            });
            surfaceListener = new SurfaceListener();
            brightcoveSurfaceView.getHolder().addCallback(surfaceListener);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            illegalaccessexception.printStackTrace();
        }
        catch (InstantiationException instantiationexception)
        {
            instantiationexception.printStackTrace();
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            invocationtargetexception.printStackTrace();
        }
        addView(brightcoveSurfaceView);
        super.init(context);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        Log.i(TAG, "onTouchEvent");
        if (brightcoveSurfaceView.isShown() && mediaController != null)
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
        if (brightcoveSurfaceView != null)
        {
            brightcoveSurfaceView.setVideoSize(0, 0);
        }
        super.resetMetaData();
    }

    protected void setChildLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        boolean flag = false;
        int i = getChildCount();
        for (int j = 0; j < i; j++)
        {
            if (getChildAt(j).getClass().getName().equals("com.brightcove.ima.GoogleIMAVideoAdPlayer"))
            {
                flag = true;
            }
        }

        if (!flag)
        {
            android.widget.FrameLayout.LayoutParams layoutparams1 = new android.widget.FrameLayout.LayoutParams(layoutparams.width, layoutparams.height);
            layoutparams1.gravity = 17;
            brightcoveSurfaceView.setLayoutParams(layoutparams1);
        }
        super.setChildLayoutParams(layoutparams);
    }

    public void setEventEmitter(EventEmitter eventemitter)
    {
        super.setEventEmitter(eventemitter);
        videoDisplay = new VideoDisplayComponent(brightcoveSurfaceView, eventemitter);
    }

    protected void showMediaController()
    {
        if (brightcoveSurfaceView.isShown() && mediaController != null)
        {
            mediaController.show();
        }
    }


}
