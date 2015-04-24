// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.media.MediaPlayer;
import com.brightcove.player.event.EventEmitter;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class this._cls0
    implements android.media.pdateListener
{

    final VideoDisplayComponent this$0;

    public void onBufferingUpdate(MediaPlayer mediaplayer, int i)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("percentComplete", Integer.valueOf(i));
        VideoDisplayComponent.access$3100(VideoDisplayComponent.this).emit("bufferedUpdate", hashmap);
    }

    ()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }
}
