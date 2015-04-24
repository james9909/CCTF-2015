// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.brightcove.player.media;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class HttpService
{
    static final class Method extends Enum
    {

        private static final Method $VALUES[];
        public static final Method GET;
        public static final Method POST;

        public static Method valueOf(String s)
        {
            return (Method)Enum.valueOf(com/brightcove/player/media/HttpService$Method, s);
        }

        public static Method[] values()
        {
            return (Method[])$VALUES.clone();
        }

        static 
        {
            GET = new Method("GET", 0);
            POST = new Method("POST", 1);
            Method amethod[] = new Method[2];
            amethod[0] = GET;
            amethod[1] = POST;
            $VALUES = amethod;
        }

        private Method(String s, int i)
        {
            super(s, i);
        }
    }


    public static final int DEFAULT_CONNECT_TIMEOUT = 10000;
    public static final int DEFAULT_READ_TIMEOUT = 10000;
    public static final String TAG = com/brightcove/player/media/HttpService.getSimpleName();
    private int connectTimeout;
    private int readTimeout;

    public HttpService()
    {
        connectTimeout = 10000;
        readTimeout = 10000;
    }

    public HttpService(int i, int j)
    {
        connectTimeout = 10000;
        readTimeout = 10000;
        connectTimeout = i;
        readTimeout = j;
    }

    public static URI buildURIWithQueryParameters(String s, Map map)
    {
        if (s == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("baseURLRequired"));
        }
        StringBuilder stringbuilder = new StringBuilder(s);
        if (map == null || map.size() == 0)
        {
            return new URI(stringbuilder.toString());
        }
        Iterator iterator;
        if (s.contains("?"))
        {
            stringbuilder.append("&");
        } else
        {
            stringbuilder.append("?");
        }
        iterator = map.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (entry != null && entry.getKey() != null && entry.getValue() != null)
            {
                stringbuilder.append(URLEncoder.encode((String)entry.getKey(), "UTF-8"));
                stringbuilder.append("=");
                stringbuilder.append(URLEncoder.encode(entry.getValue().toString(), "UTF-8"));
                if (iterator.hasNext())
                {
                    stringbuilder.append("&");
                }
            }
        } while (true);
        return new URI(stringbuilder.toString());
    }

    private static int calculateInSampleSize(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int k;
        int l;
        int i1;
        k = options.outHeight;
        l = options.outWidth;
        i1 = 1;
        Log.v(TAG, (new StringBuilder()).append("calculateInSampleSize: height = ").append(k).append(", width = ").append(l).append(", maxWidth = ").append(i).append(", maxHeight = ").append(j).toString());
        if (l * j <= i * k) goto _L2; else goto _L1
_L1:
        j = (i * k) / l;
_L4:
        Log.v(TAG, (new StringBuilder()).append("calculateInSampleSize: maxWidth = ").append(i).append(", maxHeight = ").append(j).toString());
        if (k > j || l > i)
        {
            int j1 = k / 2;
            for (int k1 = l / 2; j1 / i1 > j && k1 / i1 > i; i1 *= 2) { }
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (l * j < i * k)
        {
            i = (j * l) / k;
        }
        if (true) goto _L4; else goto _L3
_L3:
        return i1;
    }

    private static Bitmap decodeSampledBitmap(URL url, int i, int j)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        URLConnection urlconnection1 = url.openConnection();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(urlconnection1.getInputStream(), null, options);
        options.inSampleSize = calculateInSampleSize(options, i, j);
        if (urlconnection1 != null && (urlconnection1 instanceof HttpURLConnection))
        {
            ((HttpURLConnection)urlconnection1).disconnect();
        }
        Log.v(TAG, (new StringBuilder()).append("decodeSampledBitmap: total memory = ").append(Runtime.getRuntime().totalMemory()).toString());
        URLConnection urlconnection3 = url.openConnection();
        URLConnection urlconnection2 = urlconnection3;
        Bitmap bitmap;
        options.inJustDecodeBounds = false;
        bitmap = BitmapFactory.decodeStream(urlconnection2.getInputStream(), null, options);
        if (urlconnection2 != null && (urlconnection2 instanceof HttpURLConnection))
        {
            ((HttpURLConnection)urlconnection2).disconnect();
        }
        Log.v(TAG, (new StringBuilder()).append("decodeSampledBitmap: total memory = ").append(Runtime.getRuntime().totalMemory()).toString());
        return bitmap;
        Exception exception;
        exception;
        URLConnection urlconnection;
        Exception exception1;
        urlconnection = null;
        exception1 = exception;
_L4:
        if (urlconnection != null && (urlconnection instanceof HttpURLConnection))
        {
            ((HttpURLConnection)urlconnection).disconnect();
        }
        throw exception1;
        Exception exception3;
        exception3;
        Exception exception4;
        urlconnection2 = urlconnection1;
        exception4 = exception3;
_L2:
        if (urlconnection2 != null && (urlconnection2 instanceof HttpURLConnection))
        {
            ((HttpURLConnection)urlconnection2).disconnect();
        }
        throw exception4;
        exception4;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception2;
        exception2;
        urlconnection = urlconnection1;
        exception1 = exception2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private JSONObject doJSONRequest(Method method, URI uri, Map map)
    {
        String s = doRequest(method, uri, map);
        if (s != null && !s.trim().isEmpty() && !s.equals("null"))
        {
            if (Log.isLoggable(TAG, 3))
            {
                Log.d(TAG, (new StringBuilder()).append("JSON response:\n").append(s).toString());
            }
            return parseToJSONObject(s);
        } else
        {
            return null;
        }
    }

    private String doRequest(Method method, URI uri, Map map)
    {
        URL url;
        if (uri == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
        }
        if (map == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("headersRequired"));
        }
        url = uri.toURL();
        Log.d(TAG, (new StringBuilder()).append("issuing ").append(method).append(" request: ").append(url.toString()).append(", headers: ").append(map).toString());
        URLConnection urlconnection1 = url.openConnection();
        if (urlconnection1 instanceof HttpURLConnection)
        {
            HttpURLConnection httpurlconnection1 = (HttpURLConnection)urlconnection1;
            if (method.equals(Method.POST))
            {
                httpurlconnection1.setRequestMethod("POST");
            }
            Iterator iterator = map.entrySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if (!StringUtil.isEmpty((String)entry.getKey()) && !StringUtil.isEmpty((String)entry.getValue()))
                {
                    httpurlconnection1.setRequestProperty((String)entry.getKey(), (String)entry.getValue());
                }
            } while (true);
        }
          goto _L1
        Exception exception2;
        exception2;
        Exception exception1;
        URLConnection urlconnection;
        urlconnection = urlconnection1;
        exception1 = exception2;
