// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.media;

import android.util.Log;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.media.tasks.FindPlaylistTask;
import com.brightcove.player.media.tasks.FindVideoTask;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.Playlist;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.SourceCollection;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.brightcove.player.media:
//            CuePointFields, DeliveryType, PlaylistFields, SourceFields, 
//            VideoFields

public class MediaService extends AbstractComponent
{
    class OnFindMediaListener
        implements EventListener
    {

        final MediaService this$0;

        public void processEvent(Event event)
        {
            HashMap hashmap;
            hashmap = new HashMap();
            hashmap.put("token", readToken);
            hashmap.put("media_delivery", "http");
            if (event.properties.containsKey("options"))
            {
                hashmap.putAll((Map)event.properties.get("options"));
            }
            try
            {
                if (event.properties.containsKey("videoID"))
                {
                    (new FindVideoTask(
// JavaClassFileOutputException: get_constant: invalid tag

        private OnFindMediaListener()
        {
            this$0 = MediaService.this;
            super();
        }

    }


    public static final String COMMAND = "command";
    public static final String DEFAULT_MEDIA_DELIVERY = "http";
    public static final String DEFAULT_QUERY_BASE_URL = "https://api.brightcove.com/services/library";
    public static final String FIND_PLAYLIST_BY_ID = "find_playlist_by_id";
    public static final String FIND_PLAYLIST_BY_REFERENCE_ID = "find_playlist_by_reference_id";
    public static final String FIND_VIDEO_BY_ID = "find_video_by_id";
    public static final String FIND_VIDEO_BY_REFERENCE_ID = "find_video_by_reference_id";
    private static final String FLVURL = "FLVURL";
    public static final String HLS_MEDIA_DELIVERY = "http_ios";
    public static final String ID = "id";
    public static final String KK_QUERY_BASE_URL = "https://api.brightcove.co.jp/services/library";
    public static final String MEDIA_DELIVERY = "media_delivery";
    public static final String OPTIONS = "options";
    public static final String PLAYLIST_ID = "playlist_id";
    public static final String REFERENCE_ID = "reference_id";
    public static final String TAG = com/brightcove/player/media/MediaService.getSimpleName();
    public static final String TOKEN = "token";
    public static final String VIDEO_FIELDS = "video_fields";
    public static final String VIDEO_ID = "video_id";
    private OnFindMediaListener findMediaListener;
    private String queryBaseURL;
    private String readToken;

    public MediaService(EventEmitter eventemitter, String s)
    {
        MediaService(eventemitter, s, null);
    }

    public MediaService(EventEmitter eventemitter, String s, String s1)
    {
        AbstractComponent(eventemitter, com/brightcove/player/media/MediaService);
        if (s == null || s.trim().isEmpty())
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("readTokenRequired"));
        }
        if (s1 == null)
        {
            s1 = "https://api.brightcove.com/services/library";
        }
        readToken = s;
        queryBaseURL = s1;
        initializeListeners();
    }

    public static CuePoint buildCuePointFromJSON(JSONObject jsonobject, EventEmitter eventemitter, List list)
    {
        String s = null;
        int i = 0;
        if (jsonobject.isNull("time"))
        {
            list.add(String.format(ErrorUtil.getMessage("missingCuePointProperty"), new Object[] {
                "time"
            }));
            return null;
        }
        if (jsonobject.isNull("typeEnum"))
        {
            list.add(String.format(ErrorUtil.getMessage("missingCuePointProperty"), new Object[] {
                "typeEnum"
            }));
            return null;
        }
        Iterator iterator = jsonobject.keys();
        HashMap hashmap = new HashMap();
        while (iterator.hasNext()) 
        {
            String s1 = (String)iterator.next();
            String s2;
            int j;
            if (s1.equals("time"))
            {
                int k = jsonobject.getInt("time");
                String s3 = s;
                j = k;
                s2 = s3;
            } else
            if (s1.equals("typeEnum"))
            {
                s2 = jsonobject.getString("typeEnum");
                j = i;
            } else
            {
                hashmap.put(s1, buildSerializable(jsonobject.get(s1)));
                s2 = s;
                j = i;
            }
            i = j;
            s = s2;
        }
        parseJSONProperties(jsonobject, hashmap, Arrays.asList(CuePointFields.DEFAULT_FIELDS));
        return new CuePoint(i, s, hashmap);
    }

    private static SourceCollection buildHLSSourceCollectionFromURL(JSONObject jsonobject, String s)
    {
        String s1 = jsonobject.getString(s);
        int i = s1.indexOf(".m3u8");
        SourceCollection sourcecollection = null;
        if (i > 0)
        {
            sourcecollection = new SourceCollection(new Source(s1, DeliveryType.HLS), DeliveryType.HLS);
        }
        return sourcecollection;
    }

    public static Playlist buildPlaylistFromJSON(JSONObject jsonobject, EventEmitter eventemitter, List list)
    {
        if (jsonobject == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("jsonRequired"));
        }
        HashMap hashmap = new HashMap();
        if (!jsonobject.isNull("id"))
        {
            hashmap.put("id", Long.valueOf(jsonobject.getLong("id")));
        }
        if (!jsonobject.isNull("referenceId"))
        {
            hashmap.put("referenceId", jsonobject.getString("referenceId"));
        }
        if (!jsonobject.isNull("name"))
        {
            hashmap.put("name", jsonobject.getString("name"));
        }
        if (!jsonobject.isNull("shortDescription"))
        {
            hashmap.put("shortDescription", jsonobject.getString("shortDescription"));
        }
        if (!jsonobject.isNull("thumbnailURL"))
        {
            hashmap.put("thumbnailURL", jsonobject.getString("thumbnailURL"));
        }
        ArrayList arraylist = new ArrayList();
        if (!jsonobject.isNull("videos"))
        {
            JSONArray jsonarray = jsonobject.getJSONArray("videos");
            for (int i = 0; i < jsonarray.length(); i++)
            {
                JSONObject jsonobject1 = jsonarray.getJSONObject(i);
                if (jsonobject1 != null)
                {
                    arraylist.add(buildVideoFromJSON(jsonobject1, eventemitter, list));
                }
            }

        }
        parseJSONProperties(jsonobject, hashmap, Arrays.asList(PlaylistFields.DEFAULT_FIELDS));
        return new Playlist(hashmap, arraylist);
    }

    private static Serializable buildSerializable(Object obj)
    {
        if (obj instanceof Serializable)
        {
            return (Serializable)obj;
        }
        if (obj instanceof JSONObject)
        {
            JSONObject jsonobject = (JSONObject)obj;
            HashMap hashmap = new HashMap();
            String s;
            for (Iterator iterator = jsonobject.keys(); iterator.hasNext(); hashmap.put(s, buildSerializable(jsonobject.get(s))))
            {
                s = (String)iterator.next();
            }

            return hashmap;
        } else
        {
            return null;
        }
    }

    private static SourceCollection buildSourceCollectionFromVideoFullLength(JSONObject jsonobject)
    {
        JSONObject jsonobject1 = jsonobject.getJSONObject("videoFullLength");
        HashSet hashset = new HashSet();
        Source source = buildSourceFromJSON(jsonobject1);
        hashset.add(source);
        return new SourceCollection(hashset, source.getDeliveryType());
    }

    public static Source buildSourceFromJSON(JSONObject jsonobject)
    {
        HashMap hashmap;
        hashmap = new HashMap();
        if (!jsonobject.isNull("url"))
        {
            hashmap.put("url", jsonobject.getString("url"));
        }
        if (!jsonobject.isNull("videoDuration"))
        {
            hashmap.put("duration", Long.valueOf(jsonobject.getLong("videoDuration")));
        }
        if (!jsonobject.isNull("encodingRate"))
        {
            hashmap.put("bitRate", Integer.valueOf(jsonobject.getInt("encodingRate")));
        }
        if (jsonobject.isNull("videoContainer")) goto _L2; else goto _L1
_L1:
        String s = jsonobject.getString("videoContainer");
        String s1 = (String)hashmap.get("url");
        if (s1 == null) goto _L4; else goto _L3
_L3:
        String s2 = (new URI(s1)).getScheme();
        if (s2.equals("http")) goto _L6; else goto _L5
_L5:
        boolean flag1 = s2.equals("https");
        if (!flag1) goto _L7; else goto _L6
_L6:
        boolean flag = true;
_L8:
        URISyntaxException urisyntaxexception;
        if (!flag)
        {
            hashmap.put("deliveryType", DeliveryType.UNKNOWN);
        } else
        if (s.equals("MP4"))
        {
            hashmap.put("deliveryType", DeliveryType.MP4);
        } else
        if (s.equals("M2TS"))
        {
            hashmap.put("deliveryType", DeliveryType.HLS);
        } else
        if (s.equals("FLV"))
        {
            hashmap.put("deliveryType", DeliveryType.FLV);
        } else
        if (s.equals("WVM"))
        {
            hashmap.put("deliveryType", DeliveryType.WVM);
        } else
        {
            hashmap.put("deliveryType", DeliveryType.UNKNOWN);
        }
_L2:
        parseJSONProperties(jsonobject, hashmap, Arrays.asList(SourceFields.DEFAULT_FIELDS));
        return new Source(hashmap);
_L7:
        flag = false;
          goto _L8
        urisyntaxexception;
        s1 = null;
_L9:
        Log.e(TAG, (new StringBuilder()).append("Invalid URI syntax found: ").append(s1).toString());
_L4:
        flag = false;
          goto _L8
        URISyntaxException urisyntaxexception1;
        urisyntaxexception1;
          goto _L9
    }

    private static List buildVideoCuePoints(JSONObject jsonobject, EventEmitter eventemitter, List list)
    {
        boolean flag = jsonobject.isNull("cuePoints");
        ArrayList arraylist = null;
        if (!flag)
        {
            ArrayList arraylist1 = new ArrayList();
            JSONArray jsonarray = jsonobject.getJSONArray("cuePoints");
            for (int i = 0; i < jsonarray.length(); i++)
            {
                arraylist1.add(buildCuePointFromJSON(jsonarray.getJSONObject(i), eventemitter, list));
            }

            arraylist = arraylist1;
        }
        return arraylist;
    }

    public static Video buildVideoFromJSON(JSONObject jsonobject, EventEmitter eventemitter, List list)
    {
        if (jsonobject == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("jsonRequired"));
        }
        Map map = buildVideoProperties(jsonobject, list);
        Set set = buildVideoSourceCollections(jsonobject);
        List list1 = buildVideoCuePoints(jsonobject, eventemitter, list);
        parseJSONProperties(jsonobject, map, Arrays.asList(VideoFields.DEFAULT_FIELDS));
        if (list1 != null)
        {
            return new Video(map, set, list1);
        } else
        {
            return new Video(map, set);
        }
    }

    private static Map buildVideoProperties(JSONObject jsonobject, List list)
    {
        HashMap hashmap = new HashMap();
        if (!jsonobject.isNull("accountId"))
        {
            hashmap.put("pubId", jsonobject.getString("accountId"));
        }
        if (!jsonobject.isNull("id"))
        {
            hashmap.put("id", Long.valueOf(jsonobject.getLong("id")));
        }
        if (!jsonobject.isNull("referenceId"))
        {
            hashmap.put("referenceId", jsonobject.getString("referenceId"));
        }
        if (!jsonobject.isNull("name"))
        {
            hashmap.put("name", jsonobject.getString("name"));
        }
        if (!jsonobject.isNull("shortDescription"))
        {
            hashmap.put("shortDescription", jsonobject.getString("shortDescription"));
        }
        if (!jsonobject.isNull("length"))
        {
            hashmap.put("duration", Integer.valueOf(jsonobject.getInt("length")));
        }
        if (!jsonobject.isNull("videoStillURL"))
        {
            String s1 = jsonobject.getString("videoStillURL");
            JSONObject jsonobject1;
            Iterator iterator;
            String s;
            try
            {
                hashmap.put("stillImageUri", new URI(s1));
            }
            catch (URISyntaxException urisyntaxexception)
            {
                list.add(String.format(ErrorUtil.getMessage("invalidURI"), new Object[] {
                    s1
                }));
            }
        }
        if (!jsonobject.isNull("customFields"))
        {
            jsonobject1 = jsonobject.getJSONObject("customFields");
            HashMap hashmap1 = new HashMap();
            if (jsonobject1 != null && jsonobject1.length() > 0)
            {
                iterator = jsonobject1.keys();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    s = (String)iterator.next();
                    if (s != null)
                    {
                        hashmap1.put(s, jsonobject1.getString(s));
                    }
                } while (true);
                if (hashmap1.size() > 0)
                {
                    hashmap.put("customFields", hashmap1);
                }
            }
        }
        return hashmap;
    }

