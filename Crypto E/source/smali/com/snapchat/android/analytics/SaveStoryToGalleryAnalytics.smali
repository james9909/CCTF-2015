.class public Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final sInstance:Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;->sInstance:Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;->sInstance:Lcom/snapchat/android/analytics/SaveStoryToGalleryAnalytics;

    return-object v0
.end method


# virtual methods
.method public a(IIJLcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;Lcom/snapchat/videotranscoder/task/Task$Status;Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;)V
    .locals 9
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 55
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v0, "SAVE_ENTIRE_STORY"

    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "success"

    sget-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->c:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    if-ne p5, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {p5}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "transcoding_status"

    invoke-virtual {p6}, Lcom/snapchat/videotranscoder/task/Task$Status;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "count"

    add-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "video_count"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "image_count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "save_story_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    .line 64
    if-eqz p7, :cond_2

    .line 65
    const-wide/16 v2, 0x0

    .line 66
    invoke-virtual/range {p7 .. p7}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->a()[Lcom/snapchat/videotranscoder/task/MediaSource;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 67
    invoke-virtual {v6}, Lcom/snapchat/videotranscoder/task/MediaSource;->a()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "media_duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 71
    invoke-virtual/range {p7 .. p7}, Lcom/snapchat/videotranscoder/task/TranscodingConfiguration;->c()Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/pipeline/EncoderConfiguration;->b()Landroid/media/MediaFormat;

    move-result-object v0

    .line 73
    const-string v2, "video_width"

    const-string v3, "width"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "video_height"

    const-string v4, "height"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "video_bitrate"

    const-string v4, "bitrate"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "video_framerate"

    const-string v4, "frame-rate"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 79
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 80
    return-void
.end method
