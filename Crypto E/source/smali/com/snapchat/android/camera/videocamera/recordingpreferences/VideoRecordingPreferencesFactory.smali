.class public Lcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferencesFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;)Lcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferences;
    .locals 1
    .parameter

    .prologue
    .line 11
    sget-object v0, Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;->e:Lcom/snapchat/android/camera/transcoding/TranscodingPreferencesWrapper$TranscodingEnabled;

    if-ne p0, v0, :cond_0

    .line 12
    new-instance v0, Lcom/snapchat/android/camera/videocamera/recordingpreferences/TranscodingEnabledVideoRecordingPreferences;

    invoke-direct {v0}, Lcom/snapchat/android/camera/videocamera/recordingpreferences/TranscodingEnabledVideoRecordingPreferences;-><init>()V

    .line 14
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/camera/videocamera/recordingpreferences/NonTranscodingVideoRecordingPreferences;

    invoke-direct {v0}, Lcom/snapchat/android/camera/videocamera/recordingpreferences/NonTranscodingVideoRecordingPreferences;-><init>()V

    goto :goto_0
.end method
