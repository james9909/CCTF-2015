// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;

import android.media.MediaPlayer;

// Referenced classes of package com.snapchat.android.discover.ui.media:
//            RemoteVideoViewController, DSnapMediaListener

class a
    implements android.media.er
{

    final RemoteVideoViewController a;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        DSnapMediaListener dsnapmedialistener = RemoteVideoViewController.a(a);
        if (dsnapmedialistener != null)
        {
            dsnapmedialistener.b();
        }
    }

    (RemoteVideoViewController remotevideoviewcontroller)
    {
        a = remotevideoviewcontroller;
        super();
    }
}
