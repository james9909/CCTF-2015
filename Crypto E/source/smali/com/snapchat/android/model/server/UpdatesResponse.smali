.class public Lcom/snapchat/android/model/server/UpdatesResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public added_friends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/ServerFriend;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public added_friends_timestamp:J

.field public allowed_to_use_cash:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public auth_token:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public bests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public birthday:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public cash_customer_id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public cash_provider:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public client_properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public current_timestamp:J

.field public device_token:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public enable_save_story_to_gallery:Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public enable_video_transcoding_android:Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public feature_settings:Lcom/snapchat/android/model/server/FeatureSettings;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public friends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/ServerFriend;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public is_cash_active:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public last_address_book_updated_date:J

.field public last_replayed_snap_timestamp:J

.field public last_updated:J

.field public logged:Z

.field public mobile:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public mobile_verification_key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public number_of_best_friends:I

.field public qr_path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public received:I

.field public recents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public score:I

.field public searchable_by_phone_number:Z

.field public seen_tooltips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public sent:I

.field public should_call_to_verify_number:Z

.field public should_show_suggestion_prompt:Z

.field public should_text_to_verify_number:Z

.field public snap_p:I

.field public snapchat_phone_number:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public snaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/data/gson/GenericSnap;",
            ">;"
        }
    .end annotation
.end field

.field public story_privacy:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public study_settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public suggestion_prompt_button_text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public suggestion_prompt_duration_in_millis:J
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public suggestion_prompt_link:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public suggestion_prompt_text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public third_party_tracking_app_id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public third_party_tracking_base_url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public username:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public video_filters_enabled:Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->logged:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->logged:Z

    .line 101
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->username:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->auth_token:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->auth_token:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->email:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->mobile:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->mobile:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->mobile_verification_key:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->mobile_verification_key:Ljava/lang/String;

    .line 106
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->enable_video_transcoding_android:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->enable_video_transcoding_android:Z

    .line 107
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->enable_save_story_to_gallery:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->enable_save_story_to_gallery:Z

    .line 108
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->video_filters_enabled:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->video_filters_enabled:Z

    .line 109
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->birthday:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->birthday:Ljava/lang/String;

    .line 110
    iget v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->snap_p:I

    iput v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->snap_p:I

    .line 111
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->story_privacy:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->story_privacy:Ljava/lang/String;

    .line 112
    iget v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->sent:I

    iput v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->sent:I

    .line 113
    iget v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->received:I

    iput v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->received:I

    .line 114
    iget v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->score:I

    iput v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->score:I

    .line 115
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->snaps:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->snaps:Ljava/util/List;

    .line 116
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->friends:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->friends:Ljava/util/List;

    .line 117
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->added_friends:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->added_friends:Ljava/util/List;

    .line 118
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->bests:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->bests:Ljava/util/List;

    .line 119
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->recents:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->recents:Ljava/util/List;

    .line 120
    iget-wide v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->last_updated:J

    iput-wide v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->last_updated:J

    .line 121
    iget-wide v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->added_friends_timestamp:J

    iput-wide v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->added_friends_timestamp:J

    .line 122
    iget-wide v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->current_timestamp:J

    iput-wide v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->current_timestamp:J

    .line 123
    iget-wide v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->last_replayed_snap_timestamp:J

    iput-wide v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->last_replayed_snap_timestamp:J

    .line 124
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->snapchat_phone_number:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->snapchat_phone_number:Ljava/lang/String;

    .line 125
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->searchable_by_phone_number:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->searchable_by_phone_number:Z

    .line 126
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->should_call_to_verify_phone_number:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->should_call_to_verify_number:Z

    .line 127
    iget-boolean v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->should_text_to_verify_phone_number:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->should_text_to_verify_number:Z

    .line 128
    iget-object v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->feature_settings:Lcom/snapchat/android/model/server/FeatureSettings;

    iput-object v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->feature_settings:Lcom/snapchat/android/model/server/FeatureSettings;

    .line 129
    iget v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->number_of_best_friends:I

    iput v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->number_of_best_friends:I

    .line 130
    iget-wide v0, p1, Lcom/snapchat/android/model/server/ServerResponse;->last_address_book_updated_date:J

    iput-wide v0, p0, Lcom/snapchat/android/model/server/UpdatesResponse;->last_address_book_updated_date:J

    .line 131
    return-void
.end method
