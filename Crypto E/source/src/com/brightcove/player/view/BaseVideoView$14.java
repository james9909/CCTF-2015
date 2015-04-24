// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.view;


// Referenced classes of package com.brightcove.player.view:
//            BaseVideoView

class this._cls0
    implements android.widget.ediaPlayerControl
{

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

    ntrol()
    {
        this$0 = BaseVideoView.this;
        super();
    }
}
