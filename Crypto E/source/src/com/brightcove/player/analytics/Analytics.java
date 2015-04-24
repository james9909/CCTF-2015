// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.analytics;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.media.HttpService;
import com.brightcove.player.model.Video;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class Analytics extends AbstractComponent
{
    public static class Fields
    {

        protected static final String ACCOUNT = "account";
        public static final String BASE_PARAMS = "baseParams";
        protected static final String DESTINATION = "destination";
        protected static final String DEVICE_OS = "device_os";
        protected static final String DEVICE_OS_VERSION = "device_os_version";
        protected static final String DEVICE_TYPE = "device_type";
        protected static final String DOMAIN = "domain";
        protected static final String EVENT = "event";
        protected static final String EVENT_VIDEO_COMPLETE = "video_complete";
        protected static final String EVENT_VIDEO_ENGAGEMENT = "video_engagement";
        protected static final String EVENT_VIDEO_IMPRESSION = "video_impression";
        protected static final String EVENT_VIDEO_VIEW = "video_view";
        protected static final String PLATFORM = "platform";
        protected static final String PLATFORM_VERSION = "platform_version";
        protected static final String PUBLISHER_ID = "account";
        protected static final String RANGE = "range";
        protected static final String SOURCE = "source";
        protected static final String TIME = "time";
        protected static final String USER = "user";
        protected static final String VIDEO_DURATION = "video_duration";
        protected static final String VIDEO_ID = "video";
        protected static final String VIDEO_NAME = "video_name";
        protected static final String VIDEO_SECONDS_VIEWED = "video_seconds_viewed";

        public Fields()
        {
        }
    }

    class HttpAsyncTask extends AsyncTask
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
            java.util.Map.Entry entry;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); hashmap.put(entry.getKey(), entry.getValue()))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

            try
            {
                java.net.URI uri = HttpService.buildURIWithQueryParameters("https://metrics.brightcove.com/tracker", hashmap);
                httpService.doGetRequest(uri);
            }
            catch (MalformedURLException malformedurlexception)
            {
                access$1100.emit("error", Collections.singletonMap("error", malformedurlexception));
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                access$1100.emit("error", Collections.singletonMap("error", unsupportedencodingexception));
            }
            catch (URISyntaxException urisyntaxexception)
            {
                access$1100.emit("error", Collections.singletonMap("error", urisyntaxexception));
            }
            catch (IOException ioexception)
            {
                access$1100.emit("error", Collections.singletonMap("error", ioexception));
            }
            return null;
        }

        public HttpAsyncTask()
        {
            this$0 = Analytics.this;
            super();
            httpService = new HttpService(60, 60);
        }
    }


    private static final String BASE_URL = "https://metrics.brightcove.com/tracker";
    private static final String DEVICE_OS = "android";
    private static final String DOMAIN = "videocloud";
    private static final int ENGAGEMENT_PERIOD = 10000;
    public static final String TAG = com/brightcove/player/analytics/Analytics.getSimpleName();
    private String account;
    private final Map baseParams;
    private Context context;
    public String destination;
    private String deviceType;
    private int duration;
    private int endTime;
    private boolean hasStarted;
    private String platform;
    private String platformVersion;
    private String source;
    private int startTime;
    private boolean uniqueIdentifierEnabled;

    public Analytics(EventEmitter eventemitter, Context context1)
    {
        this(eventemitter, context1, com/brightcove/player/analytics/Analytics);
    }

    protected Analytics(EventEmitter eventemitter, Context context1, Class class1)
    {
        super(eventemitter, class1);
        baseParams = new HashMap();
        platform = "android-native-sdk";
        context = context1;
        endTime = 0;
        startTime = 0;
        hasStarted = false;
        setDestination(context1);
        initializeEvents(eventemitter);
        deviceType = getDeviceType(context1);
    }

    private void emitDidSetEvent()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("baseParams", baseParams);
        eventEmitter.emit("didSetAnalyticsBaseParams", hashmap);
    }

    private String getDeviceType(Context context1)
    {
        if (context1 == null)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        if (((TelephonyManager)context1.getSystemService("phone")).getPhoneType() != 0)
        {
            return "mobile";
        }
        break MISSING_BLOCK_LABEL_30;
        UnsupportedOperationException unsupportedoperationexception;
        unsupportedoperationexception;
        return "tablet";
        IllegalStateException illegalstateexception;
        illegalstateexception;
        return "tablet";
        return "tablet";
    }

    private void initializeEvents(EventEmitter eventemitter)
    {
        eventemitter.on("addAnalyticsBaseParams", new EventListener() {

            final Analytics this$0;

            public void processEvent(Event event)
            {
                Map map = (Map)event.properties.get("baseParams");
                if (map != null)
                {
                    baseParams.putAll(map);
                }
                emitDidSetEvent();
            }

            
            {
                this$0 = Analytics.this;
                super();
            }
        });
        eventemitter.on("setAnalyticsBaseParams", new EventListener() {

            final Analytics this$0;

            public void processEvent(Event event)
            {
                Map map = (Map)event.properties.get("baseParams");
                if (map != null)
                {
                    baseParams.clear();
                    baseParams.putAll(map);
                }
                emitDidSetEvent();
            }

            
            {
                this$0 = Analytics.this;
                super();
            }
        });
        eventemitter.on("willChangeVideo", new EventListener() {

            final Analytics this$0;

            public void processEvent(Event event)
            {
                if (event.properties.containsKey("currentVideo") && endTime - startTime > 0)
                {
                    sendVideoEngagementRequest(event, startTime, endTime);
                }
                sendVideoAnalyticsRequest(event, "video_impression", null);
                duration = startTime = endTime = 0;
                hasStarted = false;
            }

            
            {
                this$0 = Analytics.this;
                super();
            }
        });
        eventemitter.on("didSeekTo", new EventListener() {

            final Analytics this$0;

            public void processEvent(Event event)
            {
                int i = event.getIntegerProperty("seekPosition");
                if (i <= 0 || i - endTime <= 1000)
                {
                    return;
                } else
                {
                    sendVideoEngagementRequest(event, startTime, endTime);
                    startTime = endTime = i;
                    return;
                }
            }

            
            {
                this$0 = Analytics.this;
                super();
            }
        });
        eventemitter.on("progress", new EventListener() {

            final Analytics this$0;

            public void processEvent(Event event)
            {
                Video video = (Video)event.properties.get("video");
                int i = event.getIntegerProperty("playheadPosition");
                if (i >= 0)
                {
                    if (Math.abs(endTime - i) > 5000)
                    {
                        sendVideoEngagementRequest(event, startTime, endTime);
                        startTime = endTime = i;
                    } else
                    {
                        endTime = i;
                        if (!hasStarted && video != null && endTime != 0)
                        {
                            sendVideoAnalyticsRequest(event, "video_view", null);
                            hasStarted = true;
                        }
                        if (endTime - startTime >= 10000)
                        {
                            sendVideoEngagementRequest(event, startTime, endTime);
                            startTime = endTime;
                            return;
                        }
                    }
                }
            }

            
            {
                this$0 = Analytics.this;
                super();
            }
        });
        eventemitter.on("completed", new EventListener() {

            final Analytics this$0;

            public void processEvent(Event event)
            {
                int i = event.getIntegerProperty("playheadPosition");
                if (i >= 0)
                {
                    endTime = i;
                    sendVideoEngagementRequest(event, startTime, endTime);
                    startTime = endTime;
                    sendVideoAnalyticsRequest(event, "video_complete", null);
                }
            }

            
            {
                this$0 = Analytics.this;
                super();
            }
        });
        eventemitter.on("videoDurationChanged", new EventListener() {

            final Analytics this$0;

            public void processEvent(Event event)
            {
                int i = ((Integer)event.properties.get("duration")).intValue();
                if (i > 0)
                {
                    duration = i;
                }
            }

            
            {
                this$0 = Analytics.this;
                super();
            }
        });
        eventemitter.on("version", new EventListener() {

            final Analytics this$0;

            public void processEvent(Event event)
            {
                platformVersion = (String)event.properties.get("buildVersion");
            }

            
            {
                this$0 = Analytics.this;
                super();
            }
        });
    }

    private void sendVideoAnalyticsRequest(Event event, String s, Map map)
    {
        if (map == null)
        {
            map = new HashMap();
        }
        Video video = (Video)event.properties.get("video");
        if (video == null)
        {
            video = (Video)event.properties.get("currentVideo");
        }
        if (video == null)
        {
            video = (Video)event.properties.get("nextVideo");
        }
        if (video != null)
        {
            String s1 = video.getId();
            if (!s1.isEmpty())
            {
                map.put("video", s1);
            }
            String s2 = video.getStringProperty("pubId");
            if (s2 != null && !s2.isEmpty())
            {
                map.put("account", s2);
            } else
            if (account != null)
            {
                map.put("account", account);
            } else
            {
                Log.w(TAG, "Missing account ID.");
                return;
            }
        }
        sendAnalyticsRequest(event, s, map);
    }

    private void sendVideoEngagementRequest(Event event, int i, int j)
    {
        int k = i / 1000;
        int l = -1 + j / 1000;
        if (l < k)
        {
            return;
        }
        HashMap hashmap = new HashMap();
        if (duration > 0)
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = Integer.valueOf(k);
            aobj1[1] = Integer.valueOf(l);
            hashmap.put("range", String.format("%d..%d", aobj1));
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(l - k);
            hashmap.put("video_seconds_viewed", String.format("%d", aobj));
        }
        sendVideoAnalyticsRequest(event, "video_engagement", hashmap);
    }

    private void setDestination(Context context1)
    {
        PackageManager packagemanager;
        if (context1 == null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        Context context2 = context1.getApplicationContext();
        if (context2 == null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        packagemanager = context2.getPackageManager();
        if (packagemanager == null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        String s = (String)packagemanager.getApplicationLabel(packagemanager.getApplicationInfo(context1.getPackageName(), 0));
        setDestination((new StringBuilder()).append("bcsdk://").append(s).append("/").append(context1.getClass().getPackage().getName()).toString());
        return;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        Log.w(TAG, "No application name found.");
        return;
    }

    public String getAccount()
    {
        return account;
    }

    public boolean getUniqueIdentifierEnabled()
    {
        return uniqueIdentifierEnabled;
    }

    protected Map sendAnalyticsRequest(Event event, String s, Map map)
    {
        HashMap hashmap = new HashMap();
        hashmap.putAll(baseParams);
        if (map != null)
        {
            hashmap.putAll(map);
        }
        Video video = (Video)event.properties.get("video");
        if (video != null && video.getId() != null)
        {
            String s1 = video.getStringProperty("name");
            if (s1 != null && s1.isEmpty())
            {
                hashmap.put("video_name", s1);
            }
        }
        if (duration > 0)
        {
            hashmap.put("video_duration", (new StringBuilder()).append("").append(duration / 1000).toString());
        }
        hashmap.put("event", s);
        hashmap.put("domain", "videocloud");
        hashmap.put("device_os", "android");
        hashmap.put("device_type", deviceType);
        hashmap.put("device_os_version", android.os.Build.VERSION.RELEASE);
        hashmap.put("time", (new StringBuilder()).append("").append((new Date()).getTime()).toString());
        hashmap.put("platform", platform);
        hashmap.put("platform_version", platformVersion);
        if (destination != null)
        {
            hashmap.put("destination", destination);
        }
        if (source != null)
        {
            hashmap.put("source", source);
        }
        if (uniqueIdentifierEnabled)
        {
            hashmap.put("user", android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id"));
        }
        HttpAsyncTask httpasynctask = new HttpAsyncTask();
        HashMap ahashmap[] = {
            hashmap
        };
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            httpasynctask.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, ahashmap);
            return hashmap;
        } else
        {
            httpasynctask.execute(ahashmap);
            return hashmap;
        }
    }

    public void setAccount(String s)
    {
        account = s;
        HashMap hashmap = new HashMap();
        hashmap.put("value", s);
        eventEmitter.emit("account", hashmap);
    }

    public void setDestination(String s)
    {
        destination = s;
        Uri uri = Uri.parse(s);
        if (uri.getScheme() == null)
        {
            Log.e(TAG, (new StringBuilder()).append("Invalid destination (a scheme is required): ").append(s).toString());
        }
        if (uri.getAuthority() == null)
        {
            Log.e(TAG, (new StringBuilder()).append("Invalid destination (an authority is required): ").append(s).toString());
        }
    }

    public void setSource(String s)
    {
        source = s;
        Uri uri = Uri.parse(s);
        if (uri.getScheme() == null)
        {
            Log.e(TAG, (new StringBuilder()).append("Invalid source (a scheme is required): ").append(s).toString());
        }
        if (uri.getAuthority() == null)
        {
            Log.e(TAG, (new StringBuilder()).append("Invalid source (an authority is required): ").append(s).toString());
        }
    }

    public void setUniqueIdentifierEnabled(boolean flag)
    {
        uniqueIdentifierEnabled = flag;
    }









/*
    static int access$202(Analytics analytics, int i)
    {
        analytics.endTime = i;
        return i;
    }

*/



/*
    static int access$302(Analytics analytics, int i)
    {
        analytics.startTime = i;
        return i;
    }

*/




/*
    static int access$602(Analytics analytics, int i)
    {
        analytics.duration = i;
        return i;
    }

*/



/*
    static boolean access$702(Analytics analytics, boolean flag)
    {
        analytics.hasStarted = flag;
        return flag;
    }

*/


/*
    static String access$802(Analytics analytics, String s)
    {
        analytics.platformVersion = s;
        return s;
    }

*/

}
