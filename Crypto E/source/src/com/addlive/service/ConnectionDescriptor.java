// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.addlive.service;

import org.json.JSONObject;

// Referenced classes of package com.addlive.service:
//            VideoStreamDescriptor, AuthDetails

public class ConnectionDescriptor
{

    private AuthDetails authDetails;
    private boolean autopublishAudio;
    private boolean autopublishVideo;
    private String scopeId;
    private String url;
    private VideoStreamDescriptor videoStream;

    public ConnectionDescriptor()
    {
        autopublishVideo = false;
        autopublishAudio = false;
        url = "";
        scopeId = "";
        videoStream = new VideoStreamDescriptor();
        authDetails = new AuthDetails();
    }

    public AuthDetails getAuthDetails()
    {
        return authDetails;
    }

    public String getScopeId()
    {
        return scopeId;
    }

    public String getUrl()
    {
        return url;
    }

    public VideoStreamDescriptor getVideoStream()
    {
        return videoStream;
    }

    public boolean isAutopublishAudio()
    {
        return autopublishAudio;
    }

    public boolean isAutopublishVideo()
    {
        return autopublishVideo;
    }

    public void setAuthDetails(AuthDetails authdetails)
    {
        authDetails = authdetails;
    }

    public void setAutopublishAudio(boolean flag)
    {
        autopublishAudio = flag;
    }

    public void setAutopublishVideo(boolean flag)
    {
        autopublishVideo = flag;
    }

    public void setScopeId(String s)
    {
        scopeId = s;
    }

    public void setUrl(String s)
    {
        url = s;
    }

    public void setVideoStream(VideoStreamDescriptor videostreamdescriptor)
    {
        videoStream = videostreamdescriptor;
    }

    public JSONObject toJSON()
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("scopeId", scopeId);
        jsonobject.put("autopublishAudio", autopublishAudio);
        jsonobject.put("autopublishVideo", autopublishVideo);
        jsonobject.put("url", url);
        jsonobject.put("videoStream", videoStream.toJSON());
        jsonobject.put("authDetails", authDetails.toJSON());
        return jsonobject;
    }

    public String toString()
    {
        return (new StringBuilder()).append("ConnectionDescriptor{autopublishVideo=").append(autopublishVideo).append(", autopublishAudio=").append(autopublishAudio).append(", url='").append(url).append('\'').append(", scopeId='").append(scopeId).append('\'').append(", videoStream='").append(videoStream.toString()).append(", authDetails=").append(authDetails.toString()).append("}").toString();
    }
}
