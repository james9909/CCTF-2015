// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.media.tasks;

import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.MediaService;
import com.brightcove.player.util.ErrorUtil;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.brightcove.player.media.tasks:
//            FindMediaTask

public class FindPlaylistTask extends FindMediaTask
{

    public FindPlaylistTask(EventEmitter eventemitter, Event event, String s, Map map)
    {
        super(eventemitter, event, s, map);
    }

    public void findPlaylistById(String s)
    {
        executeWithCommand("find_playlist_by_id", "playlist_id", s);
    }

    public void findPlaylistByReferenceId(String s)
    {
        executeWithCommand("find_playlist_by_reference_id", "reference_id", s);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((JSONObject)obj);
    }

    protected void onPostExecute(JSONObject jsonobject)
    {
        ArrayList arraylist = new ArrayList();
        if (jsonobject == null)
        {
            String s3 = ErrorUtil.getMessage("mediaRequestNoResults");
            Object aobj3[] = new Object[1];
            aobj3[0] = uri;
            arraylist.add(String.format(s3, aobj3));
        } else
        if (!jsonobject.isNull("error"))
        {
            try
            {
                arraylist.add(jsonobject.getString("error"));
            }
            catch (JSONException jsonexception1)
            {
                String s2 = ErrorUtil.getMessage("mediaRequestInvalidJSON");
                Object aobj2[] = new Object[1];
                aobj2[0] = uri;
                arraylist.add(String.format(s2, aobj2));
            }
        } else
        {
            try
            {
                com.brightcove.player.model.Playlist playlist = MediaService.buildPlaylistFromJSON(jsonobject, eventEmitter, arraylist);
                event.properties.put("playlist", playlist);
            }
            catch (JSONException jsonexception)
            {
                String s1 = ErrorUtil.getMessage("mediaRequestInvalidJSON");
                Object aobj1[] = new Object[1];
                aobj1[0] = uri;
                arraylist.add(String.format(s1, aobj1));
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                String s = ErrorUtil.getMessage("mediaRequestNoJSON");
                Object aobj[] = new Object[1];
                aobj[0] = uri;
                arraylist.add(String.format(s, aobj));
            }
        }
        if (!arraylist.isEmpty())
        {
            event.properties.put("errors", arraylist);
        }
        eventEmitter.respond(event);
    }
}
