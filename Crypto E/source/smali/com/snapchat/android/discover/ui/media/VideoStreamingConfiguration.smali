.class public Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/snapchat/android/model/StudySettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->b:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/snapchat/android/model/StudySettings;->a()Lcom/snapchat/android/model/StudySettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;-><init>(Lcom/snapchat/android/model/StudySettings;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/StudySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->b:Lcom/snapchat/android/model/StudySettings;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;
    .locals 6

    .prologue
    .line 48
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->b:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "STREAMING"

    const-string v2, "STREAMING_MODE"

    sget-object v3, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v2, "VideoStreamingConfiguration"

    const-string v3, "Invalid streaming mode %s (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;->a:Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration$StreamingMode;

    goto :goto_0
.end method

.method public b()I
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->b:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "STREAMING"

    const-string v2, "MINIMUM_VERSION_SUPPORTING_HLS"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c()F
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoStreamingConfiguration;->b:Lcom/snapchat/android/model/StudySettings;

    const-string v1, "STREAMING"

    const-string v2, "BANDWIDTH_USAGE_FACTOR"

    const v3, 0x3f333333

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/model/StudySettings;->a(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method
