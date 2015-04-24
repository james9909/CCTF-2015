// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;

import android.content.Context;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.MediaController;
import com.brightcove.player.analytics.Analytics;
import com.brightcove.player.controller.BrightcoveClosedCaptioningController;
import com.brightcove.player.controller.DefaultSourceSelectionController;
import com.brightcove.player.controller.MediaControlsVisibilityManager;
import com.brightcove.player.controller.VideoPlaybackController;
import com.brightcove.player.display.VideoDisplayComponent;
import com.brightcove.player.display.VideoStillDisplayComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventEmitterImpl;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.RegisteringEventEmitter;
import com.brightcove.player.management.BrightcovePluginManager;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.EventUtil;
import com.brightcove.player.util.LayoutUtil;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

// Referenced classes of package com.brightcove.player.view:
//            BrightcoveClosedCaptioningView, RenderView

public abstract class BaseVideoView extends FrameLayout
    implements android.widget.MediaController.MediaPlayerControl, Component
{
    public class OnProgressListener
        implements EventListener
    {

        final BaseVideoView this$0;

        public void processEvent(Event event)
        {
            if (isPlaying())
            {
                int i = event.getIntegerProperty("duration");
                if (i > -1 && i != duration)
                {
                    String s1 = BaseVideoView.TAG;
                    Object aobj1[] = new Object[1];
                    aobj1[0] = Integer.valueOf(i);
                    Log.v(s1, String.format("Changing duration to %d.", aobj1));
                    duration = i;
                    showMediaController();
                }
                int j = event.getIntegerProperty("playheadPosition");
                if (j > -1 && j != playheadPosition)
                {
                    String s = BaseVideoView.TAG;
                    Object aobj[] = new Object[1];
                    aobj[0] = Integer.valueOf(j);
                    Log.v(s, String.format("Changing playheadPosition to %d.", aobj));
                    playheadPosition = j;
                }
            }
        }

        protected OnProgressListener()
        {
            this$0 = BaseVideoView.this;
            super();
        }
    }


    private static final String TAG = com/brightcove/player/view/BaseVideoView.getSimpleName();
    protected View anchorView;
    private BrightcoveClosedCaptioningController brightcoveClosedCaptioningController;
    private BrightcoveClosedCaptioningView brightcoveClosedCaptioningView;
    private int bufferedPercent;
    private int currentIndex;
    private boolean currentlyPlaying;
    protected int duration;
    protected EventEmitter eventEmitter;
    private boolean hasPendingPlay;
    private boolean hasSetSource;
    protected ImageView imageView;
    protected Map listenerTokens;
    protected MediaController mediaController;
    private MediaControlsVisibilityManager mediaControlsVisibilityManager;
    protected android.widget.MediaController.MediaPlayerControl mediaPlayerControl;
    private android.media.MediaPlayer.OnCompletionListener onCompletionListener;
    protected android.media.MediaPlayer.OnPreparedListener onPreparedListener;
    protected VideoPlaybackController playbackController;
    protected int playheadPosition;
    protected BrightcovePluginManager pluginManager;
    protected DefaultSourceSelectionController sourceController;
    protected VideoDisplayComponent videoDisplay;
    protected VideoStillDisplayComponent videoStillDisplay;
    private Map videoToSourceMap;
    private ArrayList videos;

    public BaseVideoView(Context context)
    {
        super(context);
        videos = new ArrayList();
        videoToSourceMap = new HashMap();
        currentIndex = -1;
        listenerTokens = new HashMap();
        init(context);
    }

    public BaseVideoView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public BaseVideoView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        videos = new ArrayList();
        videoToSourceMap = new HashMap();
        currentIndex = -1;
        listenerTokens = new HashMap();
        init(context);
    }

    private void addSubtitlePair(Video video, Pair pair)
    {
        Object obj = (List)video.getProperties().get("subtitleSources");
        if (obj == null)
        {
            obj = new ArrayList();
            video.getProperties().put("subtitleSources", obj);
        }
        ((List) (obj)).add(pair);
    }

    private void emitDidChangeList()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("list", videos);
        eventEmitter.emit("didChangeList", hashmap);
    }

    private Video getCurrentVideo()
    {
        int i = currentIndex;
        Video video = null;
        if (i >= 0)
        {
            int j = currentIndex;
            int k = videos.size();
            video = null;
            if (j < k)
            {
                video = (Video)videos.get(currentIndex);
            }
        }
        return video;
    }

    private boolean hasNextVideo()
    {
        return videos.size() > 1 && 1 + currentIndex < videos.size();
    }

    private void prebufferNextVideo()
    {
        if (hasNextVideo())
        {
            final Video video = (Video)videos.get(1 + currentIndex);
            Source source = (Source)videoToSourceMap.get(video);
            if (source != null)
            {
                EventUtil.emit(eventEmitter, "prebufferNextVideo", video, source);
                return;
            } else
            {
                HashMap hashmap = new HashMap();
                hashmap.put("video", video);
                eventEmitter.request("selectSource", hashmap, new EventListener() {

                    final BaseVideoView this$0;
                    final Video val$video;

                    public void processEvent(Event event)
                    {
                        Source source1 = (Source)event.properties.get("source");
                        videoToSourceMap.put(video, source1);
                        EventUtil.emit(eventEmitter, "didSelectSource", video, source1);
                        EventUtil.emit(eventEmitter, "prebufferNextVideo", video, source1);
                    }

            
            {
                this$0 = BaseVideoView.this;
                video = video1;
                super();
            }
                });
                return;
            }
        } else
        {
            eventEmitter.emit("prebufferNextVideo");
            return;
        }
    }

    private void setCurrentIndexPrivate(final int index)
    {
        if (index == -1)
        {
            hasSetSource = false;
            if (currentIndex == -1)
            {
                return;
            }
        }
        final UUID uniqueKey = UUID.randomUUID();
        eventEmitter.once("willChangeVideo", new EventListener() {

            final BaseVideoView this$0;
            final int val$index;
            final UUID val$uniqueKey;

            public void processEvent(Event event)
            {
label0:
                {
                    if (event.properties.get("uuid").equals(uniqueKey))
                    {
                        resetMetaData();
                        currentIndex = index;
                        Video video1 = (Video)event.properties.get("nextVideo");
                        if (video1 == null)
                        {
                            break label0;
                        }
                        EventUtil.emit(eventEmitter, "setVideo", video1);
                    }
                    return;
                }
                eventEmitter.emit("setSource");
            }

            
            {
                this$0 = BaseVideoView.this;
                uniqueKey = uuid;
                index = i;
                super();
            }
        });
        HashMap hashmap = new HashMap();
        hashmap.put("index", Integer.valueOf(currentIndex));
        hashmap.put("currentVideo", getCurrentVideo());
        Video video = null;
        if (index >= 0)
        {
            int i = videos.size();
            video = null;
            if (index < i)
            {
                video = (Video)videos.get(index);
            }
        }
        hashmap.put("nextVideo", video);
        hashmap.put("uuid", uniqueKey);
        eventEmitter.emit("willChangeVideo", hashmap);
    }

    private void setCurrentlyPlaying(boolean flag)
    {
        currentlyPlaying = flag;
        if (mediaController != null)
        {
            mediaController.setMediaPlayer(this);
        }
    }

    private void updateIndex(int i, int j)
    {
        if (currentIndex == -1 || currentIndex == i)
        {
            setCurrentIndexPrivate(i);
        } else
        {
            if (i < currentIndex)
            {
                currentIndex = j + currentIndex;
                return;
            }
            if (currentIndex >= 0 && 1 + currentIndex == i && currentlyPlaying)
            {
                prebufferNextVideo();
                return;
            }
        }
    }

    public void add(int i, Video video)
    {
        videos.add(i, video);
        emitDidChangeList();
        updateIndex(i, 1);
    }

    public void add(Video video)
    {
        add(videos.size(), video);
    }

    public void addAll(int i, Collection collection)
    {
        videos.addAll(i, collection);
        emitDidChangeList();
        updateIndex(i, collection.size());
    }

    public void addAll(Collection collection)
    {
        addAll(videos.size(), collection);
    }

    public void addListener(String s, EventListener eventlistener)
    {
        listenerTokens.put(s, Integer.valueOf(eventEmitter.on(s, eventlistener)));
    }

    public void addSubtitleSource(InputStream inputstream, MediaFormat mediaformat)
    {
        Video video = getCurrentVideo();
        final Pair pair = Pair.create(inputstream, mediaformat);
        if (video != null)
        {
            addSubtitlePair(video, pair);
            return;
        } else
        {
            eventEmitter.once("willChangeVideo", new EventListener() {

                final BaseVideoView this$0;
                final Pair val$pair;

                public void processEvent(Event event)
                {
                    Video video1 = (Video)event.properties.get("nextVideo");
                    if (video1 != null)
                    {
                        addSubtitlePair(video1, pair);
                    }
                }

            
            {
                this$0 = BaseVideoView.this;
                pair = pair1;
                super();
            }
            });
            return;
        }
    }

    protected void attachMediaController()
    {
        Log.v(TAG, (new StringBuilder()).append("attachMediaController: mediaPlayer = ").append(videoDisplay.getMediaPlayer()).append(", mediaController = ").append(mediaController).toString());
        if (mediaController != null)
        {
            if (anchorView == null)
            {
                Object obj;
                if (getParent() instanceof View)
                {
                    obj = (View)getParent();
                } else
                {
                    obj = this;
                }
                mediaController.setAnchorView(((View) (obj)));
            }
            if (mediaPlayerControl == null)
            {
                mediaController.setMediaPlayer(new android.widget.MediaController.MediaPlayerControl() {

                    final BaseVideoView this$0;

                    public boolean canPause()
                    {
                        return BaseVideoView.this.canPause();
                    }

                    public boolean canSeekBackward()
                    {
                        return BaseVideoView.this.canSeekBackward();
                    }

                    public boolean canSeekForward()
                    {
                        return BaseVideoView.this.canSeekForward();
                    }

                    public int getAudioSessionId()
                    {
                        return 0;
                    }

                    public int getBufferPercentage()
                    {
                        return BaseVideoView.this.getBufferPercentage();
                    }

                    public int getCurrentPosition()
                    {
                        return BaseVideoView.this.getCurrentPosition() / 1000;
                    }

                    public int getDuration()
                    {
                        return BaseVideoView.this.getDuration() / 1000;
                    }

                    public boolean isPlaying()
                    {
                        return BaseVideoView.this.isPlaying();
                    }

                    public void pause()
                    {
                        BaseVideoView.this.pause();
                    }

                    public void seekTo(int i)
                    {
                        BaseVideoView.this.seekTo(i * 1000);
                    }

                    public void start()
                    {
                        BaseVideoView.this.start();
                    }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
                });
            } else
            {
                mediaController.setMediaPlayer(mediaPlayerControl);
            }
            if (videoDisplay.getMediaPlayer() != null)
            {
                mediaController.setEnabled(true);
                mediaControlsVisibilityManager.setVisibilityState();
                showMediaController();
                if (playheadPosition > 0)
                {
                    videoDisplay.getMediaPlayer().seekTo(playheadPosition);
                }
            }
        }
    }

    public boolean canPause()
    {
        return true;
    }

    public boolean canSeekBackward()
    {
        return true;
    }

    public boolean canSeekForward()
    {
        return true;
    }

    public void clear()
    {
        boolean flag;
        if (videos.size() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        videos.clear();
        videoToSourceMap.clear();
        setCurrentIndexPrivate(-1);
        if (flag)
        {
            emitDidChangeList();
        }
    }

    public void clearOnCompletionListener()
    {
        onCompletionListener = null;
    }

    public void clearOnPreparedListener()
    {
        onPreparedListener = null;
    }

    public Video get(int i)
    {
        return (Video)videos.get(i);
    }

    public Analytics getAnalytics()
    {
        VideoDisplayComponent videodisplaycomponent = videoDisplay;
        Analytics analytics = null;
        if (videodisplaycomponent != null)
        {
            analytics = videoDisplay.getAnalytics();
        }
        return analytics;
    }

    public int getAudioSessionId()
    {
        return 0;
    }

    public int getBufferPercentage()
    {
        return bufferedPercent;
    }

    public BrightcoveClosedCaptioningController getClosedCaptioningController()
    {
        return brightcoveClosedCaptioningController;
    }

    public BrightcoveClosedCaptioningView getClosedCaptioningView()
    {
        return brightcoveClosedCaptioningView;
    }

    public int getCurrentIndex()
    {
        return currentIndex;
    }

    public int getCurrentPosition()
    {
        return playheadPosition;
    }

    public int getDuration()
    {
        return duration;
    }

    public EventEmitter getEventEmitter()
    {
        if (eventEmitter == null)
        {
            return null;
        } else
        {
            return ((RegisteringEventEmitter)eventEmitter).getRootEmitter();
        }
    }

    public List getList()
    {
        return Collections.unmodifiableList(videos);
    }

    public MediaController getMediaController()
    {
        return mediaController;
    }

    public VideoPlaybackController getPlaybackController()
    {
        return playbackController;
    }

    public abstract RenderView getRenderView();

    public DefaultSourceSelectionController getSourceController()
    {
        return sourceController;
    }

    public VideoDisplayComponent getVideoDisplay()
    {
        return videoDisplay;
    }

    public abstract int getVideoHeight();

    public VideoStillDisplayComponent getVideoStillDisplay()
    {
        return videoStillDisplay;
    }

    public abstract int getVideoWidth();

    protected void init(Context context)
    {
        Log.i(TAG, "init");
        mediaControlsVisibilityManager = new MediaControlsVisibilityManager(this);
        resetMetaData();
        playheadPosition = -1;
        setClickable(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        imageView = new ImageView(context);
        addView(imageView);
    }

    protected void initListeners()
    {
        mediaControlsVisibilityManager.initListeners(eventEmitter);
        addListener("sourceNotPlayable", new EventListener() {

            final BaseVideoView this$0;

            public void processEvent(Event event)
            {
                eventEmitter.emit("stop");
            }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
        });
        addListener("videoDurationChanged", new EventListener() {

            final BaseVideoView this$0;

            public void processEvent(Event event)
            {
                int i = event.getIntegerProperty("duration");
                if (i > 0)
                {
                    String s = BaseVideoView.TAG;
                    Object aobj[] = new Object[1];
                    aobj[0] = Integer.valueOf(i);
                    Log.v(s, String.format("videoDurationChanged: changing duration to %d.", aobj));
                    duration = i;
                    showMediaController();
                }
            }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
        });
        OnProgressListener onprogresslistener = new OnProgressListener();
        addListener("progress", onprogresslistener);
        addListener("adProgress", onprogresslistener);
        addListener("didSetSource", new EventListener() );
        addListener("didSetVideo", new EventListener() {

            final BaseVideoView this$0;

            public void processEvent(Event event)
            {
                Video video = (Video)event.properties.get("video");
                setupClosedCaptioningRendering(video);
            }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
        });
        addListener("completed", new EventListener() {

            final BaseVideoView this$0;

            public void processEvent(Event event)
            {
                if (onCompletionListener != null)
                {
                    onCompletionListener.onCompletion(null);
                }
                playheadPosition = 0;
                setCurrentlyPlaying(false);
            }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
        });
        addListener("bufferedUpdate", new EventListener() {

            final BaseVideoView this$0;

            public void processEvent(Event event)
            {
                bufferedPercent = event.getIntegerProperty("percentComplete");
            }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
        });
        addListener("seekTo", new EventListener() {

            final BaseVideoView this$0;

            public void processEvent(Event event)
            {
                int i = event.getIntegerProperty("seekPosition");
                if (i > -1)
                {
                    playheadPosition = i;
                }
            }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
        });
        addListener("didSeekTo", new EventListener() {

            final BaseVideoView this$0;

            public void processEvent(Event event)
            {
                int i = event.getIntegerProperty("playheadPosition");
                if (i > -1)
                {
                    playheadPosition = i;
                }
            }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
        });
        addListener("didPlay", new EventListener() {

            final BaseVideoView this$0;

            public void processEvent(Event event)
            {
                setCurrentlyPlaying(true);
                showMediaController();
                prebufferNextVideo();
            }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
        });
        addListener("didStop", new EventListener() {

            final BaseVideoView this$0;

            public void processEvent(Event event)
            {
                resetMetaData();
            }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
        });
        addListener("didPause", new EventListener() {

            final BaseVideoView this$0;

            public void processEvent(Event event)
            {
                setCurrentlyPlaying(false);
            }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
        });
        addListener("willInterruptContent", new EventListener() {

            final BaseVideoView this$0;

            public void processEvent(Event event)
            {
                if (mediaController != null)
                {
                    mediaController.hide();
                    eventEmitter.once("progress", new EventListener() {

                        final _cls12 this$1;

                        public void processEvent(Event event)
                        {
                            mediaController.show();
                        }

            
            {
                this$1 = _cls12.this;
                super();
            }
                    });
                }
            }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
        });
        addListener("didLoadCaptions", new EventListener() {

            final BaseVideoView this$0;

            public void processEvent(Event event)
            {
                if (event.properties.containsKey("ttmlDocument") || event.properties.containsKey("webvttDocument"))
                {
                    addView(brightcoveClosedCaptioningView);
                } else
                if (brightcoveClosedCaptioningView != null)
                {
                    removeView(brightcoveClosedCaptioningView);
                    return;
                }
            }

            
            {
                this$0 = BaseVideoView.this;
                super();
            }
        });
    }

    public boolean isPlaying()
    {
        return currentlyPlaying;
    }

    public void onControllerHide()
    {
        Log.i(TAG, "onControllerHide");
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        if (eventEmitter == null)
        {
            setEventEmitter(new EventEmitterImpl());
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        Log.v(TAG, (new StringBuilder()).append("onLayout: changed = ").append(flag).append(", left = ").append(i).append(", top = ").append(j).append(", right = ").append(k).append(", bottom = ").append(l).toString());
        super.onLayout(flag, i, j, k, l);
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getSize(i);
        int l = android.view.View.MeasureSpec.getMode(i);
        int i1 = android.view.View.MeasureSpec.getSize(j);
        int j1 = android.view.View.MeasureSpec.getMode(j);
        Log.v(TAG, (new StringBuilder()).append("onMeasure: width = ").append(k).append(", height = ").append(i1).append(", videoWidth = ").append(getVideoWidth()).append(", videoHeight = ").append(getVideoHeight()).append(", widthMode = ").append(LayoutUtil.getSpecMode(l)).append(", heightMode = ").append(LayoutUtil.getSpecMode(j1)).toString());
        super.onMeasure(i, j);
    }

    protected void onPrepared()
    {
        if (onPreparedListener != null)
        {
            onPreparedListener.onPrepared(videoDisplay.getMediaPlayer());
        }
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        Log.v(TAG, (new StringBuilder()).append("onSizeChanged: width = ").append(i).append(", height = ").append(j).append(", oldw = ").append(k).append(", oldh = ").append(l).toString());
        super.onSizeChanged(i, j, k, l);
    }

    public void pause()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("playheadPosition", Integer.valueOf(playheadPosition));
        eventEmitter.emit("pause", hashmap);
    }

    public void remove(int i)
    {
        Video video = (Video)videos.remove(i);
        videoToSourceMap.remove(video);
        if (currentIndex <= i) goto _L2; else goto _L1
_L1:
        currentIndex = -1 + currentIndex;
_L4:
        emitDidChangeList();
        return;
_L2:
        if (videos.isEmpty())
        {
            setCurrentIndexPrivate(-1);
        } else
        if (currentIndex == i)
        {
            if (i == videos.size())
            {
                setCurrentIndex(i - 1);
            } else
            if (i < videos.size())
            {
                setCurrentIndexPrivate(i);
            }
        } else
        if (1 + currentIndex == i && currentlyPlaying)
        {
            prebufferNextVideo();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void removeListener(String s)
    {
        eventEmitter.off(s, ((Integer)listenerTokens.get(s)).intValue());
    }

    public void removeListeners()
    {
        String s;
        for (Iterator iterator = listenerTokens.keySet().iterator(); iterator.hasNext(); eventEmitter.off(s, ((Integer)listenerTokens.get(s)).intValue()))
        {
            s = (String)iterator.next();
        }

        listenerTokens.clear();
    }

    protected void resetMetaData()
    {
        bufferedPercent = 0;
        playheadPosition = 0;
        duration = -1;
        setCurrentlyPlaying(false);
    }

    public void seekTo(int i)
    {
        Log.d(TAG, (new StringBuilder()).append("Seeking to ").append(i).toString());
        HashMap hashmap = new HashMap();
        hashmap.put("seekPosition", Integer.valueOf(i));
        playheadPosition = i;
        eventEmitter.emit("seekTo", hashmap);
    }

    protected void setChildLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (imageView.getVisibility() == 0)
        {
            android.widget.FrameLayout.LayoutParams layoutparams1 = new android.widget.FrameLayout.LayoutParams(layoutparams.width, layoutparams.height);
            layoutparams1.gravity = 17;
            imageView.setLayoutParams(layoutparams1);
        }
    }

    public void setCurrentIndex(int i)
    {
        if (i == currentIndex)
        {
            return;
        }
        if (i < 0 || i >= videos.size())
        {
            throw new IndexOutOfBoundsException();
        } else
        {
            setCurrentIndexPrivate(i);
            return;
        }
    }

    public void setEventEmitter(EventEmitter eventemitter)
    {
        eventEmitter = RegisteringEventEmitter.build(eventemitter, getClass());
        playbackController = new VideoPlaybackController(eventemitter);
        sourceController = new DefaultSourceSelectionController(eventemitter);
        videoStillDisplay = new VideoStillDisplayComponent(imageView, eventemitter);
        pluginManager = new BrightcovePluginManager(eventemitter);
        brightcoveClosedCaptioningController = new BrightcoveClosedCaptioningController(this, getContext());
        initListeners();
    }

    public void setLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        Log.v(TAG, (new StringBuilder()).append("setLayoutParams: ").append(layoutparams).toString());
        super.setLayoutParams(layoutparams);
        if (layoutparams != null)
        {
            setChildLayoutParams(layoutparams);
        }
    }

    public void setMediaController(MediaController mediacontroller)
    {
        setMediaController(mediacontroller, null, null);
    }

    public void setMediaController(MediaController mediacontroller, View view, android.widget.MediaController.MediaPlayerControl mediaplayercontrol)
    {
        if (mediaController != null)
        {
            mediaController.hide();
        }
        mediaController = mediacontroller;
        mediaPlayerControl = mediaplayercontrol;
        anchorView = view;
        attachMediaController();
    }

    public void setOnCompletionListener(android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
    {
        onCompletionListener = oncompletionlistener;
    }

    public void setOnPreparedListener(android.media.MediaPlayer.OnPreparedListener onpreparedlistener)
    {
        onPreparedListener = onpreparedlistener;
    }

    public void setVideoPath(String s)
    {
        if (hasNextVideo())
        {
            eventEmitter.emit("prebufferNextVideo");
        }
        videos.clear();
        videoToSourceMap.clear();
        add(Video.createVideo(s));
    }

    public void setVideoPath(String s, String s1)
    {
        if (hasNextVideo())
        {
            eventEmitter.emit("prebufferNextVideo");
        }
        videos.clear();
        videoToSourceMap.clear();
        if (s != null)
        {
            Video video = Video.createVideo(s);
            if (s1 != null)
            {
                video.getProperties().put("customFields", s1);
            }
            add(video);
        }
    }

    public void setVideoURI(Uri uri)
    {
        setVideoPath(uri.toString());
    }

    protected void setupClosedCaptioningRendering(Video video)
    {
label0:
        {
            Log.v(TAG, "setupClosedCaptioningRendering:");
            if (brightcoveClosedCaptioningController != null && brightcoveClosedCaptioningController.checkIfCaptionsExist(video) != null)
            {
                if (brightcoveClosedCaptioningView != null)
                {
                    break label0;
                }
                brightcoveClosedCaptioningView = new BrightcoveClosedCaptioningView(getContext());
                brightcoveClosedCaptioningView.initialize(eventEmitter, this);
            }
            return;
        }
        brightcoveClosedCaptioningView.clear();
        brightcoveClosedCaptioningView.prepareLayout();
    }

    protected abstract void showMediaController();

    public void start()
    {
        if (hasSetSource)
        {
            hasPendingPlay = false;
            HashMap hashmap = new HashMap();
            hashmap.put("playheadPosition", Integer.valueOf(playheadPosition));
            eventEmitter.emit("play", hashmap);
            return;
        }
        if (!videos.isEmpty())
        {
            hasPendingPlay = true;
            return;
        } else
        {
            Log.e(TAG, "No video to play.");
            return;
        }
    }

    public void stopPlayback()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("playheadPosition", Integer.valueOf(playheadPosition));
        eventEmitter.emit("stop", hashmap);
    }









/*
    static int access$302(BaseVideoView basevideoview, int i)
    {
        basevideoview.currentIndex = i;
        return i;
    }

*/


/*
    static int access$308(BaseVideoView basevideoview)
    {
        int i = basevideoview.currentIndex;
        basevideoview.currentIndex = i + 1;
        return i;
    }

*/


/*
    static boolean access$402(BaseVideoView basevideoview, boolean flag)
    {
        basevideoview.hasSetSource = flag;
        return flag;
    }

*/



/*
    static boolean access$502(BaseVideoView basevideoview, boolean flag)
    {
        basevideoview.hasPendingPlay = flag;
        return flag;
    }

*/




/*
    static int access$802(BaseVideoView basevideoview, int i)
    {
        basevideoview.bufferedPercent = i;
        return i;
    }

*/

}
