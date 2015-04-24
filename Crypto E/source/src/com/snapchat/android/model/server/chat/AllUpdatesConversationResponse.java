// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server.chat;

import com.snapchat.android.discover.model.server.DiscoverResponse;
import com.snapchat.android.model.server.FriendsResponse;
import com.snapchat.android.model.server.MessagingGatewayInfo;
import com.snapchat.android.model.server.StoriesResponse;
import com.snapchat.android.model.server.UpdatesResponse;
import com.snapchat.data.gson.identity.IdentityCheckResponse;
import java.util.List;

// Referenced classes of package com.snapchat.android.model.server.chat:
//            ConversationsResponseInfo

public class AllUpdatesConversationResponse
{

    public List conversations_response;
    public ConversationsResponseInfo conversations_response_info;
    public DiscoverResponse discover;
    public FriendsResponse friends_response;
    public IdentityCheckResponse identity_check_response;
    private int mRequestTaskId;
    public MessagingGatewayInfo messaging_gateway_info;
    public StoriesResponse stories_response;
    public UpdatesResponse updates_response;

    public AllUpdatesConversationResponse()
    {
    }

    public AllUpdatesConversationResponse(UpdatesResponse updatesresponse, FriendsResponse friendsresponse, StoriesResponse storiesresponse, List list, ConversationsResponseInfo conversationsresponseinfo, MessagingGatewayInfo messaginggatewayinfo, DiscoverResponse discoverresponse, 
            IdentityCheckResponse identitycheckresponse, int i)
    {
        updates_response = updatesresponse;
        friends_response = friendsresponse;
        stories_response = storiesresponse;
        conversations_response = list;
        conversations_response_info = conversationsresponseinfo;
        messaging_gateway_info = messaginggatewayinfo;
        discover = discoverresponse;
        identity_check_response = identitycheckresponse;
        mRequestTaskId = i;
    }

    public int getRequestTaskId()
    {
        return mRequestTaskId;
    }
}
