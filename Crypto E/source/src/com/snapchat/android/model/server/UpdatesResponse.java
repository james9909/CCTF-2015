// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.model.server;

import java.util.List;
import java.util.Map;

// Referenced classes of package com.snapchat.android.model.server:
//            ServerResponse, FeatureSettings

public class UpdatesResponse
{

    public List added_friends;
    public long added_friends_timestamp;
    public String allowed_to_use_cash;
    public String auth_token;
    public List bests;
    public String birthday;
    public String cash_customer_id;
    public String cash_provider;
    public Map client_properties;
    public long current_timestamp;
    public String device_token;
    public String email;
    public boolean enable_save_story_to_gallery;
    public boolean enable_video_transcoding_android;
    public FeatureSettings feature_settings;
    public List friends;
    public Boolean is_cash_active;
    public long last_address_book_updated_date;
    public long last_replayed_snap_timestamp;
    public long last_updated;
    public boolean logged;
    public String mobile;
    public String mobile_verification_key;
    public int number_of_best_friends;
    public String qr_path;
    public int received;
    public List recents;
    public int score;
    public boolean searchable_by_phone_number;
    public List seen_tooltips;
    public int sent;
    public boolean should_call_to_verify_number;
    public boolean should_show_suggestion_prompt;
    public boolean should_text_to_verify_number;
    public int snap_p;
    public String snapchat_phone_number;
    public List snaps;
    public String story_privacy;
    public Map study_settings;
    public String suggestion_prompt_button_text;
    public long suggestion_prompt_duration_in_millis;
    public String suggestion_prompt_link;
    public String suggestion_prompt_text;
    public String third_party_tracking_app_id;
    public String third_party_tracking_base_url;
    public String username;
    public boolean video_filters_enabled;

    public UpdatesResponse()
    {
    }

    public UpdatesResponse(ServerResponse serverresponse)
    {
        logged = serverresponse.logged;
        username = serverresponse.username;
        auth_token = serverresponse.auth_token;
        email = serverresponse.email;
        mobile = serverresponse.mobile;
        mobile_verification_key = serverresponse.mobile_verification_key;
        enable_video_transcoding_android = serverresponse.enable_video_transcoding_android;
        enable_save_story_to_gallery = serverresponse.enable_save_story_to_gallery;
        video_filters_enabled = serverresponse.video_filters_enabled;
        birthday = serverresponse.birthday;
        snap_p = serverresponse.snap_p;
        story_privacy = serverresponse.story_privacy;
        sent = serverresponse.sent;
        received = serverresponse.received;
        score = serverresponse.score;
        snaps = serverresponse.snaps;
        friends = serverresponse.friends;
        added_friends = serverresponse.added_friends;
        bests = serverresponse.bests;
        recents = serverresponse.recents;
        last_updated = serverresponse.last_updated;
        added_friends_timestamp = serverresponse.added_friends_timestamp;
        current_timestamp = serverresponse.current_timestamp;
        last_replayed_snap_timestamp = serverresponse.last_replayed_snap_timestamp;
        snapchat_phone_number = serverresponse.snapchat_phone_number;
        searchable_by_phone_number = serverresponse.searchable_by_phone_number;
        should_call_to_verify_number = serverresponse.should_call_to_verify_phone_number;
        should_text_to_verify_number = serverresponse.should_text_to_verify_phone_number;
        feature_settings = serverresponse.feature_settings;
        number_of_best_friends = serverresponse.number_of_best_friends;
        last_address_book_updated_date = serverresponse.last_address_book_updated_date;
    }
}
