// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.media;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.Playlist;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.brightcove.player.media:
//            PlaylistListener, Catalog

class playlistListener
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

    public (PlaylistListener playlistlistener)
    {
        this$0 = Catalog.this;
        super();
        playlistListener = playlistlistener;
    }
}
