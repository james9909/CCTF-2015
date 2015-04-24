// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.media;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.media.tasks.FindPlaylistTask;
import com.brightcove.player.media.tasks.FindVideoTask;
import com.brightcove.player.util.ErrorUtil;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.brightcove.player.media:
//            MediaService

class <init>
    implements EventListener
{

    final MediaService this$0;

    public void processEvent(Event event)
    {
        HashMap hashmap;
        hashmap = new HashMap();
        hashmap.put("token", MediaService.access$100(MediaService.this));
        hashmap.put("media_delivery", "http");
        if (event.properties.containsKey("options"))
        {
            hashmap.putAll((Map)event.properties.get("options"));
        }
        try
        {
            if (event.properties.containsKey("videoID"))
            {
                (new FindVideoTask(MediaService.access$200(MediaService.this), event, MediaService.access$300(MediaService.this), hashmap)).findVideoById((String)event.properties.get("videoID"));
                return;
            }
        }
        catch (URISyntaxException urisyntaxexception)
        {
            MediaService.access$700(MediaService.this, event, urisyntaxexception);
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            MediaService.access$700(MediaService.this, event, unsupportedencodingexception);
            return;
        }
        if (event.properties.containsKey("videoReferenceID"))
        {
            (new FindVideoTask(MediaService.access$400(MediaService.this), event, MediaService.access$300(MediaService.this), hashmap)).findVideoByReferenceId((String)event.properties.get("videoReferenceID"));
            return;
        }
        if (event.properties.containsKey("playlistID"))
        {
            (new FindPlaylistTask(MediaService.access$500(MediaService.this), event, MediaService.access$300(MediaService.this), hashmap)).findPlaylistById((String)event.properties.get("playlistID"));
            return;
        }
        if (event.properties.containsKey("playlistReferenceID"))
        {
            (new FindPlaylistTask(MediaService.access$600(MediaService.this), event, MediaService.access$300(MediaService.this), hashmap)).findPlaylistByReferenceId((String)event.properties.get("playlistReferenceID"));
            return;
        }
        throw new IllegalArgumentException(ErrorUtil.getMessage("keyNotFound"));
    }

    private ()
    {
        this$0 = MediaService.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
