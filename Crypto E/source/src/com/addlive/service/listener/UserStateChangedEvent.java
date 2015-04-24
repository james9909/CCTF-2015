// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.service.listener;

import com.addlive.service.MediaType;
import org.json.JSONObject;

public class UserStateChangedEvent
{

    private boolean audioPublished;
    private boolean isConnected;
    private String mediaType;
    private String scopeId;
    private boolean screenPublished;
    private String screenSinkId;
    private long userId;
    private boolean videoPublished;
    private String videoSinkId;

    public UserStateChangedEvent(JSONObject jsonobject)
    {
        scopeId = jsonobject.getString("scopeId");
        mediaType = jsonobject.getString("mediaType");
        JSONObject jsonobject1 = jsonobject.getJSONObject("userDetails");
        userId = jsonobject1.getLong("userId");
        isConnected = jsonobject1.getBoolean("isConnected");
        audioPublished = jsonobject1.getBoolean("audioPublished");
        videoPublished = jsonobject1.getBoolean("videoPublished");
        screenPublished = jsonobject1.getBoolean("screenPublished");
        videoSinkId = jsonobject1.getString("videoSinkId");
        screenSinkId = jsonobject1.getString("screenSinkId");
    }

    public MediaType getMediaType()
    {
        return MediaType.fromString(mediaType);
    }

    public String getScopeId()
    {
        return scopeId;
    }

    public String getScreenSinkId()
    {
        return screenSinkId;
    }

    public long getUserId()
    {
        return userId;
    }

    public String getVideoSinkId()
    {
        return videoSinkId;
    }

    public boolean isAudioPublished()
    {
        return audioPublished;
    }

    public boolean isConnected()
    {
        return isConnected;
    }

    public boolean isScreenPublished()
    {
        return screenPublished;
    }

    public boolean isVideoPublished()
    {
        return videoPublished;
    }

    public String toString()
    {
        return (new StringBuilder()).append("UserStateChangedEvent{scopeId=").append(scopeId).append(", userId=").append(userId).append(", isConnected=").append(isConnected).append(", audioPublished=").append(audioPublished).append(", videoPublished=").append(videoPublished).append(", videoSinkId=").append(videoSinkId).append(", screenSinkId=").append(screenSinkId).append(", mediaType=").append(mediaType).append("}").toString();
    }
}
