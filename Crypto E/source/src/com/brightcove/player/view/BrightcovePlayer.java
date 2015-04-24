// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.app.ActionBar;
import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import android.widget.MediaController;
import com.brightcove.player.controller.BrightcoveClosedCaptioningController;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventLogger;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView, BrightcoveVideoView

public class BrightcovePlayer extends Activity
    implements Component
{

    protected static final String POSITION = "position";
    public static final String TAG = com/brightcove/player/view/BrightcovePlayer.getSimpleName();
    protected static final String WAS_PLAYING = "wasPlaying";
    protected BaseVideoView brightcoveVideoView;
    private EventEmitter eventEmitter;
    private EventLogger eventLogger;
    private int originalLayoutParamsHeight;
    private int originalLayoutParamsWidth;
    private int position;
    private boolean wasPlaying;

    public BrightcovePlayer()
    {
    }

    private void hideActionBar()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            ActionBar actionbar = getActionBar();
            if (actionbar != null)
            {
                actionbar.hide();
            }
        }
    }

    private void showActionBar()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            ActionBar actionbar = getActionBar();
            if (actionbar != null)
            {
                actionbar.show();
            }
        }
    }

    public void fullScreen()
    {
        hideActionBar();
        android.view.WindowManager.LayoutParams layoutparams = getWindow().getAttributes();
        layoutparams.flags = 0x400 | layoutparams.flags;
        getWindow().setAttributes(layoutparams);
        Log.v(TAG, (new StringBuilder()).append("fullScreen: ").append(originalLayoutParamsWidth).append("x").append(originalLayoutParamsHeight).toString());
        android.view.ViewGroup.LayoutParams layoutparams1 = brightcoveVideoView.getLayoutParams();
        originalLayoutParamsWidth = layoutparams1.width;
        originalLayoutParamsHeight = layoutparams1.height;
        layoutparams1.width = -1;
        layoutparams1.height = -1;
        brightcoveVideoView.setLayoutParams(layoutparams1);
    }

    public BaseVideoView getBaseVideoView()
    {
        return brightcoveVideoView;
    }

    public BrightcoveVideoView getBrightcoveVideoView()
    {
        boolean flag = brightcoveVideoView instanceof BrightcoveVideoView;
        BrightcoveVideoView brightcovevideoview = null;
        if (flag)
        {
            brightcovevideoview = (BrightcoveVideoView)brightcoveVideoView;
        }
        return brightcovevideoview;
    }

    public EventLogger getEventLogger()
    {
        return eventLogger;
    }

    public void hideClosedCaptioningDialog()
    {
        brightcoveVideoView.getClosedCaptioningController().hideCaptionsDialog();
    }

    public void normalScreen()
    {
        Log.v(TAG, (new StringBuilder()).append("normalScreen: ").append(originalLayoutParamsWidth).append("x").append(originalLayoutParamsHeight).toString());
        if (originalLayoutParamsWidth != 0x80000000 && originalLayoutParamsHeight != 0x80000000)
        {
            showActionBar();
            android.view.WindowManager.LayoutParams layoutparams = getWindow().getAttributes();
            layoutparams.flags = 0x400 ^ layoutparams.flags;
            getWindow().setAttributes(layoutparams);
            android.view.ViewGroup.LayoutParams layoutparams1 = brightcoveVideoView.getLayoutParams();
            layoutparams1.width = originalLayoutParamsWidth;
            layoutparams1.height = originalLayoutParamsHeight;
            brightcoveVideoView.setLayoutParams(layoutparams1);
            originalLayoutParamsWidth = 0x80000000;
            originalLayoutParamsHeight = 0x80000000;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (brightcoveVideoView != null)
        {
            eventEmitter = brightcoveVideoView.getEventEmitter();
            eventLogger = new EventLogger(eventEmitter, true, getClass().getSimpleName());
            if (bundle != null)
            {
                position = bundle.getInt("position");
                wasPlaying = bundle.getBoolean("wasPlaying");
            }
            MediaController mediacontroller = new MediaController(this);
            brightcoveVideoView.setMediaController(mediacontroller);
            HashMap hashmap = new HashMap();
            if (bundle != null)
            {
                hashmap.put("instanceState", bundle);
            }
            eventEmitter.emit("activityCreated", hashmap);
            return;
        } else
        {
            throw new IllegalStateException("brightcoveVideoView needs to be wired up to the layout.");
        }
    }

    protected void onDestroy()
    {
        Log.v(TAG, "onDestroy");
        super.onDestroy();
        eventEmitter.on("activityDestroyed", new EventListener() {

            final BrightcovePlayer this$0;

            public void processEvent(Event event)
            {
                eventEmitter.off();
            }

            
            {
                this$0 = BrightcovePlayer.this;
                super();
            }
        });
        eventEmitter.emit("activityDestroyed");
    }

    protected void onPause()
    {
        Log.v(TAG, "onPause");
        super.onPause();
        if (brightcoveVideoView.isPlaying())
        {
            brightcoveVideoView.pause();
            wasPlaying = true;
        } else
        {
            wasPlaying = false;
        }
        eventEmitter.emit("activityPaused");
    }

    protected void onRestart()
    {
        Log.v(TAG, "onRestart");
        super.onRestart();
        eventEmitter.emit("activityRestarted");
    }

    protected void onResume()
    {
        Log.v(TAG, "onResume");
        super.onResume();
        if (wasPlaying)
        {
            brightcoveVideoView.start();
        }
        eventEmitter.emit("activityResumed");
    }

    protected void onSaveInstanceState(final Bundle bundle)
    {
        bundle.putInt("position", position);
        bundle.putBoolean("wasPlaying", wasPlaying);
        eventEmitter.on("activitySaveInstanceState", new EventListener() {

            final BrightcovePlayer this$0;
            final Bundle val$bundle;

            public void processEvent(Event event)
            {
                onSaveInstanceState(bundle);
            }

            
            {
                this$0 = BrightcovePlayer.this;
                bundle = bundle1;
                super();
            }
        });
        HashMap hashmap = new HashMap();
        hashmap.put("instanceState", bundle);
        eventEmitter.emit("activitySaveInstanceState", hashmap);
    }

    protected void onStart()
    {
        Log.v(TAG, "onStart");
        super.onStart();
        eventEmitter.once("didSetVideo", new EventListener() {

            final BrightcovePlayer this$0;

            public void processEvent(Event event)
            {
                if (position > 0)
                {
                    brightcoveVideoView.seekTo(position);
                    position = -1;
                }
                if (wasPlaying)
                {
                    brightcoveVideoView.start();
                    wasPlaying = false;
                }
            }

            
            {
                this$0 = BrightcovePlayer.this;
                super();
            }
        });
        eventEmitter.emit("activityStarted");
    }

    protected void onStop()
    {
        Log.v(TAG, "onStop");
        super.onStop();
        position = brightcoveVideoView.getCurrentPosition();
        brightcoveVideoView.stopPlayback();
        eventEmitter.emit("activityStopped");
    }

    public void showClosedCaptioningDialog()
    {
        brightcoveVideoView.getClosedCaptioningController().showCaptionsDialog();
    }




/*
    static int access$002(BrightcovePlayer brightcoveplayer, int i)
    {
        brightcoveplayer.position = i;
        return i;
    }

*/



/*
    static boolean access$102(BrightcovePlayer brightcoveplayer, boolean flag)
    {
        brightcoveplayer.wasPlaying = flag;
        return flag;
    }

*/


}
