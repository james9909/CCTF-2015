// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.edge;

import android.os.AsyncTask;
import android.util.Log;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.media.HttpService;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.SourceCollection;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class EdgeTask extends AsyncTask
{

    private static final String ACCOUNT_ID = "account_id";
    private static final String CONTAINER = "container";
    private static final String CUE_POINTS = "cue_points";
    private static final String CUSTOM_FIELDS = "custom_fields";
    private static final String DESCRIPTION = "description";
    private static final String DURATION = "duration";
    private static final String FLV = "flv";
    private static final String ID = "id";
    private static final String LONG_DESCRIPTION = "longDescription";
    private static final String M2TS = "m2ts";
    private static final String MP4 = "mp4";
    private static final String NAME = "name";
    private static final String POSTER = "poster";
    private static final String REFERENCE_ID = "reference_id";
    private static final String SOURCES = "sources";
    private static final String SRC = "src";
    private static final String TAG = com/brightcove/player/edge/EdgeTask.getSimpleName();
    private static final String THUMBNAIL = "thumbnail";
    private static final String TIME = "time";
    private static final String TYPE = "type";
    private static final String WVM = "wvm";
    protected String account;
    protected String baseURL;
    protected List errors;
    protected EventEmitter eventEmitter;
    protected HttpService httpService;
    private Map options;
    private String policy;
    protected URI uri;

    EdgeTask(EventEmitter eventemitter, String s, Map map, String s1, String s2)
    {
        eventEmitter = eventemitter;
        baseURL = s;
        options = map;
        account = s1;
        policy = s2;
        httpService = new HttpService();
        errors = new ArrayList();
    }

    private CuePoint buildCuePointFromJSON(JSONObject jsonobject, EventEmitter eventemitter)
    {
        String s = null;
        int i = 0;
        if (jsonobject.isNull("time"))
        {
            String s5 = String.format(ErrorUtil.getMessage("missingCuePointProperty"), new Object[] {
                "time"
            });
            errors.add(s5);
            return null;
        }
        if (jsonobject.isNull("type"))
        {
            String s4 = String.format(ErrorUtil.getMessage("missingCuePointProperty"), new Object[] {
                "type"
            });
            errors.add(s4);
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
                int k = (int)(1000D * jsonobject.getDouble("time"));
                String s3 = s;
                j = k;
                s2 = s3;
            } else
            if (s1.equals("type"))
            {
                s2 = jsonobject.getString("type");
                j = i;
            } else
            {
                hashmap.put(s1, jsonobject.get(s1).toString());
                s2 = s;
                j = i;
            }
            i = j;
            s = s2;
        }
        HashSet hashset = new HashSet(2);
        hashset.add("time");
        hashset.add("type");
        parseJSONProperties(jsonobject, hashmap, hashset);
        return new CuePoint(i, s, hashmap);
    }

    private Source buildSourceFromJSON(JSONObject jsonobject)
    {
        HashMap hashmap = new HashMap();
        if (!jsonobject.isNull("src"))
        {
            hashmap.put("url", jsonobject.getString("src"));
        }
        if (!jsonobject.isNull("container"))
        {
            String s = jsonobject.getString("container");
            HashSet hashset;
            if (s.equalsIgnoreCase("mp4"))
            {
                hashmap.put("deliveryType", DeliveryType.MP4);
            } else
            if (s.equalsIgnoreCase("m2ts"))
            {
                hashmap.put("deliveryType", DeliveryType.HLS);
            } else
            if (s.equalsIgnoreCase("flv"))
            {
                hashmap.put("deliveryType", DeliveryType.FLV);
            } else
            if (s.equalsIgnoreCase("wvm"))
            {
                hashmap.put("deliveryType", DeliveryType.WVM);
            } else
            {
                hashmap.put("deliveryType", DeliveryType.UNKNOWN);
            }
        }
        hashset = new HashSet(2);
        hashset.add("src");
        hashset.add("container");
        parseJSONProperties(jsonobject, hashmap, hashset);
        return new Source(hashmap);
    }

    private Set buildSourcesFromJSON(JSONObject jsonobject)
    {
        HashSet hashset = new HashSet();
        JSONArray jsonarray = jsonobject.optJSONArray("sources");
        if (jsonarray != null)
        {
            for (int i = 0; i < jsonarray.length(); i++)
            {
                hashset.add(buildSourceFromJSON(jsonarray.getJSONObject(i)));
            }

        }
        return hashset;
    }

    private List buildVideoCuePoints(JSONObject jsonobject, EventEmitter eventemitter)
    {
        boolean flag = jsonobject.isNull("cue_points");
        ArrayList arraylist = null;
        if (!flag)
        {
            ArrayList arraylist1 = new ArrayList();
            JSONArray jsonarray = jsonobject.getJSONArray("cue_points");
            for (int i = 0; i < jsonarray.length(); i++)
            {
                arraylist1.add(buildCuePointFromJSON(jsonarray.getJSONObject(i), eventemitter));
            }

            arraylist = arraylist1;
        }
        return arraylist;
    }

    private Map buildVideoProperties(JSONObject jsonobject)
    {
        HashMap hashmap = new HashMap();
        if (!jsonobject.isNull("account_id"))
        {
            hashmap.put("pubId", jsonobject.getString("account_id"));
        }
        if (!jsonobject.isNull("id"))
        {
            hashmap.put("id", Long.valueOf(jsonobject.getLong("id")));
        }
        if (!jsonobject.isNull("duration"))
        {
            hashmap.put("duration", Integer.valueOf(jsonobject.getInt("duration")));
        }
        if (!jsonobject.isNull("poster"))
        {
            String s1 = jsonobject.getString("poster");
            JSONObject jsonobject1;
            Iterator iterator;
            String s;
            try
            {
                hashmap.put("stillImageUri", new URI(s1));
            }
            catch (URISyntaxException urisyntaxexception)
            {
                String s2 = String.format(ErrorUtil.getMessage("invalidURI"), new Object[] {
                    s1
                });
                errors.add(s2);
            }
        }
        if (!jsonobject.isNull("custom_fields"))
        {
            jsonobject1 = jsonobject.getJSONObject("custom_fields");
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
        HashSet hashset = new HashSet();
        hashset.add("account_id");
        hashset.add("cue_points");
        hashset.add("custom_fields");
        hashset.add("duration");
        hashset.add("id");
        hashset.add("poster");
        hashset.add("sources");
        parseJSONProperties(jsonobject, hashmap, hashset);
        return hashmap;
    }

    private Set buildVideoSourceCollections(JSONObject jsonobject)
    {
        HashSet hashset = new HashSet();
        Set set = buildSourcesFromJSON(jsonobject);
        HashSet hashset1 = new HashSet();
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
                DeliveryType deliverytype1 = source.getDeliveryType();
                if (!hashset1.contains(deliverytype1))
                {
                    if (hashmap.get(deliverytype1) == null)
                    {
                        hashmap.put(deliverytype1, new HashSet());
                    }
                    ((Set)hashmap.get(deliverytype1)).add(source);
                }
            } while (true);
            DeliveryType deliverytype;
            for (Iterator iterator1 = hashmap.keySet().iterator(); iterator1.hasNext(); hashset1.add(deliverytype))
            {
                deliverytype = (DeliveryType)iterator1.next();
                hashset.add(new SourceCollection((Set)hashmap.get(deliverytype), deliverytype));
            }

        }
        return hashset;
    }

    private void emitError(String s, Exception exception)
    {
        Log.e(TAG, s, exception);
        HashMap hashmap = new HashMap();
        hashmap.put("message", (new StringBuilder()).append(s).append(": ").append(exception.getMessage()).toString());
        eventEmitter.emit("error", hashmap);
    }

    protected Video buildVideoFromJSON(JSONObject jsonobject)
    {
        Map map = buildVideoProperties(jsonobject);
        Set set = buildVideoSourceCollections(jsonobject);
        List list = buildVideoCuePoints(jsonobject, eventEmitter);
        if (list != null)
        {
            return new Video(map, set, list);
        } else
        {
            return new Video(map, set);
        }
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((URI[])aobj);
    }

    protected transient JSONObject doInBackground(URI auri[])
    {
        HashMap hashmap;
        if (auri == null || auri.length != 1)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
        }
        uri = auri[0];
        hashmap = new HashMap();
        hashmap.put("BCOV-POLICY", policy);
        if (options != null)
        {
            hashmap.putAll(options);
        }
        if (hashmap == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        return httpService.doJSONGetRequest(uri, hashmap);
        JSONObject jsonobject = httpService.doJSONGetRequest(uri);
        return jsonobject;
        IOException ioexception;
        ioexception;
        Log.e(TAG, (new StringBuilder()).append("IOException: ").append(ioexception).toString());
        String s = ErrorUtil.getMessage("uriError");
        Object aobj[] = new Object[1];
        aobj[0] = uri.toString();
        emitError(String.format(s, aobj), ioexception);
        return null;
        JSONException jsonexception;
        jsonexception;
        Log.e(TAG, (new StringBuilder()).append("JSONException").append(jsonexception).toString());
        emitError("Not a valid JSON Response", jsonexception);
        return null;
    }

    protected void parseJSONProperties(JSONObject jsonobject, Map map, Set set)
    {
        Iterator iterator = jsonobject.keys();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            if (!StringUtil.isEmpty(s) && !jsonobject.isNull(s) && !set.contains(s))
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

}
