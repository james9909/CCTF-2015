// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.database;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.snapchat.android.SnapchatApplication;

public final class SharedPreferenceKey extends Enum
{

    public static final SharedPreferenceKey A;
    public static final SharedPreferenceKey B;
    public static final SharedPreferenceKey C;
    public static final SharedPreferenceKey D;
    public static final SharedPreferenceKey E;
    public static final SharedPreferenceKey F;
    public static final SharedPreferenceKey G;
    public static final SharedPreferenceKey H;
    public static final SharedPreferenceKey I;
    public static final SharedPreferenceKey J;
    public static final SharedPreferenceKey K;
    public static final SharedPreferenceKey L;
    public static final SharedPreferenceKey M;
    public static final SharedPreferenceKey N;
    public static final SharedPreferenceKey O;
    public static final SharedPreferenceKey P;
    public static final SharedPreferenceKey Q;
    public static final SharedPreferenceKey R;
    public static final SharedPreferenceKey S;
    public static final SharedPreferenceKey T;
    public static final SharedPreferenceKey U;
    public static final SharedPreferenceKey V;
    public static final SharedPreferenceKey W;
    public static final SharedPreferenceKey X;
    public static final SharedPreferenceKey Y;
    public static final SharedPreferenceKey Z;
    public static final SharedPreferenceKey a;
    public static final SharedPreferenceKey aA;
    public static final SharedPreferenceKey aB;
    public static final SharedPreferenceKey aC;
    public static final SharedPreferenceKey aD;
    public static final SharedPreferenceKey aE;
    public static final SharedPreferenceKey aF;
    public static final SharedPreferenceKey aG;
    public static final SharedPreferenceKey aH;
    public static final SharedPreferenceKey aI;
    public static final SharedPreferenceKey aJ;
    public static final SharedPreferenceKey aK;
    public static final SharedPreferenceKey aL;
    public static final SharedPreferenceKey aM;
    public static final SharedPreferenceKey aN;
    public static final SharedPreferenceKey aO;
    public static final SharedPreferenceKey aP;
    public static final SharedPreferenceKey aQ;
    public static final SharedPreferenceKey aR;
    public static final SharedPreferenceKey aS;
    public static final SharedPreferenceKey aT;
    public static final SharedPreferenceKey aU;
    public static final SharedPreferenceKey aV;
    public static final SharedPreferenceKey aW;
    public static final SharedPreferenceKey aX;
    public static final SharedPreferenceKey aY;
    public static final SharedPreferenceKey aZ;
    public static final SharedPreferenceKey aa;
    public static final SharedPreferenceKey ab;
    public static final SharedPreferenceKey ac;
    public static final SharedPreferenceKey ad;
    public static final SharedPreferenceKey ae;
    public static final SharedPreferenceKey af;
    public static final SharedPreferenceKey ag;
    public static final SharedPreferenceKey ah;
    public static final SharedPreferenceKey ai;
    public static final SharedPreferenceKey aj;
    public static final SharedPreferenceKey ak;
    public static final SharedPreferenceKey al;
    public static final SharedPreferenceKey am;
    public static final SharedPreferenceKey an;
    public static final SharedPreferenceKey ao;
    public static final SharedPreferenceKey ap;
    public static final SharedPreferenceKey aq;
    public static final SharedPreferenceKey ar;
    public static final SharedPreferenceKey as;
    public static final SharedPreferenceKey at;
    public static final SharedPreferenceKey au;
    public static final SharedPreferenceKey av;
    public static final SharedPreferenceKey aw;
    public static final SharedPreferenceKey ax;
    public static final SharedPreferenceKey ay;
    public static final SharedPreferenceKey az;
    public static final SharedPreferenceKey b;
    public static final SharedPreferenceKey ba;
    public static final SharedPreferenceKey bb;
    public static final SharedPreferenceKey bc;
    public static final SharedPreferenceKey bd;
    public static final SharedPreferenceKey be;
    public static final SharedPreferenceKey bf;
    public static final SharedPreferenceKey bg;
    public static final SharedPreferenceKey bh;
    public static final SharedPreferenceKey bi;
    public static final SharedPreferenceKey bj;
    public static final SharedPreferenceKey bk;
    public static final SharedPreferenceKey bl;
    public static final SharedPreferenceKey bm;
    public static final SharedPreferenceKey bn;
    public static final SharedPreferenceKey bo;
    public static final SharedPreferenceKey bp;
    public static final SharedPreferenceKey bq;
    public static final SharedPreferenceKey br;
    public static final SharedPreferenceKey bs;
    public static final SharedPreferenceKey bt;
    public static final SharedPreferenceKey bu;
    public static final SharedPreferenceKey bv;
    public static final SharedPreferenceKey bw;
    private static final SharedPreferenceKey bz[];
    public static final SharedPreferenceKey c;
    public static final SharedPreferenceKey d;
    public static final SharedPreferenceKey e;
    public static final SharedPreferenceKey f;
    public static final SharedPreferenceKey g;
    public static final SharedPreferenceKey h;
    public static final SharedPreferenceKey i;
    public static final SharedPreferenceKey j;
    public static final SharedPreferenceKey k;
    public static final SharedPreferenceKey l;
    public static final SharedPreferenceKey m;
    public static final SharedPreferenceKey n;
    public static final SharedPreferenceKey o;
    public static final SharedPreferenceKey p;
    public static final SharedPreferenceKey q;
    public static final SharedPreferenceKey r;
    public static final SharedPreferenceKey s;
    public static final SharedPreferenceKey t;
    public static final SharedPreferenceKey u;
    public static final SharedPreferenceKey v;
    public static final SharedPreferenceKey w;
    public static final SharedPreferenceKey x;
    public static final SharedPreferenceKey y;
    public static final SharedPreferenceKey z;
    private String bx;
    private boolean by;

