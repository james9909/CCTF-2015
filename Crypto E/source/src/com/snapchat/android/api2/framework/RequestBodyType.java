// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import java.io.File;

// Referenced classes of package com.snapchat.android.api2.framework:
//            RequestBodyWrapper, JsonEncodedBody, FormEncodedBody, MultipartEncodedBody

public final class RequestBodyType extends Enum
{

    private static final RequestBodyType $VALUES[];
    public static final RequestBodyType BYTE_ARRAY;
    public static final RequestBodyType FILE;
    public static final RequestBodyType FORM_ENCODED;
    public static final RequestBodyType JSON_ENCODED;
    public static final RequestBodyType MULTI_PART_ENCODED;
    public static final RequestBodyType UNKNOWN;

    private RequestBodyType(String s, int i)
    {
        super(s, i);
    }

    public static RequestBodyType typeOf(Object obj)
    {
        Class class1 = obj.getClass();
        if (obj instanceof RequestBodyWrapper)
        {
            return ((RequestBodyWrapper)obj).b();
        }
        if (class1.getAnnotation(com/snapchat/android/api2/framework/JsonEncodedBody) != null)
        {
            return JSON_ENCODED;
        }
        if (class1.getAnnotation(com/snapchat/android/api2/framework/FormEncodedBody) != null)
        {
            return FORM_ENCODED;
        }
        if (class1.getAnnotation(com/snapchat/android/api2/framework/MultipartEncodedBody) != null)
        {
            return MULTI_PART_ENCODED;
        }
        if (obj instanceof byte[])
        {
            return BYTE_ARRAY;
        }
        if (obj instanceof File)
        {
            return FILE;
        } else
        {
            return UNKNOWN;
        }
    }

    public static RequestBodyType valueOf(String s)
    {
        return (RequestBodyType)Enum.valueOf(com/snapchat/android/api2/framework/RequestBodyType, s);
    }

    public static RequestBodyType[] values()
    {
        return (RequestBodyType[])$VALUES.clone();
    }

    static 
    {
        FORM_ENCODED = new RequestBodyType("FORM_ENCODED", 0);
        JSON_ENCODED = new RequestBodyType("JSON_ENCODED", 1);
        MULTI_PART_ENCODED = new RequestBodyType("MULTI_PART_ENCODED", 2);
        BYTE_ARRAY = new RequestBodyType("BYTE_ARRAY", 3);
        FILE = new RequestBodyType("FILE", 4);
        UNKNOWN = new RequestBodyType("UNKNOWN", 5);
        RequestBodyType arequestbodytype[] = new RequestBodyType[6];
        arequestbodytype[0] = FORM_ENCODED;
        arequestbodytype[1] = JSON_ENCODED;
        arequestbodytype[2] = MULTI_PART_ENCODED;
        arequestbodytype[3] = BYTE_ARRAY;
        arequestbodytype[4] = FILE;
        arequestbodytype[5] = UNKNOWN;
        $VALUES = arequestbodytype;
    }
}
