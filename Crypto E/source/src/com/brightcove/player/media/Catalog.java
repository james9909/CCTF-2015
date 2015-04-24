// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.media;

import com.brightcove.player.event.Component;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventEmitterImpl;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Playlist;
import com.brightcove.player.model.Video;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.brightcove.player.media:
//            MediaService, PlaylistListener, VideoListener

public class Catalog
    implements Component
{
    class OnFindPlaylistListener
        implements EventListener
    {

        private PlaylistListener playlistListener;
        final Catalog this$0;

        public void processEvent(Event event)
        {
            List list = (List)event.properties.get("errors");
            if (list != null && !list.isEmpty())
            {
                String s;
                for (Iterator iterator = list.iterator(); iterator.hasNext(); playlistListener.onError(s))
                {
                    s = (String)iterator.next();
                }

            } else
            {
                Playlist playlist = (Playlist)event.properties.get("playlist");
                playlistListener.onPlaylist(playlist);
            }
        }

        public OnFindPlaylistListener(PlaylistListener playlistlistener)
        {
            this$0 = Catalog.this;
            super();
            playlistListener = playlistlistener;
        }
    }

    class OnFindVideoListener
        implements EventListener
    {

        final Catalog this$0;
        private VideoListener videoListener;

        public void processEvent(Event event)
        {
            List list = (List)event.properties.get("errors");
            if (list != null && !list.isEmpty())
            {
                String s;
                for (Iterator iterator = list.iterator(); iterator.hasNext(); videoListener.onError(s))
                {
                    s = (String)iterator.next();
                }

            } else
            {
                Video video = (Video)event.properties.get("video");
                videoListener.onVideo(video);
            }
        }

        public OnFindVideoListener(VideoListener videolistener)
        {
            this$0 = Catalog.this;
            super();
            videoListener = videolistener;
        }
    }


    public static final String PLAYLIST_ID = "playlistID";
    public static final String PLAYLIST_REFERENCE_ID = "playlistReferenceID";
    public static final String VIDEO_ID = "videoID";
    public static final String VIDEO_REFERENCE_ID = "videoReferenceID";
    private EventEmitter eventEmitter;
    private MediaService mediaService;

    public Catalog(String s)
    {
        eventEmitter = new EventEmitterImpl();
        mediaService = new MediaService(eventEmitter, s);
    }

    public Catalog(String s, String s1)
    {
        eventEmitter = new EventEmitterImpl();
        mediaService = new MediaService(eventEmitter, s, s1);
    }

    public void findPlaylistByID(String s, PlaylistListener playlistlistener)
    {
        findPlaylistByID(s, null, playlistlistener);
    }

    public void findPlaylistByID(String s, Map map, PlaylistListener playlistlistener)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("playlistID", s);
        if (map != null)
        {
            hashmap.put("options", map);
        }
        eventEmitter.request("findPlaylist", hashmap, new OnFindPlaylistListener(playlistlistener));
    }

    public void findPlaylistByReferenceID(String s, PlaylistListener playlistlistener)
    {
        findPlaylistByReferenceID(s, null, playlistlistener);
    }

    public void findPlaylistByReferenceID(String s, Map map, PlaylistListener playlistlistener)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("playlistReferenceID", s);
        if (map != null)
        {
            hashmap.put("options", map);
        }
        eventEmitter.request("findPlaylist", hashmap, new OnFindPlaylistListener(playlistlistener));
    }

    public void findVideoByID(String s, VideoListener videolistener)
    {
        findVideoByID(s, null, videolistener);
    }

    public void findVideoByID(String s, Map map, VideoListener videolistener)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("videoID", s);
        if (map != null)
        {
            hashmap.put("options", map);
        }
        eventEmitter.request("findVideo", hashmap, new OnFindVideoListener(videolistener));
    }

    public void findVideoByReferenceID(String s, VideoListener videolistener)
    {
        findVideoByReferenceID(s, null, videolistener);
    }

    public void findVideoByReferenceID(String s, Map map, VideoListener videolistener)
    {
        HashMap hashmap = new HashMap();
        hashmap.put("videoReferenceID", s);
        if (map != null)
        {
            hashmap.put("options", map);
        }
        eventEmitter.request("findVideo", hashmap, new OnFindVideoListener(videolistener));
    }

    public EventEmitter getEventEmitter()
    {
        return eventEmitter;
    }

    public void setEventEmitter(EventEmitter eventemitter)
    {
        eventEmitter = eventemitter;
    }
}
