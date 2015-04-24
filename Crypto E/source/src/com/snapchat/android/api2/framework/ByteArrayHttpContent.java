// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.RequestBody;

// Referenced classes of package com.snapchat.android.api2.framework:
//            HttpContent, EntityFactory

public class ByteArrayHttpContent
    implements HttpContent
{

    private byte mByteStream[];

    public ByteArrayHttpContent(byte abyte0[])
    {
        mByteStream = abyte0;
    }

    public Headers a(String s)
    {
        String as[] = new String[2];
        as[0] = "Content-Disposition";
        as[1] = (new StringBuilder()).append("form-data; name=\"").append(s).append("\"; filename=\"").append(s).append("\"").toString();
        return Headers.a(as);
    }

    public RequestBody a()
    {
        return RequestBody.a(EntityFactory.BYTE_STREAM_MEDIA_TYPE, mByteStream);
    }
}
