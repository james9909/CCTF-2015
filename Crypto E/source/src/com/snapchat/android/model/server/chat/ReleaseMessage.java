// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import android.text.TextUtils;
import com.snapchat.android.model.UserPrefs;
import com.snapchat.android.util.EnumUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ConversationMessage, SignedPayload, SCMessage

public class ReleaseMessage extends ConversationMessage
{
    public static class Builder extends ConversationMessage.Builder
    {

        private Map mKnownChatSequenceNumbers;
        private Map mKnownReceivedSnapsTs;
        private ReleaseType mReleaseType;

        public ReleaseMessage build()
        {
            return new ReleaseMessage(this);
        }

        public volatile SCMessage build()
        {
            return build();
        }

        public Builder setKnownChatSequenceNumbers(Map map)
        {
            mKnownChatSequenceNumbers = map;
            return this;
        }

        public Builder setKnownReceivedSnapsTs(Map map)
        {
            mKnownReceivedSnapsTs = map;
            return this;
        }

        public Builder setReleaseType(ReleaseType releasetype)
        {
            mReleaseType = releasetype;
            return this;
        }




        public Builder(String s, List list, SignedPayload signedpayload)
        {
            super("message_release", s, list, signedpayload);
        }
    }

    public static final class ReleaseType extends Enum
    {

        private static final ReleaseType $VALUES[];
        public static final ReleaseType DELETE;
        public static final ReleaseType DISPLAY;
        public static final ReleaseType RELEASE;

        public static ReleaseType valueOf(String s)
        {
            return (ReleaseType)Enum.valueOf(com/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType, s);
        }

        public static ReleaseType[] values()
        {
            return (ReleaseType[])$VALUES.clone();
        }

        static 
        {
            RELEASE = new ReleaseType("RELEASE", 0);
            DELETE = new ReleaseType("DELETE", 1);
            DISPLAY = new ReleaseType("DISPLAY", 2);
            ReleaseType areleasetype[] = new ReleaseType[3];
            areleasetype[0] = RELEASE;
            areleasetype[1] = DELETE;
            areleasetype[2] = DISPLAY;
            $VALUES = areleasetype;
        }

        private ReleaseType(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String TYPE = "message_release";
    private Map known_chat_sequence_numbers;
    private Map known_received_snaps_ts;
    private String release_type;
    private long timestamp;

    private ReleaseMessage(Builder builder)
    {
        super(builder);
        release_type = EnumUtils.a(builder.mReleaseType);
        known_chat_sequence_numbers = builder.mKnownChatSequenceNumbers;
        known_received_snaps_ts = builder.mKnownReceivedSnapsTs;
    }


    private boolean equalMaps(Map map, Map map1)
    {
        if (map == null && map1 == null)
        {
            return true;
        }
        if (map == null || map1 == null)
        {
            return false;
        }
        if (map.size() != map1.size())
        {
            return false;
        }
        if (!map.keySet().equals(map1.keySet()))
        {
            return false;
        }
        for (Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            if (!((Long)map.get(s)).equals(map1.get(s)))
            {
                return false;
            }
        }

        return true;
    }

    public boolean canSendOverHTTP()
    {
        return true;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof ReleaseMessage))
            {
                return false;
            }
            ReleaseMessage releasemessage = (ReleaseMessage)obj;
            if (!TextUtils.equals(getHeader().getConvId(), releasemessage.getHeader().getConvId()) || !TextUtils.equals(release_type, releasemessage.release_type) || !equalMaps(known_chat_sequence_numbers, releasemessage.known_chat_sequence_numbers) || !equalMaps(known_received_snaps_ts, releasemessage.known_received_snaps_ts))
            {
                return false;
            }
        }
        return true;
    }

    public Map getKnownChatSequenceNumbers()
    {
        return known_chat_sequence_numbers;
    }

    public Map getKnownReceivedSnapsTs()
    {
        return known_received_snaps_ts;
    }

    public String getReleaseType()
    {
        return release_type;
    }

    public long getTimestamp()
    {
        return timestamp;
    }

    public int hashCode()
    {
        return 31 * (31 * (31 * (217 + getHeader().getConvId().hashCode()) + release_type.hashCode()) + known_chat_sequence_numbers.hashCode()) + known_received_snaps_ts.hashCode();
    }

    public boolean needsACK()
    {
        return true;
    }

    public String toString()
    {
        String s;
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("release_type", release_type);
            jsonobject.put("known_chat_sequence_numbers", known_chat_sequence_numbers);
            jsonobject.put("known_received_snaps_ts", known_received_snaps_ts);
            jsonobject.put("timestamp", timestamp);
            jsonobject.put("conversation_id", getHeader().getConvId());
            jsonobject.put("id", getId());
            jsonobject.put("sequence", known_chat_sequence_numbers.get(UserPrefs.k()));
            s = (new StringBuilder()).append("ReleaseMessage").append(jsonobject.toString()).toString();
        }
        catch (JSONException jsonexception)
        {
            return (new StringBuilder()).append("ReleaseMessage{\"release_type\":\"").append(release_type).append("\", \"known_chat_sequence_numbers\":\"").append(known_chat_sequence_numbers).append("\", \"known_received_snaps_ts\":\"").append(known_received_snaps_ts).append("\", \"timestamp\":\"").append(timestamp).append("\", \"conversation_id\":\"").append(getHeader().getConvId()).append("\", \"id\":\"").append(getId()).append("\", \"sequence\":\"").append(known_chat_sequence_numbers.get(UserPrefs.k())).append("\"}").toString();
        }
        return s;
    }
}
