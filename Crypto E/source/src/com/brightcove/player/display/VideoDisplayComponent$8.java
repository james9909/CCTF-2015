// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.display;

import android.media.MediaPlayer;

// Referenced classes of package com.brightcove.player.display:
//            VideoDisplayComponent

class this._cls0
    implements android.media.hangedListener
{

    final VideoDisplayComponent this$0;

    public void onVideoSizeChanged(MediaPlayer mediaplayer, int i, int j)
    {
        if (i != 0 && j != 0)
        {
            emitVideoSize(i, j);
        }
    }

    ()
    {
        this$0 = VideoDisplayComponent.this;
        super();
    }
}