    private SharedPreferenceKey(String s1, int i1, String s2, boolean flag)
    {
        super(s1, i1);
        bx = s2;
        by = flag;
    }

    public static void a(SharedPreferences sharedpreferences)
    {
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        SharedPreferenceKey asharedpreferencekey[] = values();
        int i1 = asharedpreferencekey.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            editor.remove(asharedpreferencekey[j1].bx);
        }

        editor.apply();
    }

    public static void b()
    {
        android.content.SharedPreferences.Editor editor = PreferenceManager.getDefaultSharedPreferences(SnapchatApplication.e()).edit();
        SharedPreferenceKey asharedpreferencekey[] = values();
        int i1 = asharedpreferencekey.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            SharedPreferenceKey sharedpreferencekey = asharedpreferencekey[j1];
            if (!sharedpreferencekey.by)
            {
                editor.remove(sharedpreferencekey.bx);
            }
        }

        editor.apply();
    }

    public static SharedPreferenceKey valueOf(String s1)
    {
        return (SharedPreferenceKey)Enum.valueOf(com/snapchat/android/database/SharedPreferenceKey, s1);
    }

    public static SharedPreferenceKey[] values()
    {
        return (SharedPreferenceKey[])bz.clone();
    }

    public String a()
    {
        return bx;
    }

    static 
    {
        a = new SharedPreferenceKey("LAST_SUCCESSFUL_LOGIN_USERNAME", 0, "lastSuccessfulLoginUsername", true);
        b = new SharedPreferenceKey("QUICKSNAP_ONBOARDING_REPEATS", 1, "quickSnapOnboardingRepeats", true);
        c = new SharedPreferenceKey("INFORMATION_SAVED_IN_DATABASE", 2, "informationSavedInDatabase", false);
        d = new SharedPreferenceKey("USERNAME", 3, "username", false);
        e = new SharedPreferenceKey("DISPLAY_NAME", 4, "display_name", false);
        f = new SharedPreferenceKey("EMAIL", 5, "email", false);
        g = new SharedPreferenceKey("PHONE_NUMBER", 6, "phone_number", false);
        h = new SharedPreferenceKey("BIRTHDAY_THIS_YEAR_IN_MILLIS", 7, "birthday_this_year_in_millis", false);
        i = new SharedPreferenceKey("AUTH_TOKEN", 8, "auth_token", false);
        j = new SharedPreferenceKey("NUM_SNAPS_RECEIVED", 9, "num_snaps_received", false);
        k = new SharedPreferenceKey("NUM_SNAPS_SENT", 10, "num_snaps_sent", false);
        l = new SharedPreferenceKey("SCORE", 11, "score", false);
        m = new SharedPreferenceKey("GCM_REGISTRATION_ID", 12, "gcm_registration_id", false);
        n = new SharedPreferenceKey("IS_LOGGED_IN", 13, "is_logged_in", false);
        o = new SharedPreferenceKey("IS_SNAPKIDZ_ACCOUNT", 14, "is_snapkidz_account", false);
        p = new SharedPreferenceKey("MOBILE_VERIFICATION_KEY", 15, "mobile_verification_key", false);
        q = new SharedPreferenceKey("MOBILE_VERIFICATION_SEND_TO_NUMBER", 16, "mobile_verification_send_to_number", false);
        r = new SharedPreferenceKey("SNAP_PRIVACY_SETTING", 17, "snap_privacy_setting", false);
        s = new SharedPreferenceKey("STORY_PRIVACY_SETTING", 18, "story_privacy_setting", false);
        t = new SharedPreferenceKey("LAST_SEEN_ADDED_ME_TIMESTAMP", 19, "last_seen_added_me_timestamp", false);
        u = new SharedPreferenceKey("IS_SEARCHABLE_BY_PHONE_NUMBER", 20, "is_searchable_by_phone_number", false);
        v = new SharedPreferenceKey("HAS_GIVEN_ACCESS_TO_CONTACTS", 21, "has_given_access_to_contacts", false);
        w = new SharedPreferenceKey("VIDEO_CHAT_ONBOARDING_REPEATS", 22, "videoChatOnboardingRepeats", true);
        x = new SharedPreferenceKey("BOUNCE_TEAM_SNAPCHAT_CONVERSATION_ONBOARDING", 23, "bounceTeamSnapchatConversationOnboarding", true);
        y = new SharedPreferenceKey("CAMERA_NUMBER_PREFERENCE", 24, "snapchatCameraPreference", false);
        z = new SharedPreferenceKey("ALLOWED_GPS", 25, "allowedGps", false);
        A = new SharedPreferenceKey("SYNC_ON_FEED_OPEN", 26, "sync_on_feed_open", false);
        B = new SharedPreferenceKey("STUDY_SETTINGS", 27, "study_settings", false);
        C = new SharedPreferenceKey("ANDROID_DISPLAY_NAME", 28, "android_display_name", false);
        D = new SharedPreferenceKey("TAP_TO_SKIP_COUNT", 29, "tap_that_count", true);
        E = new SharedPreferenceKey("NO_TAP_TO_SKIP_COUNT", 30, "didnt_tap_that_count", true);
        F = new SharedPreferenceKey("TAP_TO_SKIP_NEW_USER", 31, "tap_that_new_user", true);
        G = new SharedPreferenceKey("IS_REGISTERING", 32, "is_registering", false);
        H = new SharedPreferenceKey("USER_JSON", 33, "user_json", false);
        I = new SharedPreferenceKey("RESPONSE_CHECKSUM_LOQ_CONVERSATIONS", 34, "checksum_loq_conversations", false);
        J = new SharedPreferenceKey("RESPONSE_CHECKSUM_LOQ_ALL_UPDATES", 35, "checksums_dict_loq_all_updates", false);
        K = new SharedPreferenceKey("SHOULD_SHOW_CLEAR_CONVERSATION_DIALOG", 36, "should_show_clear_conversation_dialog", false);
        L = new SharedPreferenceKey("HAS_SEEN_TAKE_SNAP_ONBOARDING_MESSAGE", 37, "has_seen_snap_onboarding_message", false);
        M = new SharedPreferenceKey("HAS_SEEN_CAPTION_ONBOARDING_MESSAGE", 38, "has_seen_caption_onboarding_message", false);
        N = new SharedPreferenceKey("HAS_SEEN_SWIPE_FILTERS_ONBOARDING_MESSAGE", 39, "has_seen_swipe_filters_onboarding_message", false);
        O = new SharedPreferenceKey("HAS_POSTED_STORY_FROM_SEND_TO", 40, "has_posted_story_from_send_to", false);
        P = new SharedPreferenceKey("SHOULD_SHOW_POST_STORY_DIALOG", 41, "should_show_post_story_dialog", false);
        Q = new SharedPreferenceKey("HAS_SEEN_PROMPT_FOR_LOCATION_IN_CAMERA", 42, "has_seen_prompt_for_location_in_camera", false);
        R = new SharedPreferenceKey("LAST_PING_RESULTS", 43, "last_ping_results", true);
        S = new SharedPreferenceKey("PROXY_ENDPOINT", 44, "proxy_endpoint", true);
        T = new SharedPreferenceKey("ENDPOINT_SET", 45, "endpoint_set", true);
        U = new SharedPreferenceKey("FILTERS_ENABLED", 46, "smart_filters_setting", false);
        V = new SharedPreferenceKey("REPLAY_SETTING", 47, "replay_setting", false);
        W = new SharedPreferenceKey("FRONT_FACING_FLASH_SETTING", 48, "front_facing_flash_setting", false);
        X = new SharedPreferenceKey("NUM_BEST_FRIENDS", 49, "num_best_friends", false);
        Y = new SharedPreferenceKey("LAST_ADDRESS_BOOK_UPDATED_TIMESTAMP", 50, "last_address_book_updated_timestamp", false);
        Z = new SharedPreferenceKey("HAS_PENDING_NOTIFICATIONS", 51, "has_pending_notifications", false);
        aa = new SharedPreferenceKey("LAST_EXTERNAL_IMAGE_TAKEN_TIMESTAMP", 52, "last_external_image_taken_timestamp", false);
        ab = new SharedPreferenceKey("KEYBOARD_HEIGHT_PORTRAIT", 53, "caption_view_keyboard_height_portrait", true);
        ac = new SharedPreferenceKey("KEYBOARD_HEIGHT_LANDSCAPE", 54, "caption_view_keyboard_height_landscape", true);
        ad = new SharedPreferenceKey("IS_TEMPERATURE_SCALE_IMPERIAL", 55, "isTemperatureScaleImperial", true);
        ae = new SharedPreferenceKey("SPEED_USE_MPH", 56, "speedUseMph", true);
        af = new SharedPreferenceKey("CONVERSATIONS_ITER_TOKEN", 57, "conversationsIterToken", false);
        ag = new SharedPreferenceKey("PENDING_CLEAR_CHAT_CONVERSATION_ID", 58, "pendingClearChatConversationId", false);
        ah = new SharedPreferenceKey("TIMES_DISPLAYED_HERE_TOOLTIP", 59, "timesDisplayedHereTooltip_2", true);
        ai = new SharedPreferenceKey("SNAP_PREFERRED_TIME", 60, "snapchatTimerPreference", false);
        aj = new SharedPreferenceKey("SNAP_CAPTURE_ROTATION", 61, "captureRotation", false);
        ak = new SharedPreferenceKey("DEVELOPER_OPTIONS_UPGRADE_PROMPT_ENABLED", 62, "developerOptionsUpgradePromptEnabled", true);
        al = new SharedPreferenceKey("DEVELOPER_OPTIONS_LOCATION_ACCURACY_TOAST", 63, "developerOptionsLocationAccuracyToast", true);
        am = new SharedPreferenceKey("DEVELOPER_OPTIONS_SNI_ENABLED", 64, "developerOptionsSniEnabled", true);
        an = new SharedPreferenceKey("DEVELOPER_OPTIONS_TCP_DISABLED", 65, "developerOptionsTcpDisabled", true);
        ao = new SharedPreferenceKey("DEVELOPER_OPTIONS_TCP_NOTIF_ENABLED", 66, "developerOptionsTcpNotifEnabled", true);
        ap = new SharedPreferenceKey("DEVELOPER_OPTIONS_CUSTOM_ENDPOINT", 67, "developerOptionsCustomEndpoint", true);
        aq = new SharedPreferenceKey("DEVELOPER_OPTIONS_CUSTOM_DISCOVER_ENDPOINT", 68, "developerOptionsCustomDiscoverEndpoint", true);
        ar = new SharedPreferenceKey("DEVELOPER_OPTIONS_SQUARE_SANDBOX", 69, "developerOptionsSquareSandbox", true);
        as = new SharedPreferenceKey("DEVELOPER_OPTIONS_RELEASE_DELAY_TIMER", 70, "developerOptionsReleaseDelayTimer", true);
        at = new SharedPreferenceKey("DEVELOPER_OPTIONS_SHOULD_SHOW_DEVICE_TOKEN_TOASTS", 71, "developerOptionsShouldShowDeviceTokenToasts", true);
        au = new SharedPreferenceKey("REGISTRATION_TESTING_ENDPOINT", 72, "RegistrationTestingEndpoint", true);
        av = new SharedPreferenceKey("LAST_START_TRACKING_ANR", 73, "lastTrackingAnr", true);
        aw = new SharedPreferenceKey("NOTIFICATIONS_ENABLED", 74, "notificationsEnabled", false);
        ax = new SharedPreferenceKey("LEGACY_SOUND_VIBRATION_ENABLED", 75, "notificationSoundVibration", false);
        ay = new SharedPreferenceKey("VIBRATION_ENABLED", 76, "notificationVibration", false);
        az = new SharedPreferenceKey("SOUND_ENABLED", 77, "notificationSound", false);
        aA = new SharedPreferenceKey("LED_ENABLED", 78, "notificationLed", false);
        aB = new SharedPreferenceKey("WAKE_SCREEN_ENABLED", 79, "notificationWakeScreen", false);
        aC = new SharedPreferenceKey("CASH_SERVICE_ACTIVE", 80, "cash_service_active", false);
        aD = new SharedPreferenceKey("CASH_PROVIDER_NAME", 81, "cash_provider_name", false);
        aE = new SharedPreferenceKey("CASH_CUSTOMER_ID", 82, "cash_customer_id", false);
        aF = new SharedPreferenceKey("CASH_CUSTOMER_ALLOWED", 83, "cash_customer_allowed", false);
        aG = new SharedPreferenceKey("CASH_CARD_LINKED", 84, "cash_card_linked", false);
        aH = new SharedPreferenceKey("CASH_CARD_SUFFIX", 85, "cash_card_suffix", false);
        aI = new SharedPreferenceKey("CASH_CARD_BRAND", 86, "cash_card_brand", false);
        aJ = new SharedPreferenceKey("CASH_HAS_TRANSACTIONS", 87, "cash_has_transactions", false);
        aK = new SharedPreferenceKey("CASH_OUTDATED_PROFILE", 88, "cash_outdated_profile", false);
        aL = new SharedPreferenceKey("CASH_SEND_CONFIRMATION", 89, "cash_send_confirmation", false);
        aM = new SharedPreferenceKey("CASH_SWIPE_SEND_CONFIRMATION", 90, "cash_swipe_send_confirmation", false);
        aN = new SharedPreferenceKey("SECURITY_CODE_SETTING", 91, "security_code_setting", false);
        aO = new SharedPreferenceKey("IS_ACCOUNT_LOCKED", 92, "isAccountLocked", false);
        aP = new SharedPreferenceKey("HAS_ACCEPTED_SQUARE_TOS", 93, "square_tos_accepted", false);
        aQ = new SharedPreferenceKey("HAS_ACCEPTED_SNAPCASH_TOS", 94, "snapcash_tos_accepted", false);
        aR = new SharedPreferenceKey("LAST_CARD_DIGITS", 95, "last_card_digits", false);
        aS = new SharedPreferenceKey("CASH_TOOLTIP_DISPLAY_COUNT", 96, "cash_tooltip_display_count", true);
        aT = new SharedPreferenceKey("TRANSCODING_HISTORY", 97, "transcodingHistory", true);
        aU = new SharedPreferenceKey("TRANSCODING_STATE", 98, "transcodingState", true);
        aV = new SharedPreferenceKey("VIDEO_FILTERS", 99, "video_filters", false);
        aW = new SharedPreferenceKey("VIDEO_ENCODING_RESOLUTIONS", 100, "video_encoding_resolutions", true);
        aX = new SharedPreferenceKey("DEMOGRAPHICS_TRACKING_SENT_FLAG", 101, "demographics_tracking_sent_flag", false);
        aY = new SharedPreferenceKey("SAVE_STORY_TO_GALLERY_CONFIRMATION", 102, "save_story_to_gallery_confirmation", false);
        aZ = new SharedPreferenceKey("SAVE_STORY_TO_GALLERY_ENABLED", 103, "save_story_to_gallery_enabled", false);
        ba = new SharedPreferenceKey("YEAR_CLASS", 104, "year_class", true);
        bb = new SharedPreferenceKey("CURRENT_EDITION_IDS", 105, "current_edition_ids", false);
        bc = new SharedPreferenceKey("DISCOVER_TIME_LAST_SEEN", 106, "discover_time_last_seen", false);
        bd = new SharedPreferenceKey("SEEN_OVERLAY_USERS", 107, "seen_overlay_users", true);
        be = new SharedPreferenceKey("DISCOVER_RESOURCE_PARAM_NAME", 108, "discover_resource_param_name", true);
        bf = new SharedPreferenceKey("DISCOVER_RESOURCE_PARAM_VALUE", 109, "discover_resource_param_value", true);
        bg = new SharedPreferenceKey("HAS_SEEN_DISCOVER_PAGE", 110, "has_seen_discover_page", false);
        bh = new SharedPreferenceKey("HAS_SEEN_PROFILE_PAGE_ONBOARDING_MESSAGE", 111, "has_seen_profile_page_onboarding_message", false);
        bi = new SharedPreferenceKey("HAS_SEEN_NEW_FRIEND_REQUEST_ONBOARDING_MESSAGE", 112, "has_seen_new_friend_request_onboarding_message", false);
        bj = new SharedPreferenceKey("SNAP_TAG_IMAGE_ID", 113, "snap_tag_image", false);
        bk = new SharedPreferenceKey("LAST_IDENTITY_ACTION_TIMESTAMP", 114, "last_identity_action_timestamp", false);
        bl = new SharedPreferenceKey("IDENTITY_RED_GEAR_IS_ON", 115, "identity_red_gear_is_on", false);
        bm = new SharedPreferenceKey("IDENTITY_IS_EMAIL_VERIFIED", 116, "identity_is_email_verified", false);
        bn = new SharedPreferenceKey("IDENTITY_IS_PHONE_PASSWORD_CONFIRMED", 117, "identity_is_phone_password_confirmed", false);
        bo = new SharedPreferenceKey("IDENTITY_PENDING_EMAIL", 118, "identity_pending_email", false);
        bp = new SharedPreferenceKey("SHOULD_SHOW_SUGGESTION_PROMPT", 119, "should_show_suggestion_prompt", false);
        bq = new SharedPreferenceKey("SUGGESTION_PROMPT_LINK", 120, "suggestion_prompt_link", false);
        br = new SharedPreferenceKey("SUGGESTION_PROMPT_TEXT", 121, "suggestion_prompt_text", false);
        bs = new SharedPreferenceKey("SUGGESTION_PROMPT_BUTTON_TEXT", 122, "suggestion_prompt_button_text", false);
        bt = new SharedPreferenceKey("SUGGESTION_PROMPT_LAST_DISMISSED_TIMESTAMP", 123, "suggestion_prompt_last_dismissed_timestamp", false);
        bu = new SharedPreferenceKey("SUGGESTION_PROMPT_DURATION_IN_MILLIS", 124, "suggestion_prompt_duration_in_millis", false);
        bv = new SharedPreferenceKey("PHONE_VERIFICATION_SMS_FORMAT", 125, "phone_verification_sms_format", false);
        bw = new SharedPreferenceKey("UNIQUE_DEVICE_ID", 126, "device_id", true);
        SharedPreferenceKey asharedpreferencekey[] = new SharedPreferenceKey[127];
        asharedpreferencekey[0] = a;
        asharedpreferencekey[1] = b;
        asharedpreferencekey[2] = c;
        asharedpreferencekey[3] = d;
        asharedpreferencekey[4] = e;
        asharedpreferencekey[5] = f;
        asharedpreferencekey[6] = g;
        asharedpreferencekey[7] = h;
        asharedpreferencekey[8] = i;
        asharedpreferencekey[9] = j;
        asharedpreferencekey[10] = k;
        asharedpreferencekey[11] = l;
        asharedpreferencekey[12] = m;
        asharedpreferencekey[13] = n;
        asharedpreferencekey[14] = o;
        asharedpreferencekey[15] = p;
        asharedpreferencekey[16] = q;
        asharedpreferencekey[17] = r;
        asharedpreferencekey[18] = s;
        asharedpreferencekey[19] = t;
        asharedpreferencekey[20] = u;
        asharedpreferencekey[21] = v;
        asharedpreferencekey[22] = w;
        asharedpreferencekey[23] = x;
        asharedpreferencekey[24] = y;
        asharedpreferencekey[25] = z;
        asharedpreferencekey[26] = A;
        asharedpreferencekey[27] = B;
        asharedpreferencekey[28] = C;
        asharedpreferencekey[29] = D;
        asharedpreferencekey[30] = E;
        asharedpreferencekey[31] = F;
        asharedpreferencekey[32] = G;
        asharedpreferencekey[33] = H;
        asharedpreferencekey[34] = I;
        asharedpreferencekey[35] = J;
        asharedpreferencekey[36] = K;
        asharedpreferencekey[37] = L;
        asharedpreferencekey[38] = M;
        asharedpreferencekey[39] = N;
        asharedpreferencekey[40] = O;
        asharedpreferencekey[41] = P;
        asharedpreferencekey[42] = Q;
        asharedpreferencekey[43] = R;
        asharedpreferencekey[44] = S;
        asharedpreferencekey[45] = T;
        asharedpreferencekey[46] = U;
        asharedpreferencekey[47] = V;
        asharedpreferencekey[48] = W;
        asharedpreferencekey[49] = X;
        asharedpreferencekey[50] = Y;
        asharedpreferencekey[51] = Z;
        asharedpreferencekey[52] = aa;
        asharedpreferencekey[53] = ab;
        asharedpreferencekey[54] = ac;
        asharedpreferencekey[55] = ad;
        asharedpreferencekey[56] = ae;
        asharedpreferencekey[57] = af;
        asharedpreferencekey[58] = ag;
        asharedpreferencekey[59] = ah;
        asharedpreferencekey[60] = ai;
        asharedpreferencekey[61] = aj;
        asharedpreferencekey[62] = ak;
        asharedpreferencekey[63] = al;
        asharedpreferencekey[64] = am;
        asharedpreferencekey[65] = an;
        asharedpreferencekey[66] = ao;
        asharedpreferencekey[67] = ap;
        asharedpreferencekey[68] = aq;
        asharedpreferencekey[69] = ar;
        asharedpreferencekey[70] = as;
        asharedpreferencekey[71] = at;
        asharedpreferencekey[72] = au;
        asharedpreferencekey[73] = av;
        asharedpreferencekey[74] = aw;
        asharedpreferencekey[75] = ax;
        asharedpreferencekey[76] = ay;
        asharedpreferencekey[77] = az;
        asharedpreferencekey[78] = aA;
        asharedpreferencekey[79] = aB;
        asharedpreferencekey[80] = aC;
        asharedpreferencekey[81] = aD;
        asharedpreferencekey[82] = aE;
        asharedpreferencekey[83] = aF;
        asharedpreferencekey[84] = aG;
        asharedpreferencekey[85] = aH;
        asharedpreferencekey[86] = aI;
        asharedpreferencekey[87] = aJ;
        asharedpreferencekey[88] = aK;
        asharedpreferencekey[89] = aL;
        asharedpreferencekey[90] = aM;
        asharedpreferencekey[91] = aN;
        asharedpreferencekey[92] = aO;
        asharedpreferencekey[93] = aP;
        asharedpreferencekey[94] = aQ;
        asharedpreferencekey[95] = aR;
        asharedpreferencekey[96] = aS;
        asharedpreferencekey[97] = aT;
        asharedpreferencekey[98] = aU;
        asharedpreferencekey[99] = aV;
        asharedpreferencekey[100] = aW;
        asharedpreferencekey[101] = aX;
        asharedpreferencekey[102] = aY;
        asharedpreferencekey[103] = aZ;
        asharedpreferencekey[104] = ba;
        asharedpreferencekey[105] = bb;
        asharedpreferencekey[106] = bc;
        asharedpreferencekey[107] = bd;
        asharedpreferencekey[108] = be;
        asharedpreferencekey[109] = bf;
        asharedpreferencekey[110] = bg;
        asharedpreferencekey[111] = bh;
        asharedpreferencekey[112] = bi;
        asharedpreferencekey[113] = bj;
        asharedpreferencekey[114] = bk;
        asharedpreferencekey[115] = bl;
        asharedpreferencekey[116] = bm;
        asharedpreferencekey[117] = bn;
        asharedpreferencekey[118] = bo;
        asharedpreferencekey[119] = bp;
        asharedpreferencekey[120] = bq;
        asharedpreferencekey[121] = br;
        asharedpreferencekey[122] = bs;
        asharedpreferencekey[123] = bt;
        asharedpreferencekey[124] = bu;
        asharedpreferencekey[125] = bv;
        asharedpreferencekey[126] = bw;
        bz = asharedpreferencekey;
    }
}
