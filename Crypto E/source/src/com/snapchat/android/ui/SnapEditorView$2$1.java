// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.ui;

import android.media.MediaPlayer;

// Referenced classes of package com.snapchat.android.ui:
//            SnapEditorView, SnapVideoView

class a
    implements android.media.ompleteListener
{

    final tener a;

    public void onSeekComplete(MediaPlayer mediaplayer)
    {
    }

    r(r r)
    {
        a = r;
        super();
    }

    // Unreferenced inner class com/snapchat/android/ui/SnapEditorView$2

/* anonymous class */
    class SnapEditorView._cls2
        implements android.media.MediaPlayer.OnPreparedListener
    {

        final SnapEditorView a;

        public void onPrepared(MediaPlayer mediaplayer)
        {
            SnapEditorView.a(a, mediaplayer);
            mediaplayer.setLooping(true);
            mediaplayer.setOnSeekCompleteListener(new SnapEditorView._cls2._cls1(this));
            SnapEditorView.b(a, mediaplayer);
            SnapEditorView.b(a).requestLayout();
            a.a(SnapEditorView.c(a));
        }

            
            {
                a = snapeditorview;
                super();
            }
    }

}
