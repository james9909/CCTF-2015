// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import android.content.Context;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.debug.ScApplicationInfo;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            SCMessage, SignedPayload

public class ConnectMessage extends SCMessage
{

    public static final String TYPE = "connect";
    private String app_version;
    private SignedPayload auth;
    private String platform;
    private String username;
    private String version;

    public ConnectMessage(Context context)
    {
        super("connect");
        username = UserPrefs.k();
        platform = "android";
        version = Integer.toString(android.os.Build.VERSION.SDK_INT);
        app_version = ScApplicationInfo.b(context);
        if (ScApplicationInfo.b.equals(app_version))
        {
            app_version = "unknown";
        }
    }

    public ConnectMessage(Context context, SignedPayload signedpayload)
    {
        super("connect");
        username = UserPrefs.k();
        platform = "android";
        version = Integer.toString(android.os.Build.VERSION.SDK_INT);
        app_version = ScApplicationInfo.b(context);
        if (ScApplicationInfo.b.equals(app_version))
        {
            app_version = "unknown";
        }
        auth = signedpayload;
    }

    public void setAuth(SignedPayload signedpayload)
    {
        auth = signedpayload;
    }

    public String toString()
    {
        return (new StringBuilder()).append("ConnectMessage{username='").append(username).append('\'').append(", platform='").append(platform).append('\'').append(", version='").append(version).append('\'').append(", app_version='").append(app_version).append('\'').append(", auth=").append(auth).append('}').toString();
    }
}
