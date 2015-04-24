// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.edge;

import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.util.ErrorUtil;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.brightcove.player.edge:
//            EdgeTask, VideoListener

public class GetVideoTask extends EdgeTask
{

    private static final String TAG = com/brightcove/player/edge/GetVideoTask.getSimpleName();
    private VideoListener videoListener;

    public GetVideoTask(EventEmitter eventemitter, String s, Map map, String s1, String s2)
    {
        super(eventemitter, s, map, s1, s2);
    }

    public void getById(String s, VideoListener videolistener)
    {
        videoListener = videolistener;
        try
        {
            URI auri[] = new URI[1];
            auri[0] = new URI((new StringBuilder()).append(baseURL).append("accounts/").append(account).append("/videos/").append(s).toString());
            execute(auri);
            return;
        }
        catch (URISyntaxException urisyntaxexception)
        {
            urisyntaxexception.printStackTrace();
        }
    }

    public void getByReferenceId(String s, VideoListener videolistener)
    {
        videoListener = videolistener;
        try
        {
            URI auri[] = new URI[1];
            auri[0] = new URI((new StringBuilder()).append(baseURL).append("accounts/").append(account).append("/videos/ref:").append(s).toString());
            execute(auri);
            return;
        }
        catch (URISyntaxException urisyntaxexception)
        {
            urisyntaxexception.printStackTrace();
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((JSONObject)obj);
    }

    protected void onPostExecute(JSONObject jsonobject)
    {
        if (jsonobject != null)
        {
            try
            {
                com.brightcove.player.model.Video video = buildVideoFromJSON(jsonobject);
                videoListener.onVideo(video);
            }
            catch (JSONException jsonexception)
            {
                List list1 = errors;
                String s2 = ErrorUtil.getMessage("mediaRequestInvalidJSON");
                Object aobj1[] = new Object[1];
                aobj1[0] = uri;
                list1.add(String.format(s2, aobj1));
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                List list = errors;
                String s1 = ErrorUtil.getMessage("mediaRequestNoJSON");
                Object aobj[] = new Object[1];
                aobj[0] = uri;
                list.add(String.format(s1, aobj));
            }
        } else
        {
            errors.add((new StringBuilder()).append("No data was found that matched your request: ").append(uri).toString());
        }
        if (!errors.isEmpty())
        {
            String s;
            for (Iterator iterator = errors.iterator(); iterator.hasNext(); videoListener.onError(s))
            {
                s = (String)iterator.next();
            }

        }
    }

}
