// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.MediaController;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.EventLogger;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.brightcove.player.view:
//            BrightcoveVideoView

public class BrightcovePlayerFragment extends Fragment
{

    protected static final String POSITION = "position";
    public static final String TAG = com/brightcove/player/view/BrightcovePlayerFragment.getSimpleName();
    protected static final String WAS_PLAYING = "wasPlaying";
    protected BrightcoveVideoView brightcoveVideoView;
    private EventEmitter eventEmitter;
    private int originalLayoutParamsHeight;
    private int originalLayoutParamsWidth;
    private int position;
    private boolean wasPlaying;

    public BrightcovePlayerFragment()
    {
    }

    public void fullScreen()
    {
        Activity activity = getActivity();
        ActionBar actionbar = activity.getActionBar();
        if (actionbar != null)
        {
            actionbar.hide();
        }
        android.view.WindowManager.LayoutParams layoutparams = activity.getWindow().getAttributes();
        layoutparams.flags = 0x400 | layoutparams.flags;
        activity.getWindow().setAttributes(layoutparams);
        Log.v(TAG, (new StringBuilder()).append("fullScreen: ").append(originalLayoutParamsWidth).append("x").append(originalLayoutParamsHeight).toString());
        android.view.ViewGroup.LayoutParams layoutparams1 = brightcoveVideoView.getLayoutParams();
        originalLayoutParamsWidth = layoutparams1.width;
        originalLayoutParamsHeight = layoutparams1.height;
        layoutparams1.width = -1;
        layoutparams1.height = -1;
        brightcoveVideoView.setLayoutParams(layoutparams1);
    }

    public BrightcoveVideoView getBrightcoveVideoView()
    {
        return brightcoveVideoView;
    }

    public void normalScreen()
    {
        Log.v(TAG, (new StringBuilder()).append("normalScreen: ").append(originalLayoutParamsWidth).append("x").append(originalLayoutParamsHeight).toString());
        if (originalLayoutParamsWidth != 0x80000000 && originalLayoutParamsHeight != 0x80000000)
        {
            Activity activity = getActivity();
            ActionBar actionbar = activity.getActionBar();
            if (actionbar != null)
            {
                actionbar.show();
            }
            android.view.WindowManager.LayoutParams layoutparams = activity.getWindow().getAttributes();
            layoutparams.flags = 0x400 ^ layoutparams.flags;
            activity.getWindow().setAttributes(layoutparams);
            android.view.ViewGroup.LayoutParams layoutparams1 = brightcoveVideoView.getLayoutParams();
            layoutparams1.width = originalLayoutParamsWidth;
            layoutparams1.height = originalLayoutParamsHeight;
            brightcoveVideoView.setLayoutParams(layoutparams1);
            originalLayoutParamsWidth = 0x80000000;
            originalLayoutParamsHeight = 0x80000000;
        }
    }

    public void onActivityCreated(Bundle bundle)
    {
        Log.v(TAG, "onActivityCreated");
        super.onActivityCreated(bundle);
        HashMap hashmap = new HashMap();
        if (bundle != null)
        {
            hashmap.put("instanceState", bundle);
        }
        eventEmitter.emit("fragmentActivityCreated", hashmap);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        Log.v(TAG, "onCreateView");
        View view = super.onCreateView(layoutinflater, viewgroup, bundle);
        if (brightcoveVideoView != null)
        {
            eventEmitter = brightcoveVideoView.getEventEmitter();
            new EventLogger(eventEmitter, true, getClass().getSimpleName());
            if (bundle != null)
            {
                position = bundle.getInt("position");
                wasPlaying = bundle.getBoolean("wasPlaying");
            }
            MediaController mediacontroller = new MediaController(getActivity());
            brightcoveVideoView.setMediaController(mediacontroller);
            HashMap hashmap = new HashMap();
            if (bundle != null)
            {
                hashmap.put("instanceState", bundle);
            }
            eventEmitter.emit("fragmentCreatedView", hashmap);
            return view;
        } else
        {
            throw new IllegalStateException("brightcoveVideoView needs to be wired up to the layout.");
        }
    }

    public void onDestroy()
    {
        Log.v(TAG, "onDestroy");
        super.onDestroy();
        eventEmitter.emit("fragmentDestroyed");
    }

    public void onDestroyView()
    {
        Log.v(TAG, "onDestroyView");
        super.onDestroyView();
        eventEmitter.on("fragmentDestroyedView", new EventListener() {

            final BrightcovePlayerFragment this$0;

            public void processEvent(Event event)
            {
                eventEmitter.off();
            }

            
            {
                this$0 = BrightcovePlayerFragment.this;
                super();
            }
        });
        eventEmitter.emit("fragmentDestroyedView");
    }

    public void onDetach()
    {
        Log.v(TAG, "onDetach");
        super.onDetach();
        eventEmitter.emit("fragmentDetached");
    }

    public void onPause()
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
        position = brightcoveVideoView.getCurrentPosition();
        eventEmitter.emit("fragmentPaused");
    }

    public void onResume()
    {
        Log.v(TAG, "onResume");
        super.onResume();
        if (wasPlaying)
        {
            brightcoveVideoView.start();
        }
        eventEmitter.emit("fragmentResumed");
    }

    public void onSaveInstanceState(final Bundle bundle)
    {
        Log.v(TAG, "onSaveInstanceState");
        bundle.putInt("position", position);
        bundle.putBoolean("wasPlaying", wasPlaying);
        eventEmitter.on("fragmentSaveInstanceState", new EventListener() {

            final BrightcovePlayerFragment this$0;
            final Bundle val$bundle;

            public void processEvent(Event event)
            {
                onSaveInstanceState(bundle);
            }

            
            {
                this$0 = BrightcovePlayerFragment.this;
                bundle = bundle1;
                super();
            }
        });
        HashMap hashmap = new HashMap();
        hashmap.put("instanceState", bundle);
        eventEmitter.emit("fragmentSaveInstanceState", hashmap);
    }

    public void onStart()
    {
        Log.v(TAG, "onStart");
        super.onStart();
        if (position > 0)
        {
            brightcoveVideoView.seekTo(position);
            position = -1;
        }
        eventEmitter.emit("fragmentStarted");
    }

    public void onStop()
    {
        Log.v(TAG, "onStop");
        super.onStop();
        brightcoveVideoView.stopPlayback();
        eventEmitter.emit("fragmentStopped");
    }

    public void onViewStateRestored(Bundle bundle)
    {
        Log.v(TAG, "onViewStateRestored");
        super.onViewStateRestored(bundle);
        HashMap hashmap = new HashMap();
        if (bundle != null)
        {
            hashmap.put("instanceState", bundle);
        }
        eventEmitter.emit("fragmentViewStateRestored", hashmap);
    }



}
