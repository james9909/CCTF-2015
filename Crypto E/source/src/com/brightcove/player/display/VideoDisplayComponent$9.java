// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.media.MediaPlayer;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.util.ErrorUtil;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class this._cls0
    implements android.media.ner
{

    final VideoDisplayComponent this$0;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        switch (i)
        {
        default:
            VideoDisplayComponent.access$3202(VideoDisplayComponent.this, true);
            HashMap hashmap = new HashMap();
            hashmap.put("video", currentVideo);
            hashmap.put("source", currentSource);
            hashmap.put("errorCode", Integer.valueOf(i));
            hashmap.put("errorExtra", Integer.valueOf(j));
            hashmap.put("errorMessage", (new StringBuilder()).append("MediaPlayer ").append(ErrorUtil.getMessage("error")).toString());
            VideoDisplayComponent.access$3700(VideoDisplayComponent.this).emit("sourceNotPlayable", hashmap);
            // fall through

        case 100: // 'd'
            return false;
        }
    }

    ()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }
}
