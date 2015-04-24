// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.RequestBody;

// Referenced classes of package com.snapchat.android.api2.framework:
//            HttpContent, EntityFactory

public class StringHttpContent
    implements HttpContent
{

    private String mString;

    public StringHttpContent(String s)
    {
        mString = s;
    }

    public Headers a(String s)
    {
        String as[] = new String[2];
        as[0] = "Content-Disposition";
        as[1] = (new StringBuilder()).append("form-data; name=\"").append(s).append("\"").toString();
        return Headers.a(as);
    }

    public RequestBody a()
    {
        return RequestBody.a(EntityFactory.STRING_MEDIA_TYPE, mString);
    }
}
