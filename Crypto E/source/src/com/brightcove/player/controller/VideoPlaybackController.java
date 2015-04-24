// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.controller;

import android.util.Log;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class VideoPlaybackController extends AbstractComponent
    implements Component
{
    public class OnDidSeekToListener
        implements EventListener
    {

        final VideoPlaybackController this$0;

        public void processEvent(Event event)
        {
            int i = currentTime;
            currentTime = event.getIntegerProperty("seekPosition");
            if (i < currentTime)
            {
                emitCuePoints(i, currentTime);
                return;
            } else
            {
                emitCuePoints(currentTime, i);
                return;
            }
        }

        protected OnDidSeekToListener()
        {
            this$0 = VideoPlaybackController.this;
            super();
        }
    }

    public class OnPlayListener
        implements EventListener
    {

        final VideoPlaybackController this$0;

        public void processEvent(Event event)
        {
            Log.v(VideoPlaybackController.TAG, (new StringBuilder()).append("OnPlayListener: playEvent = ").append(event).append(", currentTime = ").append(currentTime).toString());
            if (currentTime == 0 && !event.properties.containsKey("skipCuePoints"))
            {
                Log.i(VideoPlaybackController.TAG, (new StringBuilder()).append("cuePoints = ").append(cuePoints).toString());
                ArrayList arraylist = new ArrayList();
                Iterator iterator = cuePoints.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    CuePoint cuepoint = (CuePoint)iterator.next();
                    if (cuepoint.getPositionType().equals(com.brightcove.player.model.CuePoint.PositionType.BEFORE) || cuepoint.getPositionType().equals(com.brightcove.player.model.CuePoint.PositionType.POINT_IN_TIME) && cuepoint.getPosition() == 0)
                    {
                        arraylist.add(cuepoint);
                    }
                } while (true);
                if (!arraylist.isEmpty())
                {
                    Log.i(VideoPlaybackController.TAG, (new StringBuilder()).append("batch = ").append(arraylist).toString());
                    event.preventDefault();
                    event.stopPropagation();
                    event.properties.put("skipCuePoints", Boolean.valueOf(true));
                    final UUID cuePointUniqueKey = UUID.randomUUID();
                    
// JavaClassFileOutputException: get_constant: invalid tag

        protected OnPlayListener()
        {
            this$0 = VideoPlaybackController.this;
            super();
        }
    }

    class OnProgressUpdateListener
        implements EventListener
    {

        final VideoPlaybackController this$0;

        public void processEvent(Event event)
        {
            int i = event.getIntegerProperty("playheadPosition");
            if (currentTime != -1 && currentTime < i)
            {
                int j = currentTime;
                currentTime = i;
                emitCuePoints(j, currentTime);
            }
        }

        private OnProgressUpdateListener()
        {
            this$0 = VideoPlaybackController.this;
            super();
        }

    }

    public class OnRemoveCuePointListener
        implements EventListener
    {

        final VideoPlaybackController this$0;

        public void processEvent(Event event)
        {
            Object obj = event.properties.get("cue_point");
            if (obj != null && (obj instanceof CuePoint))
            {
                CuePoint cuepoint = (CuePoint)obj;
                cuePoints.remove(cuepoint);
                return;
            } else
            {
                Log.e(VideoPlaybackController.TAG, "could not remove CuePoint");
                return;
            }
        }

        protected OnRemoveCuePointListener()
        {
            this$0 = VideoPlaybackController.this;
            super();
        }
    }

    public class OnSetCuePointListener
        implements EventListener
    {

        final VideoPlaybackController this$0;

        public void processEvent(Event event)
        {
            Object obj = event.properties.get("cue_point");
            if (obj != null && (obj instanceof CuePoint))
            {
                CuePoint cuepoint = (CuePoint)obj;
                cuePoints.add(cuepoint);
                return;
            } else
            {
                Log.e(VideoPlaybackController.TAG, "could not find CuePoint in given Event");
                return;
            }
        }

        protected OnSetCuePointListener()
        {
            this$0 = VideoPlaybackController.this;
            super();
        }
    }

    public class OnSetCuePointsListener
        implements EventListener
    {

        final VideoPlaybackController this$0;

        public void processEvent(Event event)
        {
            Object obj = event.properties.get("cue_points");
            if (obj != null && (obj instanceof List))
            {
                List list = (List)obj;
                cuePoints.clear();
                cuePoints.addAll(list);
                return;
            } else
            {
                Log.e(VideoPlaybackController.TAG, "could not find List of CuePoints in given Event");
                return;
            }
        }

        protected OnSetCuePointsListener()
        {
            this$0 = VideoPlaybackController.this;
            super();
        }
    }

    public class OnSetVideoListener
        implements EventListener
    {

        final VideoPlaybackController this$0;

        public void processEvent(Event event)
        {
            Video video = (Video)event.properties.get("video");
            Log.v(VideoPlaybackController.TAG, (new StringBuilder()).append("OnSetVideoListener: ").append(video).toString());
            Object obj = video.getProperties().get("stillImageUri");
            if (obj != null && (obj instanceof URI))
            {
                URI uri = (URI)obj;
                HashMap hashmap1 = new HashMap();
                hashmap1.put("video_still", uri);
                access$100.emit("setVideoStill", hashmap1);
            }
            List list = video.getCuePoints();
            if (list != null)
            {
                cuePoints.addAll(list);
            }
            HashMap hashmap = new HashMap();
            hashmap.put("video", video);
            OnSourceSelectedListener onsourceselectedlistener = new OnSourceSelectedListener();
            onsourceselectedlistener.currentVideo = video;
            access$100.request("selectSource", hashmap, onsourceselectedlistener);
        }

        protected OnSetVideoListener()
        {
            this$0 = VideoPlaybackController.this;
            super();
        }
    }

    public class OnVideoCompletedListener
        implements EventListener
    {

        final VideoPlaybackController this$0;

        public void processEvent(Event event)
        {
            Log.v(VideoPlaybackController.TAG, (new StringBuilder()).append("OnVideoCompletedListener: ").append(event).toString());
            currentTime = 0;
            if (!event.properties.containsKey("skipCuePoints"))
            {
                ArrayList arraylist = new ArrayList();
                Iterator iterator = cuePoints.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    CuePoint cuepoint = (CuePoint)iterator.next();
                    if (cuepoint.getPositionType().equals(com.brightcove.player.model.CuePoint.PositionType.AFTER))
                    {
                        arraylist.add(cuepoint);
                    }
                } while (true);
                if (!arraylist.isEmpty())
                {
                    event.preventDefault();
                    event.stopPropagation();
                    event.properties.put("skipCuePoints", Boolean.valueOf(true));
                    HashMap hashmap = new HashMap();
                    hashmap.put("cue_points", arraylist);
                    hashmap.put("endTime", Integer.valueOf(0));
                    hashmap.put("startTime", Integer.valueOf(0));
                    hashmap.put("original", event);
                    AFTER.emit("cuePoint", hashmap);
                    return;
                }
            }
        }

        protected OnVideoCompletedListener()
        {
            this$0 = VideoPlaybackController.this;
            super();
        }
    }

    public class OnWillChangeVideoListener
        implements EventListener
    {

        final VideoPlaybackController this$0;

        public void processEvent(Event event)
        {
            cuePoints.clear();
            currentTime = 0;
        }

        protected OnWillChangeVideoListener()
        {
            this$0 = VideoPlaybackController.this;
            super();
        }
    }


    public static final String TAG = com/brightcove/player/controller/VideoPlaybackController.getSimpleName();
    private List cuePoints;
    private int currentTime;
    private boolean hasSeenPlayerReadyEvent;
    OnDidSeekToListener onDidSeekToListener;
    OnDidSetSourceListener onDidSetSourceListener;
    OnPlayListener onPlayListener;
    OnPlayerReadyListener onPlayerReadyListener;
    OnProgressUpdateListener onProgressUpdateListener;
    OnRemoveCuePointListener onRemoveCuePointListener;
    OnSetCuePointListener onSetCuePointListener;
    OnSetCuePointsListener onSetCuePointsListener;
    OnSetVideoListener onSetVideoListener;
    OnSourceSelectedListener onSourceSelectedListener;
    OnVideoCompletedListener onVideoCompletedListener;
    OnWillChangeVideoListener onWillChangeVideoListener;
    private List pendingSourcesToLoad;
    private Map sourceToVideoMapping;

    public VideoPlaybackController(EventEmitter eventemitter)
    {
        super(eventemitter, com/brightcove/player/controller/VideoPlaybackController);
        initialize();
    }

    private void emitCuePoints(int i, int j)
    {
        Log.v(TAG, (new StringBuilder()).append("emitCuePoints: beginning = ").append(i).append(", end = ").append(j).toString());
        ArrayList arraylist = new ArrayList();
        Iterator iterator = cuePoints.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            CuePoint cuepoint = (CuePoint)iterator.next();
            if (cuepoint.getPositionType().equals(com.brightcove.player.model.CuePoint.PositionType.POINT_IN_TIME))
            {
                int k = cuepoint.getPosition();
                if (i < k && k <= j)
                {
                    arraylist.add(cuepoint);
                }
            }
        } while (true);
        if (!arraylist.isEmpty())
        {
            Log.v(TAG, (new StringBuilder()).append("emitCuePoints: batch = ").append(arraylist).toString());
            Collections.sort(arraylist);
            HashMap hashmap = new HashMap();
            hashmap.put("startTime", Integer.valueOf(i));
            hashmap.put("endTime", Integer.valueOf(j));
            hashmap.put("cue_points", arraylist);
            eventEmitter.emit("cuePoint", hashmap);
        }
    }

    public boolean hasPendingSourcesToLoad()
    {
        return pendingSourcesToLoad.size() > 0;
    }

    public void initialize()
    {
        Log.i(TAG, "Initializing VideoPlaybackController");
        hasSeenPlayerReadyEvent = false;
        pendingSourcesToLoad = new ArrayList();
        sourceToVideoMapping = new HashMap();
        cuePoints = new ArrayList();
        initializeListeners();
    }

    protected void initializeListeners()
    {
        onSetVideoListener = new OnSetVideoListener();
        onPlayerReadyListener = new OnPlayerReadyListener();
        onDidSetSourceListener = new OnDidSetSourceListener();
        onPlayListener = new OnPlayListener();
        onProgressUpdateListener = new OnProgressUpdateListener();
        onVideoCompletedListener = new OnVideoCompletedListener();
        onRemoveCuePointListener = new OnRemoveCuePointListener();
        onSetCuePointListener = new OnSetCuePointListener();
        onSetCuePointsListener = new OnSetCuePointsListener();
        onDidSeekToListener = new OnDidSeekToListener();
        onWillChangeVideoListener = new OnWillChangeVideoListener();
        addListener("readyToPlay", onPlayerReadyListener);
        addListener("setVideo", onSetVideoListener);
        addListener("didSetSource", onDidSetSourceListener);
        addListener("play", onPlayListener);
        addListener("progress", onProgressUpdateListener);
        addListener("completed", onVideoCompletedListener);
        addListener("removeCuePoint", onRemoveCuePointListener);
        addListener("setCuePoint", onSetCuePointListener);
        addListener("setCuePoints", onSetCuePointsListener);
        addListener("didSeekTo", onDidSeekToListener);
        addListener("willChangeVideo", onWillChangeVideoListener);
    }




/*
    static int access$002(VideoPlaybackController videoplaybackcontroller, int i)
    {
        videoplaybackcontroller.currentTime = i;
        return i;
    }

*/

















/*
    static boolean access$902(VideoPlaybackController videoplaybackcontroller, boolean flag)
    {
        videoplaybackcontroller.hasSeenPlayerReadyEvent = flag;
        return flag;
    }

*/

    // Unreferenced inner class com/brightcove/player/controller/VideoPlaybackController$OnPlayListener$1

/* anonymous class */
}
