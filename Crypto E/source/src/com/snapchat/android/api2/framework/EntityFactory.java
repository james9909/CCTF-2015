// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.Timber;
import com.snapchat.android.util.GsonWrapper;
import com.snapchat.android.util.network.EndpointManager;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.MultipartBuilder;
import com.squareup.okhttp.RequestBody;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.snapchat.android.api2.framework:
//            HttpContent, RequestBodyType, RequestBodyWrapper, FormEncodedJsonFieldMapper, 
//            MultipartEncodedFieldMapper

public class EntityFactory
{

    public static final MediaType BYTE_STREAM_MEDIA_TYPE = MediaType.a("application/octet-stream");
    public static final MediaType JSON_MEDIA_TYPE = MediaType.a("application/json; charset=UTF-8");
    private static final String KEY_VALUE_SEPARATOR = "=";
    private static final String PARAMETER_SEPARATOR = "&";
    public static final MediaType STRING_MEDIA_TYPE = MediaType.a("text/plain; charset=UTF-8");
    private static final String TAG = "EntityFactory";
    public static final MediaType URL_ENCODED_FORM_MEDIA_TYPE = MediaType.a("application/x-www-form-urlencoded; charset=UTF-8");
    private static final String UTF_8 = "UTF-8";
    private final FormEncodedJsonFieldMapper mFormEncodedJsonFieldMapper;
    private final GsonWrapper mGson;
    private final MultipartEncodedFieldMapper mMultipartEncodedFieldMapper;

    protected EntityFactory(FormEncodedJsonFieldMapper formencodedjsonfieldmapper, MultipartEncodedFieldMapper multipartencodedfieldmapper, GsonWrapper gsonwrapper)
    {
        mFormEncodedJsonFieldMapper = formencodedjsonfieldmapper;
        mMultipartEncodedFieldMapper = multipartencodedfieldmapper;
        mGson = gsonwrapper;
    }

    public static String a(Map map)
    {
        StringBuilder stringbuilder;
        Iterator iterator;
        stringbuilder = new StringBuilder();
        iterator = map.entrySet().iterator();
_L2:
        java.util.Map.Entry entry;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_141;
        }
        entry = (java.util.Map.Entry)iterator.next();
        if (stringbuilder.length() > 0)
        {
            stringbuilder.append("&");
        }
        stringbuilder.append(URLEncoder.encode((String)entry.getKey(), "UTF-8"));
        stringbuilder.append("=");
        if (entry.getValue() != null)
        {
            break; /* Loop/switch isn't completed */
        }
        String s = "";
_L3:
        try
        {
            stringbuilder.append(s);
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Timber.e("EntityFactory", "Error occurred while encoding map into UTF-8 string.", new Object[0]);
        }
        if (true) goto _L2; else goto _L1
_L1:
        String s1 = URLEncoder.encode((String)entry.getValue(), "UTF-8");
        s = s1;
          goto _L3
        return stringbuilder.toString();
    }

    private static RequestBody b(Map map)
    {
        MultipartBuilder multipartbuilder = (new MultipartBuilder()).a(MultipartBuilder.e);
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); multipartbuilder.a(((HttpContent)entry.getValue()).a((String)entry.getKey()), ((HttpContent)entry.getValue()).a()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return multipartbuilder.a();
    }

    protected RequestBody a(Object obj)
    {
        return RequestBody.a(BYTE_STREAM_MEDIA_TYPE, (byte[])(byte[])obj);
    }

    protected RequestBody a(String s)
    {
        if (s != null && s.contains(EndpointManager.a().k()))
        {
            return RequestBody.a(JSON_MEDIA_TYPE, "{}");
        } else
        {
            return RequestBody.a(URL_ENCODED_FORM_MEDIA_TYPE, "");
        }
    }

    public RequestBody a(String s, Object obj)
    {
        if (obj == null)
        {
            return a(s);
        }
        RequestBodyType requestbodytype = RequestBodyType.typeOf(obj);
        if (obj instanceof RequestBodyWrapper)
        {
            obj = ((RequestBodyWrapper)obj).a();
        }
        static class _cls1
        {

            static final int $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[];

            static 
            {
                $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType = new int[RequestBodyType.values().length];
                try
                {
                    $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[RequestBodyType.JSON_ENCODED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[RequestBodyType.FORM_ENCODED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[RequestBodyType.MULTI_PART_ENCODED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[RequestBodyType.BYTE_ARRAY.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[RequestBodyType.FILE.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$snapchat$android$api2$framework$RequestBodyType[RequestBodyType.UNKNOWN.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5)
                {
                    return;
                }
            }
        }

        switch (_cls1..SwitchMap.com.snapchat.android.api2.framework.RequestBodyType[requestbodytype.ordinal()])
        {
        default:
            throw new IllegalArgumentException("No encoding annotation is set on the payload.");

        case 1: // '\001'
            return c(obj);

        case 2: // '\002'
            return d(obj);

        case 3: // '\003'
            return e(obj);

        case 4: // '\004'
            return a(obj);

        case 5: // '\005'
            return b(obj);
        }
    }

    protected RequestBody b(Object obj)
    {
        return RequestBody.a(BYTE_STREAM_MEDIA_TYPE, (File)obj);
    }

    protected RequestBody c(Object obj)
    {
        String s = mGson.a(obj);
        return RequestBody.a(JSON_MEDIA_TYPE, s);
    }

    protected RequestBody d(Object obj)
    {
        String s = a(mFormEncodedJsonFieldMapper.a(obj));
        return RequestBody.a(URL_ENCODED_FORM_MEDIA_TYPE, s);
    }

    protected RequestBody e(Object obj)
    {
        return b(mMultipartEncodedFieldMapper.a(obj));
    }

}