_L3:
        if (urlconnection != null && (urlconnection instanceof HttpURLConnection))
        {
            ((HttpURLConnection)urlconnection).disconnect();
        }
        throw exception1;
_L1:
        String s;
        s = inputStreamToString(urlconnection1.getInputStream());
        Log.d(TAG, (new StringBuilder()).append("response: ").append(s).toString());
        if (urlconnection1 instanceof HttpURLConnection)
        {
            HttpURLConnection httpurlconnection = (HttpURLConnection)urlconnection1;
            Log.d(TAG, (new StringBuilder()).append("code: ").append(httpurlconnection.getResponseCode()).toString());
            Log.d(TAG, (new StringBuilder()).append("message: ").append(httpurlconnection.getResponseMessage()).toString());
        }
        if (urlconnection1 != null && (urlconnection1 instanceof HttpURLConnection))
        {
            ((HttpURLConnection)urlconnection1).disconnect();
        }
        return s;
        Exception exception;
        exception;
        exception1 = exception;
        urlconnection = null;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public static String inputStreamToString(InputStream inputstream)
    {
        return readerToString(new InputStreamReader(inputstream));
    }

    public static JSONObject parseToJSONObject(String s)
    {
        if (s == null || s.trim().isEmpty())
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("jsonRequired"));
        }
        Object obj = (new JSONTokener(s)).nextValue();
        if (obj instanceof JSONObject)
        {
            return (JSONObject)obj;
        }
        if (obj instanceof JSONArray)
        {
            throw new JSONException(ErrorUtil.getMessage("jsonArray"));
        } else
        {
            String s1 = ErrorUtil.getMessage("unexpectedType");
            Object aobj[] = new Object[1];
            aobj[0] = obj.getClass().getName();
            throw new JSONException(String.format(s1, aobj));
        }
    }

    public static String readerToString(Reader reader)
    {
        StringBuilder stringbuilder;
        BufferedReader bufferedreader;
        stringbuilder = new StringBuilder();
        bufferedreader = new BufferedReader(reader);
_L1:
        String s = bufferedreader.readLine();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        stringbuilder.append(s);
          goto _L1
        Exception exception;
        exception;
        bufferedreader.close();
        throw exception;
        bufferedreader.close();
        return stringbuilder.toString();
    }

    public String doGetRequest(URI uri)
    {
        return doGetRequest(uri, ((Map) (new HashMap())));
    }

    public String doGetRequest(URI uri, Map map)
    {
        return doRequest(Method.GET, uri, map);
    }

    public Bitmap doImageGetRequest(URI uri)
    {
        URL url;
        if (uri == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
        }
        url = uri.toURL();
        Log.d(TAG, (new StringBuilder()).append("issuing GET request: ").append(url.toString()).toString());
        URLConnection urlconnection1 = url.openConnection();
        URLConnection urlconnection = urlconnection1;
        Bitmap bitmap = BitmapFactory.decodeStream(urlconnection.getInputStream());
        if (urlconnection != null && (urlconnection instanceof HttpURLConnection))
        {
            ((HttpURLConnection)urlconnection).disconnect();
        }
        Log.v(TAG, (new StringBuilder()).append("doImageGetRequest: total memory = ").append(Runtime.getRuntime().totalMemory()).toString());
        return bitmap;
        Exception exception;
        exception;
        Exception exception1;
        urlconnection = null;
        exception1 = exception;
_L2:
        if (urlconnection != null && (urlconnection instanceof HttpURLConnection))
        {
            ((HttpURLConnection)urlconnection).disconnect();
        }
        throw exception1;
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public Bitmap doImageGetRequest(URI uri, int i, int j)
    {
        if (uri == null)
        {
            throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
        } else
        {
            return decodeSampledBitmap(uri.toURL(), i, j);
        }
    }

    public JSONObject doJSONGetRequest(URI uri)
    {
        return doJSONGetRequest(uri, ((Map) (new HashMap())));
    }

    public JSONObject doJSONGetRequest(URI uri, Map map)
    {
        return doJSONRequest(Method.GET, uri, map);
    }

    public JSONObject doJSONPostRequest(URI uri)
    {
        return doJSONPostRequest(uri, ((Map) (new HashMap())));
    }

    public JSONObject doJSONPostRequest(URI uri, Map map)
    {
        return doJSONRequest(Method.POST, uri, map);
    }

    public String doPostRequest(URI uri)
    {
        return doPostRequest(uri, ((Map) (new HashMap())));
    }

    public String doPostRequest(URI uri, Map map)
    {
        return doRequest(Method.POST, uri, map);
    }

    public int getConnectTimeout()
    {
        return connectTimeout;
    }

    public int getReadTimeout()
    {
        return readTimeout;
    }

}
