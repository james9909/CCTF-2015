// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.media.tasks;

import android.os.AsyncTask;
import android.util.Log;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.HttpService;
import com.brightcove.player.media.VideoFields;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import java.io.IOException;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class FindMediaTask extends AsyncTask
{

    private static final String TAG = com/brightcove/player/media/tasks/FindMediaTask.getSimpleName();
    protected Event event;
    protected EventEmitter eventEmitter;
    protected HttpService httpService;
    protected Map options;
    protected String queryBaseURL;
    protected URI uri;

    protected FindMediaTask(EventEmitter eventemitter, Event event1, String s, Map map)
    {
        if (eventemitter == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("eventEmitterRequired"));
        }
        if (event1 == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("eventRequired"));
        }
        if (s == null || s.trim().equals(""))
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("baseURLRequired"));
        }
        String s1 = (String)map.get("token");
        if (s1 == null || s1.trim().isEmpty())
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("tokenRequired"));
        }
        String s2 = (String)map.get("media_delivery");
        if (s2 == null || s2.trim().isEmpty())
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("mediaDeliveryRequired"));
        } else
        {
            eventEmitter = eventemitter;
            event = event1;
            queryBaseURL = s;
            options = map;
            httpService = new HttpService();
            return;
        }
    }

    public URI buildURI(String s, String s1, String s2)
    {
        HashMap hashmap;
        String s3;
        hashmap = new HashMap(options);
        hashmap.put("command", s);
        hashmap.put(s1, s2);
        s3 = (String)options.get("video_fields");
        if (s3 != null) goto _L2; else goto _L1
_L1:
        hashmap.put("video_fields", StringUtil.join(VideoFields.DEFAULT_FIELDS, ","));
_L4:
        return HttpService.buildURIWithQueryParameters(queryBaseURL, hashmap);
_L2:
        if (!s3.contains("accountId"))
        {
            String s4;
            if (s3.length() == 0)
            {
                s4 = "accountId";
            } else
            {
                s4 = (new StringBuilder()).append(s3).append(",").append("accountId").toString();
            }
            hashmap.put("video_fields", s4);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((URI[])aobj);
    }

    protected transient JSONObject doInBackground(URI auri[])
    {
        if (auri == null || auri.length != 1)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
        }
        uri = auri[0];
        JSONObject jsonobject;
        try
        {
            jsonobject = httpService.doJSONGetRequest(uri);
        }
        catch (IOException ioexception)
        {
            Log.e(TAG, (new StringBuilder()).append("IOException: ").append(ioexception).toString());
            String s = ErrorUtil.getMessage("uriError");
            Object aobj[] = new Object[1];
            aobj[0] = uri.toString();
            emitError(String.format(s, aobj), ioexception);
            return null;
        }
        catch (JSONException jsonexception)
        {
            Log.e(TAG, (new StringBuilder()).append("JSONException").append(jsonexception).toString());
            emitError("Not a valid JSON Response", jsonexception);
            return null;
        }
        return jsonobject;
    }

    protected void emitError(String s, Exception exception)
    {
        Log.e(TAG, s, exception);
        HashMap hashmap = new HashMap();
        hashmap.put("message", (new StringBuilder()).append(s).append(": ").append(exception.getMessage()).toString());
        eventEmitter.emit("error", hashmap);
    }

    public void executeWithCommand(String s, String s1, String s2)
    {
        if (s == null || s.trim().isEmpty())
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("mediaAPICommandRequired"));
        }
        if (s1 == null || s1.trim().isEmpty())
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("idFieldRequired"));
        }
        if (s2 == null || s2.trim().isEmpty())
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("idRequired"));
        } else
        {
            URI auri[] = new URI[1];
            auri[0] = buildURI(s, s1, s2);
            execute(auri);
            return;
        }
    }

    public void executeWithURI(URI uri1)
    {
        if (uri1 == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
        } else
        {
            execute(new URI[] {
                uri1
            });
            return;
        }
    }

}
