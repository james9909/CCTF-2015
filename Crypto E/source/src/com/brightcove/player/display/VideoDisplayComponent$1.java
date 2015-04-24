// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.util.Log;
import com.brightcove.player.event.EventEmitter;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class this._cls0
    implements Runnable
{

    final VideoDisplayComponent this$0;

    public void run()
    {
        try
        {
            if (VideoDisplayComponent.access$700(VideoDisplayComponent.this) != null && VideoDisplayComponent.access$800(VideoDisplayComponent.this) && hasSurface && VideoDisplayComponent.access$700(VideoDisplayComponent.this).isPlaying() && VideoDisplayComponent.access$700(VideoDisplayComponent.this).getCurrentPosition() >= 0)
            {
                HashMap hashmap = new HashMap(4);
                hashmap.put("video", currentVideo);
                playheadPosition = VideoDisplayComponent.access$700(VideoDisplayComponent.this).getCurrentPosition();
                hashmap.put("playheadPosition", Integer.valueOf(playheadPosition));
                duration = VideoDisplayComponent.access$700(VideoDisplayComponent.this).getDuration();
                hashmap.put("duration", Integer.valueOf(duration));
                VideoDisplayComponent.access$900(VideoDisplayComponent.this).emit("progress", hashmap);
                if (playheadPosition > 0 && !VideoDisplayComponent.access$1000(VideoDisplayComponent.this))
                {
                    hashmap.put("source", currentSource);
                    VideoDisplayComponent.access$1100(VideoDisplayComponent.this).emit("didPlay", hashmap);
                    VideoDisplayComponent.access$1002(VideoDisplayComponent.this, true);
                }
            }
            return;
        }
        catch (IllegalStateException illegalstateexception)
        {
            destroyPlayer();
            Log.e(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("Media player position sampled when it was in an invalid state: ").append(illegalstateexception.getMessage()).toString(), illegalstateexception);
            VideoDisplayComponent.access$1300(VideoDisplayComponent.this).emit("error", Collections.singletonMap("error", illegalstateexception));
            return;
        }
        catch (Exception exception)
        {
            destroyPlayer();
            Log.e(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("Error monitoring playback progress").append(exception.getMessage()).toString(), exception);
            VideoDisplayComponent.access$1400(VideoDisplayComponent.this).emit("error", Collections.singletonMap("error", exception));
            return;
        }
    }

    ()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }
}
