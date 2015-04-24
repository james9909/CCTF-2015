.class public Lcom/snapchat/android/camera/videocamera/recordingpreferences/TranscodingEnabledVideoRecordingPreferences;
.super Lcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferences;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/snapchat/android/camera/videocamera/recordingpreferences/VideoRecordingPreferences;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/CamcorderProfile;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    return v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, -0x1

    return-wide v0
.end method
