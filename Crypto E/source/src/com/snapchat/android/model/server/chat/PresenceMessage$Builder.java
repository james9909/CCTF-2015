// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import com.snapchat.android.ui.here.LocalPreview;
import com.snapchat.android.util.ApiHelper;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            PresenceMessage, SignedPayload, SCMessage

public static class mSupportsHere extends der
{

    private boolean mIsDisplayingVideo;
    private Map mPresences;
    private final boolean mSupportsHere;

    public PresenceMessage build()
    {
        return new PresenceMessage(this, null);
    }

    public volatile SCMessage build()
    {
        return build();
    }

    public build setIsDisplayingVideo(boolean flag)
    {
        mIsDisplayingVideo = flag;
        return this;
    }

    public mIsDisplayingVideo setPresences(Map map)
    {
        mPresences = map;
        return this;
    }




    public der(String s, List list, SignedPayload signedpayload)
    {
        super("presence", s, list, signedpayload);
        boolean flag;
        if (ApiHelper.b && LocalPreview.a())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mSupportsHere = flag;
    }
}
