// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.ui.media;

import android.media.MediaPlayer;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.SourceCollection;
import com.brightcove.player.model.Video;
import com.brightcove.player.view.BrightcoveTextureVideoView;
import com.snapchat.android.Timber;
import com.snapchat.data.gson.discover.VideoCatalogResponse;
import com.snapchat.data.gson.discover.VideoSequenceItem;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.discover.ui.media:
//            VideoRenditionSelector, RemoteVideoBufferAnalytics, VideoProperties, DSnapMediaListener

public class RemoteVideoViewController
{

    protected android.media.MediaPlayer.OnCompletionListener a = new android.media.MediaPlayer.OnCompletionListener() {

        final RemoteVideoViewController a;

        public void onCompletion(MediaPlayer mediaplayer)
        {
            DSnapMediaListener dsnapmedialistener = RemoteVideoViewController.a(a);
            if (dsnapmedialistener != null)
            {
                dsnapmedialistener.a();
            }
        }

            
            {
                a = RemoteVideoViewController.this;
                super();
            }
    };
    protected android.media.MediaPlayer.OnPreparedListener b = new android.media.MediaPlayer.OnPreparedListener() {

        final RemoteVideoViewController a;

        public void onPrepared(MediaPlayer mediaplayer)
        {
            DSnapMediaListener dsnapmedialistener = RemoteVideoViewController.a(a);
            if (dsnapmedialistener != null)
            {
                dsnapmedialistener.b();
            }
        }

            
            {
                a = RemoteVideoViewController.this;
                super();
            }
    };
    private final VideoRenditionSelector c;
    private final RemoteVideoBufferAnalytics d;
    private final Map e;
    private BrightcoveTextureVideoView f;
    private DSnapMediaListener g;
    private VideoCatalogResponse h;
    private int i;
    private boolean j;

    public RemoteVideoViewController()
    {
        this(new VideoRenditionSelector(), new RemoteVideoBufferAnalytics());
    }

    protected RemoteVideoViewController(VideoRenditionSelector videorenditionselector, RemoteVideoBufferAnalytics remotevideobufferanalytics)
    {
        e = new HashMap(1);
        i = 0;
        j = false;
        c = videorenditionselector;
        d = remotevideobufferanalytics;
    }

    private Video a(Map map, VideoProperties videoproperties)
    {
        DeliveryType deliverytype;
        SourceCollection sourcecollection;
        HashSet hashset;
        if (videoproperties.b() == VideoProperties.Protocol.b)
        {
            deliverytype = DeliveryType.HLS;
        } else
        {
            deliverytype = DeliveryType.MP4;
        }
        sourcecollection = new SourceCollection(new Source(videoproperties.a(), deliverytype), deliverytype);
        hashset = new HashSet();
        hashset.add(sourcecollection);
        return new Video(map, hashset);
    }

    static DSnapMediaListener a(RemoteVideoViewController remotevideoviewcontroller)
    {
        return remotevideoviewcontroller.g;
    }

    private void c()
    {
        if (f != null && h != null)
        {
            f.clear();
            d.c();
            HashMap hashmap = new HashMap();
            hashmap.put("pubId", h.b());
            hashmap.put("id", h.a());
            hashmap.put("name", h.c());
            for (Iterator iterator = h.d().iterator(); iterator.hasNext();)
            {
                VideoSequenceItem videosequenceitem = (VideoSequenceItem)iterator.next();
                VideoProperties videoproperties = c.a(videosequenceitem);
                if (videoproperties != null)
                {
                    Object aobj1[] = new Object[3];
                    aobj1[0] = h.a();
                    aobj1[1] = videosequenceitem.a();
                    aobj1[2] = videoproperties;
                    Timber.c("RemoteVideoViewController", "Selected rendition for id:%s, type:%s: %s", aobj1);
                    d.a(videoproperties);
                    f.add(a(hashmap, videoproperties));
                } else
                {
                    Object aobj[] = new Object[2];
                    aobj[0] = h.a();
                    aobj[1] = videosequenceitem.a();
                    Timber.e("RemoteVideoViewController", "Failed to select rendition for id:%s, type:%s", aobj);
                }
            }

            if (j)
            {
                f.start();
            }
        }
    }

    public int a()
    {
        return f.getDuration();
    }

    public void a(BrightcoveTextureVideoView brightcovetexturevideoview)
    {
        f = brightcovetexturevideoview;
        c();
    }

    public void a(VideoCatalogResponse videocatalogresponse)
    {
        Timber.c("RemoteVideoViewController", "Assigning video properties: %s", new Object[] {
            videocatalogresponse
        });
        h = videocatalogresponse;
        c();
    }

    public void a(boolean flag)
    {
        EventEmitter eventemitter = f.getEventEmitter();
        e.put(Integer.valueOf(eventemitter.on("*", d)), "*");
        if (flag && i != 0)
        {
            f.seekTo(i);
        }
        f.start();
        j = true;
    }

    public long b()
    {
        return d.a();
    }

    public void b(boolean flag)
    {
        int l;
        for (Iterator iterator = e.keySet().iterator(); iterator.hasNext(); f.getEventEmitter().off((String)e.get(Integer.valueOf(l)), l))
        {
            l = ((Integer)iterator.next()).intValue();
        }

        e.clear();
        int k;
        if (flag)
        {
            k = f.getCurrentPosition();
        } else
        {
            k = 0;
        }
        i = k;
        f.stopPlayback();
        j = false;
    }
}
