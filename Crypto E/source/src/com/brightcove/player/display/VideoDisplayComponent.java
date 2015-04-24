// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.media.SubtitleController;
import android.media.WebVttRenderer;
import android.net.Uri;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.brightcove.player.analytics.Analytics;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.EventUtil;
import com.brightcove.player.view.RenderView;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class VideoDisplayComponent extends AbstractComponent
{
    class OnPrebufferNextVideoListener
        implements EventListener
    {

        final VideoDisplayComponent this$0;

        public void processEvent(Event event)
        {
            nextVideo = (Video)event.properties.get("video");
            nextSource = (Source)event.properties.get("source");
        }

        private OnPrebufferNextVideoListener()
        {
            this$0 = VideoDisplayComponent.this;
            super();
        }

    }

    public class OnSeekListener
        implements EventListener
    {

        final VideoDisplayComponent this$0;

        public void processEvent(Event event)
        {
            Log.v(VideoDisplayComponent.TAG, (new StringBuilder()).append("OnSeekListener: mediaPlayer = ").append(mediaPlayer).toString());
            int i = -1;
            if (event.properties.containsKey("seekPosition"))
            {
                i = event.getIntegerProperty("seekPosition");
            } else
            {
                Log.e(VideoDisplayComponent.TAG, "Seek event must pass the seekPosition property");
            }
            Log.v(VideoDisplayComponent.TAG, (new StringBuilder()).append("OnSeekListener: position = ").append(i).toString());
            if (mediaPlayer != null && hasPrepared && hasSurface)
            {
                seekPosition = i;
                fromSeekPosition = playheadPosition;
                mediaPlayer.seekTo(i);
                return;
            } else
            {
                seekPositionWhenPrepared = i;
                return;
            }
        }

        protected OnSeekListener()
        {
            this$0 = VideoDisplayComponent.this;
            super();
        }
    }

    class OnSetVolumeListener
        implements EventListener
    {

        final VideoDisplayComponent this$0;

        public void processEvent(Event event)
        {
            Log.v(VideoDisplayComponent.TAG, (new StringBuilder()).append("OnSetVolumeListener: mediaPlayer = ").append(mediaPlayer).toString());
            if (!event.properties.containsKey("leftVolume") || !event.properties.containsKey("rightVolume"))
            {
                Log.e(VideoDisplayComponent.TAG, "SET_VOLUME requires LEFT_VOLUME and RIGHT_VOLUME properties.");
                return;
            }
            float f = ((Float)event.properties.get("leftVolume")).floatValue();
            float f1 = ((Float)event.properties.get("rightVolume")).floatValue();
            Log.v(VideoDisplayComponent.TAG, (new StringBuilder()).append("OnSetVolumeListener: leftVolume = ").append(f).append(" rightVolume = ").append(f1).toString());
            if (f < 0.0F || f > 1.0F || f1 < 0.0F || f1 > 1.0F)
            {
                Log.e(VideoDisplayComponent.TAG, (new StringBuilder()).append("LEFT_VOLUME and RIGHT_VOLUME must be between 0.0f and 1.0f: ").append(f).append(", ").append(f1).toString());
                return;
            } else
            {
                mediaPlayer.setVolume(f, f1);
                return;
            }
        }

        private OnSetVolumeListener()
        {
            this$0 = VideoDisplayComponent.this;
            super();
        }

    }


    private static final ScheduledExecutorService EXECUTOR = Executors.newScheduledThreadPool(1);
    protected static final int ON_PLAY_SEEK_THRESHOLD = 1000;
    private static final int PROGRESS_INTERVAL = 500;
    private static final String TAG = com/brightcove/player/display/VideoDisplayComponent.getSimpleName();
    private Analytics analytics;
    protected Context context;
    protected Source currentSource;
    protected Video currentVideo;
    protected int duration;
    private int fromSeekPosition;
    private boolean hasErrored;
    private boolean hasPlaybackStarted;
    private boolean hasPrepared;
    protected boolean hasSurface;
    private MediaPlayer mediaPlayer;
    protected Source nextSource;
    protected Video nextVideo;
    android.media.MediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener;
    OnCompletedListener onCompletedListener;
    android.media.MediaPlayer.OnCompletionListener onCompletionListener;
    android.media.MediaPlayer.OnErrorListener onErrorListener;
    android.media.MediaPlayer.OnInfoListener onInfoListener;
    OnPauseListener onPauseListener;
    OnPlayListener onPlayListener;
    OnPrebufferNextVideoListener onPrebufferNextVideoListener;
    android.media.MediaPlayer.OnPreparedListener onPreparedListener;
    android.media.MediaPlayer.OnSeekCompleteListener onSeekCompleteListener;
    OnSeekListener onSeekListener;
    OnSetSourceListener onSetSourceListener;
    OnSetVolumeListener onSetVolumeListener;
    OnStopListener onStopListener;
    android.media.MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener;
    OnWillInterruptContentListener onWillInterruptContentListener;
    OnWillResumeContentListener onWillResumeContentListener;
    protected int playheadPosition;
    protected RenderView renderView;
    protected boolean reseeking;
    protected int seekPosition;
    protected int seekPositionWhenPrepared;
    protected ScheduledFuture updater;

    public VideoDisplayComponent(RenderView renderview, EventEmitter eventemitter)
    {
        AbstractComponent(eventemitter, com/brightcove/player/display/VideoDisplayComponent);
        onBufferingUpdateListener = new android.media.MediaPlayer.OnBufferingUpdateListener() ;
        onCompletionListener = new android.media.MediaPlayer.OnCompletionListener() ;
        onSeekCompleteListener = new android.media.MediaPlayer.OnSeekCompleteListener() ;
        onPreparedListener = new android.media.MediaPlayer.OnPreparedListener() ;
        onVideoSizeChangedListener = new android.media.MediaPlayer.OnVideoSizeChangedListener() {

            final VideoDisplayComponent this$0;

            public void onVideoSizeChanged(MediaPlayer mediaplayer, int i, int j)
            {
                if (i != 0 && j != 0)
                {
                    emitVideoSize(i, j);
                }
            }

            
            {
                this$0 = VideoDisplayComponent.this;
                super();
            }
        };
        onErrorListener = new android.media.MediaPlayer.OnErrorListener() ;
        onInfoListener = new android.media.MediaPlayer.OnInfoListener() {

            final VideoDisplayComponent this$0;

            public boolean onInfo(MediaPlayer mediaplayer, int i, int j)
            {
                i;
                JVM INSTR lookupswitch 10: default 92
            //                           1: 120
            //                           3: 144
            //                           700: 132
            //                           701: 156
            //                           702: 168
            //                           703: 216
            //                           800: 180
            //                           801: 192
            //                           802: 204
            //                           900: 228;
                   goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L1:
                Log.i(VideoDisplayComponent.TAG, (new StringBuilder()).append("unknown MediaPlayer info: what = ").append(i).toString());
_L13:
                return true;
_L2:
                Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_UNKNOWN");
                continue; /* Loop/switch isn't completed */
_L4:
                Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
                continue; /* Loop/switch isn't completed */
_L3:
                Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_VIDEO_RENDERING_START");
                continue; /* Loop/switch isn't completed */
_L5:
                Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_BUFFERING_START");
                continue; /* Loop/switch isn't completed */
_L6:
                Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_BUFFERING_END");
                continue; /* Loop/switch isn't completed */
_L8:
                Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_BAD_INTERLEAVING");
                continue; /* Loop/switch isn't completed */
_L9:
                Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_NOT_SEEKABLE");
                continue; /* Loop/switch isn't completed */
_L10:
                Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_METADATA_UPDATE");
                continue; /* Loop/switch isn't completed */
_L7:
                Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_NETWORK_BANDWIDTH");
                continue; /* Loop/switch isn't completed */
_L11:
                Log.i(VideoDisplayComponent.TAG, "MEDIA_INFO_TIMED_TEXT_ERROR");
                if (true) goto _L13; else goto _L12
_L12:
            }

            
            {
                this$0 = VideoDisplayComponent.this;
                super();
            }
        };
        if (renderview == null || eventemitter == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("renderViewAndEventEmitterRequired"));
        } else
        {
            analytics = new Analytics(eventemitter, renderview.getContext());
            renderView = renderview;
            context = renderview.getContext();
            setHolderType();
            initializeListeners();
            return;
        }
    }

    private void createPlayer(Video video, Source source)
    {
        Log.v(TAG, "createPlayer");
        SurfaceHolder surfaceholder = renderView.getHolder();
        try
        {
            mediaPlayer = new MediaPlayer();
        }
        catch (IOException ioexception)
        {
            Log.e(TAG, "IOException trying to play video", ioexception);
            eventEmitter.emit("error", Collections.singletonMap("error", ioexception));
            return;
        }
        if (surfaceholder == null) goto _L2; else goto _L1
_L1:
        mediaPlayer.setDisplay(surfaceholder);
_L3:
        mediaPlayer.setOnPreparedListener(onPreparedListener);
        mediaPlayer.setOnVideoSizeChangedListener(onVideoSizeChangedListener);
        mediaPlayer.setOnCompletionListener(onCompletionListener);
        mediaPlayer.setOnSeekCompleteListener(onSeekCompleteListener);
        mediaPlayer.setOnBufferingUpdateListener(onBufferingUpdateListener);
        mediaPlayer.setOnErrorListener(onErrorListener);
        mediaPlayer.setOnInfoListener(onInfoListener);
        mediaPlayer.setScreenOnWhilePlaying(true);
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            break MISSING_BLOCK_LABEL_268;
        }
        setDataSource(mediaPlayer, context, Uri.parse(source.getUrl()), getHeaders(video, source));
