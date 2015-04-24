// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;

import com.google.gson.internal.LinkedTreeMap;
import com.snapchat.android.discover.model.server.DiscoverResponse;
import com.snapchat.android.model.server.chat.ConversationsResponseInfo;
import com.snapchat.android.model.server.chat.ServerChatConversation;
import com.snapchat.android.model.server.chat.SignedPayload;
import com.snapchat.data.gson.identity.IdentityCheckResponse;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.snapchat.android.model.server:
//            CaptchaResponse, FeatureSettings, FriendsResponse, ServerEndpointSet, 
//            MessagingGatewayInfo, ServerFriend, SnapOrStoryDoublePostResponse, StoriesResponse, 
//            UpdatesResponse, VerificationNeededResponse

public class ServerResponse
{

    public String FRIEND;
    public String LOCAL_POST_BODY;
    public String LOCAL_POST_TITLE;
    public String LOCAL_VIEW_BODY;
    public String LOCAL_VIEW_TITLE;
    public String OUR_SHARED_STORY;
    public List added_friends;
    public long added_friends_timestamp;
    public String allowed_to_use_cash;
    public String auth_token;
    public List bests;
    public String birthday;
    public List broken_cameras;
    public CaptchaResponse captcha;
    public String conv_id;
    public ServerChatConversation conversation;
    public List conversations;
    public List conversations_response;
    public ConversationsResponseInfo conversations_response_info;
    public long current_timestamp;
    public String device_token;
    public DiscoverResponse discover;
    public String dtoken1i;
    public String dtoken1v;
    public String email;
    public boolean enable_save_story_to_gallery;
    public boolean enable_video_transcoding_android;
    public FeatureSettings feature_settings;
    public List friend_stories;
    public List friends;
    public FriendsResponse friends_response;
    public ServerEndpointSet gae_proxy_update;
    public SignedPayload gateway_auth_token;
    public String gateway_server;
    public String get_channels;
    public List group_stories;
    public String id;
    public IdentityCheckResponse identity_check_response;
    public com.snapchat.android.api.PostStorySnapTask.PostStorySnapJsonResponse json;
    public long last_address_book_updated_date;
    public long last_replayed_snap_timestamp;
    public long last_updated;
    public boolean logged;
    public String media_id;
    public String message;
    public String message_format;
    public MessagingGatewayInfo messaging_gateway_info;
    public String mobile;
    public String mobile_verification_key;
    public List my_stories;
    public int number_of_best_friends;
    public ServerFriend object;
    public int received;
    public List recents;
    public ArrayList result;
    public List results;
    public int score;
    public boolean searchable_by_phone_number;
    public int sent;
    public LinkedTreeMap server_info;
    public boolean should_call_to_verify_phone_number;
    public boolean should_text_to_verify_phone_number;
    public int snap_p;
    public SnapOrStoryDoublePostResponse snap_response;
    public String snapchat_phone_number;
    public List snaps;
    public int status;
    public StoriesResponse stories_response;
    public String story_privacy;
    public SnapOrStoryDoublePostResponse story_response;
    public UpdatesResponse updates_response;
    public String url;
    public String username;
    public VerificationNeededResponse verification_needed;
    public boolean video_filters_enabled;

    public ServerResponse()
    {
    }

    public String toString()
    {
        return (new StringBuilder()).append("ServerResponse{logged=").append(logged).append(", username='").append(username).append('\'').append(", auth_token='").append(auth_token).append('\'').append(", device_token='").append(device_token).append('\'').append(", email='").append(email).append('\'').append(", mobile='").append(mobile).append('\'').append(", mobile_verification_key='").append(mobile_verification_key).append('\'').append(", enable_video_transcoding_android='").append(enable_video_transcoding_android).append('\'').append(", enable_save_story_to_gallery='").append(enable_save_story_to_gallery).append('\'').append(", video_filters_enabled='").append(video_filters_enabled).append('\'').append(", birthday='").append(birthday).append('\'').append(", snap_p=").append(snap_p).append(", story_privacy='").append(story_privacy).append('\'').append(", sent=").append(sent).append(", received=").append(received).append(", score=").append(score).append(", snaps=").append(snaps).append(", friends=").append(friends).append(", added_friends=").append(added_friends).append(", bests=").append(bests).append(", recents=").append(recents).append(", my_stories=").append(my_stories).append(", friend_stories=").append(friend_stories).append(", last_updated=").append(last_updated).append(", added_friends_timestamp=").append(added_friends_timestamp).append(", current_timestamp=").append(current_timestamp).append(", last_replayed_snap_timestamp=").append(last_replayed_snap_timestamp).append(", message='").append(message).append('\'').append(", status=").append(status).append(", results=").append(results).append(", object=").append(object).append(", broken_cameras=").append(broken_cameras).append(", snapchat_phone_number='").append(snapchat_phone_number).append('\'').append(", story_response=").append(story_response).append(", snap_response=").append(snap_response).append(", json=").append(json).append(", searchable_by_phone_number=").append(searchable_by_phone_number).append(", should_call_to_verify_phone_number=").append(should_call_to_verify_phone_number).append(", should_text_to_verify_phone_number=").append(should_text_to_verify_phone_number).append(", captcha=").append(captcha).append(", updates_response=").append(updates_response).append(", friends_response=").append(friends_response).append(", stories_response=").append(stories_response).append(", conversations_response=").append(conversations_response).append(", conversations_response_info=").append(conversations_response_info).append(", conversations=").append(conversations).append(", conv_id='").append(conv_id).append('\'').append(", messaging_gateway_info=").append(messaging_gateway_info).append(", id='").append(id).append('\'').append(", url='").append(url).append('\'').append(", media_id='").append(media_id).append('\'').append(", gateway_server='").append(gateway_server).append('\'').append(", gateway_auth_token=").append(gateway_auth_token).append(", conversation=").append(conversation).append(", feature_settings=").append(feature_settings).append(", number_of_best_friends=").append(number_of_best_friends).append(", server_info=").append(server_info).append(", last_address_book_updated_date=").append(last_address_book_updated_date).append(", identity_check_response=").append(identity_check_response).append('}').toString();
    }
}
