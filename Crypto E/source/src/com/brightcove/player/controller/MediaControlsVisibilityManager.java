// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.MediaController;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.view.BaseVideoView;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MediaControlsVisibilityManager
{
    class ShowHideEventHandler
        implements EventListener
    {

        final MediaControlsVisibilityManager this$0;

        public void processEvent(Event event)
        {
            Object obj = event.properties.get("seekControlsVisibility");
            if (obj != null && (obj instanceof Map))
            {
                Map map = (Map)obj;
                visibilityMap.clear();
                visibilityMap.putAll(map);
                setVisibilityState();
            }
        }

        private ShowHideEventHandler()
        {
            this$0 = MediaControlsVisibilityManager.this;
            super();
        }

    }

    class VisibilityRestoreEventHandler
        implements EventListener
    {

        final MediaControlsVisibilityManager this$0;

        public void processEvent(Event event)
        {
            Log.v(MediaControlsVisibilityManager.TAG, "Handling an ACTIVITY_CREATED event to (possibly) restore the media controls visibility state...");
            Object obj = event.properties.get("instanceState");
            Bundle bundle;
            Bundle bundle1;
            if (obj != null && (obj instanceof Bundle))
            {
                bundle = (Bundle)obj;
            } else
            {
                bundle = null;
            }
            if (bundle != null)
            {
                bundle1 = bundle.getBundle("mediaControlsVisibilityState");
            } else
            {
                bundle1 = null;
            }
            if (bundle1 != null)
            {
                restoreVisibilityState(bundle1);
                return;
            } else
            {
                Log.v(MediaControlsVisibilityManager.TAG, "No saved visibility state bundle found.  Restoration aborted.");
                return;
            }
        }

        private VisibilityRestoreEventHandler()
        {
            this$0 = MediaControlsVisibilityManager.this;
            super();
        }

    }

    class VisibilitySaveEventHandler
        implements EventListener
    {

        final MediaControlsVisibilityManager this$0;

        public void processEvent(Event event)
        {
            Log.v(MediaControlsVisibilityManager.TAG, "Handling an ACTIVITY_SAVE_INSTANCE_STATE event to save the media controls visibility state...");
            Object obj = event.properties.get("instanceState");
            Bundle bundle;
            if (obj != null && (obj instanceof Bundle))
            {
                bundle = (Bundle)obj;
            } else
            {
                bundle = null;
            }
            if (bundle != null && visibilityMap.size() > 0)
            {
                saveVisibilityState(bundle);
            }
        }

        private VisibilitySaveEventHandler()
        {
            this$0 = MediaControlsVisibilityManager.this;
            super();
        }

    }


    private static final String MEDIA_CONTROLS_VISIBILITY_STATE = "mediaControlsVisibilityState";
    private static final String TAG = com/brightcove/player/controller/MediaControlsVisibilityManager.getSimpleName();
    private BaseVideoView videoView;
    private final Map visibilityMap = new HashMap();

    public MediaControlsVisibilityManager(BaseVideoView basevideoview)
    {
        videoView = basevideoview;
    }

    private void restoreVisibilityState(Bundle bundle)
    {
        Log.v(TAG, "Restoring media controls visibility state...");
        visibilityMap.clear();
        for (Iterator iterator = bundle.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            int i = bundle.getInt(s);
            if (i == 0)
            {
                Log.w(TAG, String.format("Invalid visibility state (0) detected using key: %s.", new Object[] {
                    s
                }));
            } else
            {
                visibilityMap.put(s, Integer.valueOf(i));
            }
        }

    }

    private void saveVisibilityState(Bundle bundle)
    {
        Log.v(TAG, "Saving media controls visibility state...");
        Bundle bundle1 = new Bundle();
        bundle.putBundle("mediaControlsVisibilityState", bundle1);
        String s;
        for (Iterator iterator = visibilityMap.keySet().iterator(); iterator.hasNext(); bundle1.putInt(s, ((Integer)visibilityMap.get(s)).intValue()))
        {
            s = (String)iterator.next();
        }

    }

    public void initListeners(EventEmitter eventemitter)
    {
        ShowHideEventHandler showhideeventhandler = new ShowHideEventHandler();
        eventemitter.on("hideSeekControls", showhideeventhandler);
        eventemitter.on("showSeekControls", showhideeventhandler);
        eventemitter.on("activityCreated", new VisibilityRestoreEventHandler());
        eventemitter.on("activitySaveInstanceState", new VisibilitySaveEventHandler());
    }

    public void setVisibilityState()
    {
        Resources resources = Resources.getSystem();
        MediaController mediacontroller = videoView.getMediaController();
        if (mediacontroller == null)
        {
            Log.e(TAG, "The visibility state cannot be restored!  No media controller exists.");
            return;
        }
        Log.v(TAG, "Updating the media controls visibility state...");
        for (Iterator iterator = visibilityMap.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            View view = mediacontroller.findViewById(resources.getIdentifier(s, "id", "android"));
            if (view != null)
            {
                view.setVisibility(((Integer)visibilityMap.get(s)).intValue());
            } else
            {
                Log.w(TAG, (new StringBuilder()).append("View/button: ").append(s).append(" does not exist!").toString());
            }
        }

        mediacontroller.show();
    }





}