_L4:
        if (android.os.Build.VERSION.SDK_INT >= 19 && video.getProperties().containsKey("subtitleSources"))
        {
            setupSubtitles(video, mediaPlayer);
        }
        mediaPlayer.prepareAsync();
        playheadPosition = 0;
        duration = 0;
        return;
_L2:
        setSurface(mediaPlayer, renderView.getSurface());
          goto _L3
        if (getHeaders(video, source) != null)
        {
            Log.w(TAG, "Headers ignored below API level 14");
        }
        mediaPlayer.setDataSource(context, Uri.parse(source.getUrl()));
          goto _L4
    }

    protected static Map getHeaders(Video video, Source source)
    {
        Map map2 = (Map)video.getProperties().get("headers");
        Map map = map2;
_L1:
        Map map1 = (Map)source.getProperties().get("headers");
        if (map1 == null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        if (map == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        map.putAll(map1);
        map1 = map;
_L2:
        Log.v(TAG, (new StringBuilder()).append("headers = ").append(map1).toString());
        return map1;
        Exception exception;
        exception;
        Log.e(TAG, "Failed to use Video headers.", exception);
        map = null;
          goto _L1
        Exception exception1;
        exception1;
        Log.e(TAG, "Failed to use Source headers.", exception1);
        map1 = map;
          goto _L2
    }

    private void play(final int position)
    {
        Log.v(TAG, (new StringBuilder()).append("play: position = ").append(position).append(", playheadPosition = ").append(playheadPosition).append(", seekPositionWhenPrepared = ").append(seekPositionWhenPrepared).toString());
        if (!hasSurface) goto _L2; else goto _L1
_L1:
        SurfaceHolder surfaceholder = renderView.getHolder();
        if (surfaceholder != null)
        {
            mediaPlayer.setDisplay(surfaceholder);
        } else
        {
            setSurface(mediaPlayer, renderView.getSurface());
        }
        if (position < 0 || Math.abs(position - playheadPosition) <= 1000) goto _L4; else goto _L3
_L3:
        fromSeekPosition = -1;
        seekPosition = position;
        mediaPlayer.seekTo(position);
_L5:
        seekPositionWhenPrepared = -1;
        if (updater == null)
        {
            startUpdater();
        }
        mediaPlayer.start();
        return;
_L4:
        if (seekPositionWhenPrepared >= 0 && Math.abs(seekPositionWhenPrepared - playheadPosition) > 1000)
        {
            fromSeekPosition = playheadPosition;
            mediaPlayer.seekTo(seekPositionWhenPrepared);
        }
        if (true) goto _L5; else goto _L2
_L2:
        Log.v(TAG, "play: Surface is not available yet.");
        eventEmitter.once("readyToPlay", new EventListener() {

            final VideoDisplayComponent this$0;
            final int val$position;

            public void processEvent(Event event)
            {
                play(position);
            }

            
            {
                this$0 = VideoDisplayComponent.this;
                position = i;
                super();
            }
        });
        return;
    }

    private void setDataSource(MediaPlayer mediaplayer, Context context1, Uri uri, Map map)
    {
        mediaplayer.setDataSource(context1, uri, map);
    }

    private void setHolderType()
    {
        if (android.os.Build.VERSION.SDK_INT <= 10)
        {
            SurfaceHolder surfaceholder = renderView.getHolder();
            if (surfaceholder != null)
            {
                surfaceholder.setType(3);
            }
        }
    }

    private void setSurface(MediaPlayer mediaplayer, Surface surface)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            mediaplayer.setSurface(surface);
        }
    }

    private void setupSubtitles(Video video, MediaPlayer mediaplayer)
    {
        List list = (List)video.getProperties().get("subtitleSources");
        if (list != null)
        {
            SubtitleController subtitlecontroller = new SubtitleController(context, mediaplayer.getMediaTimeProvider(), mediaplayer);
            subtitlecontroller.registerRenderer(new WebVttRenderer(context));
            mediaplayer.setSubtitleAnchor(subtitlecontroller, (android.media.SubtitleController.Anchor)renderView);
            for (Iterator iterator = list.iterator(); iterator.hasNext();)
            {
                Pair pair = (Pair)iterator.next();
                try
                {
                    mediaplayer.addSubtitleSource((InputStream)pair.first, (MediaFormat)pair.second);
                }
                catch (IllegalStateException illegalstateexception)
                {
                    onInfoListener.onInfo(mediaplayer, 901, 0);
                }
            }

        }
    }

    protected void destroyPlayer()
    {
        stopUpdater();
        if (mediaPlayer != null)
        {
            Log.i(TAG, "Shutting down current MediaPlayer");
            mediaPlayer.release();
            mediaPlayer = null;
            hasPrepared = false;
            hasErrored = false;
        }
    }

    protected void emitVideoSize(int i, int j)
    {
        Log.v(TAG, (new StringBuilder()).append("emitVideoSize: ").append(i).append(", ").append(j).append(", ").append(renderView.getWidth()).append(", ").append(renderView.getHeight()).toString());
        if (i > 0 && j > 0 && (i != renderView.getVideoWidth() || j != renderView.getVideoHeight()))
        {
            renderView.setVideoSize(i, j);
            HashMap hashmap = new HashMap();
            hashmap.put("width", Integer.valueOf(i));
            hashmap.put("height", Integer.valueOf(j));
            eventEmitter.emit("videoSizeKnown", hashmap);
        }
    }

    public Analytics getAnalytics()
    {
        return analytics;
    }

    public MediaPlayer getMediaPlayer()
    {
        return mediaPlayer;
    }

    public RenderView getRenderView()
    {
        return renderView;
    }

    public SurfaceView getSurfaceView()
    {
        boolean flag = renderView instanceof SurfaceView;
        SurfaceView surfaceview = null;
        if (flag)
        {
            surfaceview = (SurfaceView)renderView;
        }
        return surfaceview;
    }

    protected void initializeListeners()
    {
        onSetSourceListener = new OnSetSourceListener();
        onPlayListener = new OnPlayListener();
        onPauseListener = new OnPauseListener();
        onSeekListener = new OnSeekListener();
        onStopListener = new OnStopListener();
        onPrebufferNextVideoListener = new OnPrebufferNextVideoListener();
        onCompletedListener = new OnCompletedListener();
        onWillInterruptContentListener = new OnWillInterruptContentListener();
        onWillResumeContentListener = new OnWillResumeContentListener();
        onSetVolumeListener = new OnSetVolumeListener();
        addListener("setSource", onSetSourceListener);
        addListener("play", onPlayListener);
        addListener("seekTo", onSeekListener);
        addListener("pause", onPauseListener);
        addListener("stop", onStopListener);
        addListener("prebufferNextVideo", onPrebufferNextVideoListener);
        addListener("completed", onCompletedListener);
        addListener("willInterruptContent", onWillInterruptContentListener);
        addListener("willResumeContent", onWillResumeContentListener);
        addListener("setVolume", onSetVolumeListener);
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int i, int j)
    {
        surfaceCreated(null);
    }

    public void onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
    {
        surfaceDestroyed(null);
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfacetexture, int i, int j)
    {
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfacetexture)
    {
    }

    protected void openVideo(final Video video, final Source source)
    {
        String s = source.getUrl();
        if (s != null && !s.trim().equals(""))
        {
            destroyPlayer();
            hasPlaybackStarted = false;
            Surface surface = renderView.getSurface();
            Log.v(TAG, (new StringBuilder()).append("openVideo: surface = ").append(surface).append(", hasSurface = ").append(hasSurface).toString());
            if (surface != null && hasSurface)
            {
                createPlayer(video, source);
                return;
            } else
            {
                eventEmitter.once("readyToPlay", new EventListener() {

                    final VideoDisplayComponent this$0;
                    final Source val$source;
                    final Video val$video;

                    public void processEvent(Event event)
                    {
                        createPlayer(video, source);
                    }

            
            {
                this$0 = VideoDisplayComponent.this;
                video = video1;
                source = source1;
                super();
            }
                });
                return;
            }
        } else
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("invalidURL"));
        }
    }

    protected void startUpdater()
    {
        Log.v(TAG, "startUpdater");
        updater = EXECUTOR.scheduleAtFixedRate(new Runnable() , 0L, 500L, TimeUnit.MILLISECONDS);
    }

    protected void stopUpdater()
    {
        Log.v(TAG, (new StringBuilder()).append("stopUpdater: ").append(updater).toString());
        if (updater != null)
        {
            updater.cancel(false);
            updater = null;
        }
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        Log.d(TAG, "surfaceChanged");
        if (mediaPlayer != null && surfaceholder != null)
        {
            if (surfaceholder.getSurface() != null)
            {
                mediaPlayer.setDisplay(surfaceholder);
            } else
            {
                String s = ErrorUtil.getMessage("invalidSurface");
                Log.e(TAG, (new StringBuilder()).append("surfaceChanged: ").append(s).toString());
                eventEmitter.emit("error", Collections.singletonMap("errorMessage", s));
            }
        }
        hasSurface = true;
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        Log.d(TAG, "surfaceCreated");
        hasSurface = true;
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        Log.d(TAG, "surfaceDestroyed");
        if (mediaPlayer == null) goto _L2; else goto _L1
_L1:
        if (!Boolean.valueOf(System.getProperty("releaseWhenSurfaceDestroyed")).booleanValue()) goto _L4; else goto _L3
_L3:
        destroyPlayer();
_L2:
        hasSurface = false;
        return;
_L4:
        if (mediaPlayer.isPlaying())
        {
            if (currentSource != null && currentSource.getDeliveryType() != DeliveryType.HLS)
            {
                mediaPlayer.pause();
            } else
            {
                destroyPlayer();
            }
        }
        if (true) goto _L2; else goto _L5
_L5:
    }




