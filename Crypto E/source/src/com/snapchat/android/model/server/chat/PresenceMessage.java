// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import com.snapchat.android.ui.here.LocalPreview;
import com.snapchat.android.util.ApiHelper;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ConversationMessage, SignedPayload, SCMessage

public class PresenceMessage extends ConversationMessage
{
    public static class Builder extends ConversationMessage.Builder
    {

        private boolean mIsDisplayingVideo;
        private Map mPresences;
        private final boolean mSupportsHere;

        public PresenceMessage build()
        {
            return new PresenceMessage(this);
        }

        public volatile SCMessage build()
        {
            return build();
        }

        public Builder setIsDisplayingVideo(boolean flag)
        {
            mIsDisplayingVideo = flag;
            return this;
        }

        public Builder setPresences(Map map)
        {
            mPresences = map;
            return this;
        }




        public Builder(String s, List list, SignedPayload signedpayload)
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

    public static class HereAuth
    {

        public long expires;
        public String salt;
        public String scope_id;
        public String signature;
        public long user_id;

        public String toString()
        {
            return (new StringBuilder()).append("HereAuth{scope_id='").append(scope_id).append('\'').append(", user_id=").append(user_id).append(", salt='").append(salt).append('\'').append(", expires=").append(expires).append(", signature='").append(signature).append('\'').append('}').toString();
        }

        public HereAuth()
        {
        }
    }


    public static final String TYPE = "presence";
    private HereAuth here_auth;
    private Map presences;
    private boolean receiving_video;
    private boolean supports_here;

    private PresenceMessage(Builder builder)
    {
        super(builder);
        presences = builder.mPresences;
        supports_here = builder.mSupportsHere;
        receiving_video = builder.mIsDisplayingVideo;
    }


    public boolean canSendOverHTTP()
    {
        return false;
    }

    public HereAuth getHereAuth()
    {
        return here_auth;
    }

    public Map getPresences()
    {
        return presences;
    }

    public boolean isReceivingVideo()
    {
        return receiving_video;
    }

    public boolean needsACK()
    {
        return false;
    }

    public boolean supportsHere()
    {
        return supports_here;
    }

    public String toString()
    {
        String s;
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("presences", presences);
            jsonobject.put("supports_here", supports_here);
            jsonobject.put("receiving_video", receiving_video);
            jsonobject.put("conversation_id", getHeader().getConvId());
            jsonobject.put("id", getId());
            s = (new StringBuilder()).append("PresenceMessage").append(jsonobject.toString()).toString();
        }
        catch (JSONException jsonexception)
        {
            return (new StringBuilder()).append("PresenceMessage{\"presences\":\"").append(presences).append("\", supports_here\":\"").append(supports_here).append("\", receiving_video\":\"").append(receiving_video).append("\", conversation_id\":\"").append(getHeader().getConvId()).append("\", \"id\":\"").append(getId()).append("\"}").toString();
        }
        return s;
    }
}
