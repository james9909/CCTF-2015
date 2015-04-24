// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.analytics;

import android.os.AsyncTask;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.HttpService;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.brightcove.player.analytics:
//            Analytics

class httpService extends AsyncTask
{

    HttpService httpService;
    final Analytics this$0;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Map[])aobj);
    }

    protected final transient Void doInBackground(Map amap[])
    {
        Map map = amap[0];
        HashMap hashmap = new HashMap();
        java.util.alytics alytics;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); hashmap.put(alytics.alytics(), alytics.alytics()))
        {
            alytics = (java.util.alytics)iterator.next();
        }

        try
        {
            java.net.URI uri = HttpService.buildURIWithQueryParameters("https://metrics.brightcove.com/tracker", hashmap);
            httpService.doGetRequest(uri);
        }
        catch (MalformedURLException malformedurlexception)
        {
            Analytics.access$900(Analytics.this).emit("error", Collections.singletonMap("error", malformedurlexception));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Analytics.access$1000(Analytics.this).emit("error", Collections.singletonMap("error", unsupportedencodingexception));
        }
        catch (URISyntaxException urisyntaxexception)
        {
            Analytics.access$1100(Analytics.this).emit("error", Collections.singletonMap("error", urisyntaxexception));
        }
        catch (IOException ioexception)
        {
            Analytics.access$1200(Analytics.this).emit("error", Collections.singletonMap("error", ioexception));
        }
        return null;
    }

    public ()
    {
        this$0 = Analytics.this;
        super();
        httpService = new HttpService(60, 60);
    }
}