/*
    static boolean access$1002(VideoDisplayComponent videodisplaycomponent, boolean flag)
    {
        videodisplaycomponent.hasPlaybackStarted = flag;
        return flag;
    }

*/













/*
    static int access$2102(VideoDisplayComponent videodisplaycomponent, int i)
    {
        videodisplaycomponent.fromSeekPosition = i;
        return i;
    }

*/













/*
    static boolean access$3202(VideoDisplayComponent videodisplaycomponent, boolean flag)
    {
        videodisplaycomponent.hasErrored = flag;
        return flag;
    }

*/









/*
    static boolean access$802(VideoDisplayComponent videodisplaycomponent, boolean flag)
    {
        videodisplaycomponent.hasPrepared = flag;
        return flag;
    }

*/


    // Unreferenced inner class com/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1

/* anonymous class */

    // Unreferenced inner class com/brightcove/player/display/VideoDisplayComponent$OnCompletedListener$1$1

/* anonymous class */

    // Unreferenced inner class com/brightcove/player/display/VideoDisplayComponent$OnPlayListener$1

/* anonymous class */
    class OnPlayListener._cls1
        implements EventListener
    {

        final OnPlayListener this$1;
        final int val$position;

        public void processEvent(Event event)
        {
            play(position);
        }

            
            {
                this$1 = final_onplaylistener;
                position = I.this;
                super();
            }
    }


    // Unreferenced inner class com/brightcove/player/display/VideoDisplayComponent$OnPlayListener$2

/* anonymous class */
    class OnPlayListener._cls2
        implements EventListener
    {

        final OnPlayListener this$1;
        final int val$position;

        public void processEvent(Event event)
        {
            play(position);
        }

            
            {
                this$1 = final_onplaylistener;
                position = I.this;
                super();
            }
    }


    // Unreferenced inner class com/brightcove/player/display/VideoDisplayComponent$OnPlayListener$3

/* anonymous class */
    class OnPlayListener._cls3
        implements EventListener
    {

        final OnPlayListener this$1;
        final int val$position;

        public void processEvent(Event event)
        {
            play(position);
        }

            
            {
                this$1 = final_onplaylistener;
                position = I.this;
                super();
            }
    }

}
