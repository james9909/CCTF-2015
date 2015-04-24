// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import java.util.Map;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class <init>
    implements EventListener
{

    final VideoDisplayComponent this$0;

    public void processEvent(Event event)
    {
        Log.v(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("OnPlayListener: mediaPlayer = ").append(VideoDisplayComponent.access$700(VideoDisplayComponent.this)).append(", hasPrepared = ").append(VideoDisplayComponent.access$800(VideoDisplayComponent.this)).append(", hasSurface = ").append(hasSurface).toString());
        VideoDisplayComponent.access$1002(VideoDisplayComponent.this, false);
        if (currentSource != null)
        {
            final int position;
            if (event.properties.containsKey("playheadPosition"))
            {
                position = event.getIntegerProperty("playheadPosition");
            } else
            {
                Log.v(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("OnPlayListener: playheadPosition = ").append(playheadPosition).toString());
                position = playheadPosition;
            }
            if (VideoDisplayComponent.access$700(VideoDisplayComponent.this) != null)
            {
                if (VideoDisplayComponent.access$800(VideoDisplayComponent.this))
                {
                    if (hasSurface)
                    {
                        if (!VideoDisplayComponent.access$700(VideoDisplayComponent.this).isPlaying())
                        {
                            VideoDisplayComponent.access$1700(VideoDisplayComponent.this, position);
                            return;
                        } else
                        {
                            Log.w(VideoDisplayComponent.access$1200(), "Already playing.");
                            return;
                        }
                    } else
                    {
                        Log.v(VideoDisplayComponent.access$1200(), "OnPlayListener: Surface is not available yet.");
                        VideoDisplayComponent.access$1800(VideoDisplayComponent.this).once("readyToPlay", new EventListener() {

                            final VideoDisplayComponent.OnPlayListener this$1;
                            final int val$position;

                            public void processEvent(Event event1)
                            {
                                VideoDisplayComponent.access$1700(this$0, position);
                            }

            
            {
                this$1 = VideoDisplayComponent.OnPlayListener.this;
                position = i;
                super();
            }
                        });
                        return;
                    }
                } else
                {
                    Log.v(VideoDisplayComponent.access$1200(), "OnPlayListener: MediaPlayer has not been prepared yet.");
                    VideoDisplayComponent.access$1900(VideoDisplayComponent.this).once("didSetSource", new EventListener() {

                        final VideoDisplayComponent.OnPlayListener this$1;
                        final int val$position;

                        public void processEvent(Event event1)
                        {
                            VideoDisplayComponent.access$1700(this$0, position);
                        }

            
            {
                this$1 = VideoDisplayComponent.OnPlayListener.this;
                position = i;
                super();
            }
                    });
                    return;
                }
            } else
            {
                playheadPosition = 0;
                Log.v(VideoDisplayComponent.access$1200(), "OnPlayListener: MediaPlayer was null - creating a new one.");
                VideoDisplayComponent.access$2000(VideoDisplayComponent.this).once("videoDurationChanged", new EventListener() {

                    final VideoDisplayComponent.OnPlayListener this$1;
                    final int val$position;

                    public void processEvent(Event event1)
                    {
                        VideoDisplayComponent.access$1700(this$0, position);
                    }

            
            {
                this$1 = VideoDisplayComponent.OnPlayListener.this;
                position = i;
                super();
            }
                });
                openVideo(currentVideo, currentSource);
                return;
            }
        } else
        {
            Log.e(VideoDisplayComponent.access$1200(), "Source has not been set yet.");
            return;
        }
    }

    private _cls3.val.position()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
