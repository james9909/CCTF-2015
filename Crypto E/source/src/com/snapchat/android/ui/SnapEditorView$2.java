// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.media.MediaPlayer;

// Referenced classes of package com.snapchat.android.ui:
//            SnapEditorView, SnapVideoView

class a
    implements android.media.paredListener
{

    final SnapEditorView a;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        SnapEditorView.a(a, mediaplayer);
        mediaplayer.setLooping(true);
        mediaplayer.setOnSeekCompleteListener(new android.media.MediaPlayer.OnSeekCompleteListener() {

            final SnapEditorView._cls2 a;

            public void onSeekComplete(MediaPlayer mediaplayer1)
            {
            }

            
            {
                a = SnapEditorView._cls2.this;
                super();
            }
        });
        SnapEditorView.b(a, mediaplayer);
        SnapEditorView.b(a).requestLayout();
        a.a(SnapEditorView.c(a));
    }

    _cls1.a(SnapEditorView snapeditorview)
    {
        a = snapeditorview;
        super();
    }
}
