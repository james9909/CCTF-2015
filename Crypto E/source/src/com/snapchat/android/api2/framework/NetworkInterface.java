// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2.framework;

import com.snapchat.android.util.memory.Buffer;
import java.util.Map;

// Referenced classes of package com.snapchat.android.api2.framework:
//            HttpMethod, NetworkResult

public interface NetworkInterface
{

    public static final String REQUEST_ID_HEADER_NAME = "x-snapchat-request-id";

    public abstract NetworkResult a(String s, HttpMethod httpmethod, Map map, Buffer buffer, Object obj);
}
