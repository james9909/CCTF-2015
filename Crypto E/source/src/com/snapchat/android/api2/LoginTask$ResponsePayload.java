// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.api2;

import com.snapchat.android.model.server.chat.AllUpdatesConversationResponse;

// Referenced classes of package com.snapchat.android.api2:
//            LoginTask

public static class versationResponse extends AllUpdatesConversationResponse
{

    public String mDeviceTokenId;
    public String mDeviceTokenValue;
    String mErrorMessage;
    int mStatus;

    public versationResponse()
    {
    }
}
