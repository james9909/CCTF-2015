// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;

import android.media.MediaPlayer;

// Referenced classes of package com.snapchat.android.discover.ui.media:
//            VideoViewController, DSnapMediaListener

class a
    implements android.media.ener
{

    final VideoViewController a;

    public boolean onInfo(MediaPlayer mediaplayer, int i, int j)
    {
        DSnapMediaListener dsnapmedialistener = VideoViewController.a(a);
        if (dsnapmedialistener != null && VideoViewController.d(a) && i == 3)
        {
            dsnapmedialistener.b();
        }
        return false;
    }

    (VideoViewController videoviewcontroller)
    {
        a = videoviewcontroller;
        super();
    }
}
