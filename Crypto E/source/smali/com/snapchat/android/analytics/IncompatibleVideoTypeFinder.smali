.class public Lcom/snapchat/android/analytics/IncompatibleVideoTypeFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/CamcorderProfile;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/CamcorderProfile;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget v1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    if-ne v1, v2, :cond_0

    .line 24
    sget-object v1, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;->a:Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    iget v1, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    if-ne v1, v2, :cond_1

    .line 28
    sget-object v1, Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;->b:Lcom/snapchat/android/analytics/handledexceptions/IncompatibleVideoRecordedException$IncompatibleVideoType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1
    return-object v0
.end method
