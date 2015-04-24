// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.media.MediaPlayer;
import android.util.Log;
import com.brightcove.player.event.EventEmitter;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class this._cls0
    implements android.media.teListener
{

    final VideoDisplayComponent this$0;

    public void onSeekComplete(MediaPlayer mediaplayer)
    {
        Log.v(VideoDisplayComponent.access$1200(), (new StringBuilder()).append("onSeekComplete: fromSeekPosition = ").append(VideoDisplayComponent.access$2100(VideoDisplayComponent.this)).append(", seekPosition = ").append(seekPosition).append(", currentPosition = ").append(mediaplayer.getCurrentPosition()).toString());
        if (mediaplayer.getCurrentPosition() < seekPosition && !reseeking)
        {
            mediaplayer.seekTo(seekPosition);
            reseeking = true;
        } else
        if (VideoDisplayComponent.access$2100(VideoDisplayComponent.this) != -1)
        {
            HashMap hashmap = new HashMap();
            hashmap.put("playheadPosition", Integer.valueOf(mediaplayer.getCurrentPosition()));
            hashmap.put("seekPosition", Integer.valueOf(seekPosition));
            hashmap.put("fromSeekPosition", Integer.valueOf(VideoDisplayComponent.access$2100(VideoDisplayComponent.this)));
            hashmap.put("video", currentVideo);
            VideoDisplayComponent.access$3400(VideoDisplayComponent.this).emit("didSeekTo", hashmap);
            VideoDisplayComponent.access$2102(VideoDisplayComponent.this, -1);
            reseeking = false;
            return;
        }
    }

    ()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }
}