    private static Set buildVideoSourceCollections(JSONObject jsonobject)
    {
        HashSet hashset = new HashSet();
        HashSet hashset1 = new HashSet();
        if (!jsonobject.isNull("HLSURL"))
        {
            SourceCollection sourcecollection2 = buildHLSSourceCollectionFromURL(jsonobject, "HLSURL");
            if (sourcecollection2 != null)
            {
                hashset.add(sourcecollection2);
                hashset1.add(DeliveryType.HLS);
            }
        }
        Set set = getRenditionSources(jsonobject);
        if (!set.isEmpty())
        {
            HashMap hashmap = new HashMap();
            Iterator iterator = set.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Source source = (Source)iterator.next();
                DeliveryType deliverytype2 = source.getDeliveryType();
                if (!hashset1.contains(deliverytype2))
                {
                    if (hashmap.get(deliverytype2) == null)
                    {
                        hashmap.put(deliverytype2, new HashSet());
                    }
                    ((Set)hashmap.get(deliverytype2)).add(source);
                }
            } while (true);
            DeliveryType deliverytype1;
            for (Iterator iterator1 = hashmap.keySet().iterator(); iterator1.hasNext(); hashset1.add(deliverytype1))
            {
                deliverytype1 = (DeliveryType)iterator1.next();
                hashset.add(new SourceCollection((Set)hashmap.get(deliverytype1), deliverytype1));
            }

        }
        if (!jsonobject.isNull("videoFullLength"))
        {
            SourceCollection sourcecollection1 = buildSourceCollectionFromVideoFullLength(jsonobject);
            DeliveryType deliverytype = sourcecollection1.getDeliveryType();
            if (!hashset1.contains(deliverytype))
            {
                hashset.add(sourcecollection1);
                hashset1.add(deliverytype);
            }
        }
        if (!hashset1.contains(DeliveryType.HLS) && !jsonobject.isNull("FLVURL"))
        {
            SourceCollection sourcecollection = buildHLSSourceCollectionFromURL(jsonobject, "FLVURL");
            if (sourcecollection != null)
            {
                hashset.add(sourcecollection);
            }
        }
        return hashset;
    }

    private static Set getRenditionSources(JSONObject jsonobject)
    {
        HashSet hashset = new HashSet();
        hashset.addAll(getRenditionSources(jsonobject, "renditions"));
        hashset.addAll(getRenditionSources(jsonobject, "WVMRenditions"));
        hashset.addAll(getRenditionSources(jsonobject, "IOSRenditions"));
        return hashset;
    }

    private static Set getRenditionSources(JSONObject jsonobject, String s)
    {
        HashSet hashset = new HashSet();
        JSONArray jsonarray = jsonobject.optJSONArray(s);
        if (jsonarray != null)
        {
            for (int i = 0; i < jsonarray.length(); i++)
            {
                hashset.add(buildSourceFromJSON(jsonarray.getJSONObject(i)));
            }

        }
        return hashset;
    }

    private static void parseJSONProperties(JSONObject jsonobject, Map map, List list)
    {
        if (jsonobject == null || map == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("jsonAndPropertiesRequired"));
        }
        if (list == null)
        {
            list = new ArrayList();
        }
        Iterator iterator = jsonobject.keys();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            if (!StringUtil.isEmpty(s) && !jsonobject.isNull(s) && !list.contains(s))
            {
                try
                {
                    map.put(s, jsonobject.getJSONObject(s).toString());
                }
                catch (JSONException jsonexception)
                {
                    try
                    {
                        map.put(s, jsonobject.getJSONArray(s).toString());
                    }
                    catch (JSONException jsonexception1)
                    {
                        map.put(s, jsonobject.getString(s));
                    }
                }
            }
        } while (true);
    }

    private void respondWithError(Event event, Exception exception)
    {
        ArrayList arraylist = new ArrayList();
        Log.e(TAG, "Got unexpected exception attempting to issue Media API request.", exception);
        String s = ErrorUtil.getMessage("mediaRequestError");
        Object aobj[] = new Object[1];
        aobj[0] = exception.getMessage();
        arraylist.add(String.format(s, aobj));
        event.properties.put("errors", arraylist);
        eventEmitter.respond(event);
    }

    protected void initializeListeners()
    {
        findMediaListener = new OnFindMediaListener();
        addListener("findVideo", findMediaListener);
        addListener("findPlaylist", findMediaListener);
    }








}
