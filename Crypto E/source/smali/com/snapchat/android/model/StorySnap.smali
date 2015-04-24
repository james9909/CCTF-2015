.class public Lcom/snapchat/android/model/StorySnap;
.super Lcom/snapchat/android/model/ReceivedSnap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/StorySnap$StoryViewedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorySnap"


# instance fields
.field private mCaptionParameters:Lcom/snapchat/android/model/server/CaptionParameters;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "caption"
    .end annotation
.end field

.field private mClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_id"
    .end annotation
.end field

.field private mFailed:Z

.field private mHasBeenViewed:Z

.field private mIsShared:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_shared"
    .end annotation
.end field

.field private mMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_id"
    .end annotation
.end field

.field private mMediaUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media_url"
    .end annotation
.end field

.field private mSponsoredStoryMetadata:Lcom/snapchat/android/model/SponsoredStoryMetadata;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sponsored_story_metadata"
    .end annotation
.end field

.field private mStoryId:Ljava/lang/String;

.field private mStoryViewedState:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

.field private mThumbnailIv:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnail_iv"
    .end annotation
.end field

.field private mThumbnailUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnail_url"
    .end annotation
.end field

.field private mUsername:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field private mViewedTimeStamp:J

.field private mWas404ResponseReceived:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/snapchat/android/model/ReceivedSnap;-><init>()V

    .line 101
    sget-object v0, Lcom/snapchat/android/model/StorySnap$StoryViewedState;->UNVIEWED:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mStoryViewedState:Lcom/snapchat/android/model/StorySnap$StoryViewedState;

    .line 115
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/snapchat/android/model/StorySnap;-><init>()V

    .line 151
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionText:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    .line 154
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->L()Lcom/snapchat/android/model/Mediabryo$PostStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$PostStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mFailed:Z

    .line 155
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mZipped:Z

    .line 156
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->O()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/StorySnap;->mTimestamp:J

    .line 157
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->m()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/StorySnap;->mCanonicalDisplayTime:D

    .line 158
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;ILjava/lang/String;IIZZZZLjava/lang/String;ZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/snapchat/android/model/StorySnap;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/snapchat/android/model/StorySnap;->mMediaId:Ljava/lang/String;

    .line 127
    iput-wide p4, p0, Lcom/snapchat/android/model/StorySnap;->mTimestamp:J

    .line 128
    iput-wide p6, p0, Lcom/snapchat/android/model/StorySnap;->mViewedTimeStamp:J

    .line 129
    move/from16 v0, p8

    iput v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    .line 130
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaUrl:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mThumbnailUrl:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 133
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mUsername:Ljava/lang/String;

    .line 134
    move/from16 v0, p13

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/snapchat/android/model/StorySnap;->mCanonicalDisplayTime:D

    .line 135
    new-instance v2, Lcom/snapchat/android/model/server/CaptionParameters;

    move/from16 v0, p15

    int-to-long v4, v0

    move/from16 v0, p16

    int-to-double v6, v0

    move-object/from16 v3, p14

    invoke-direct/range {v2 .. v7}, Lcom/snapchat/android/model/server/CaptionParameters;-><init>(Ljava/lang/String;JD)V

    iput-object v2, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionParameters:Lcom/snapchat/android/model/server/CaptionParameters;

    .line 136
    move/from16 v0, p15

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionOrientation:J

    .line 137
    move/from16 v0, p16

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionPosition:D

    .line 138
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionText:Ljava/lang/String;

    .line 139
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mHasBeenViewed:Z

    .line 140
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mWasOpened:Z

    .line 141
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mIsScreenshotted:Z

    .line 142
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mFailed:Z

    .line 143
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mZipped:Z

    .line 144
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mFilterId:Ljava/lang/String;

    .line 145
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mWas404ResponseReceived:Z

    .line 146
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mIsShared:Z

    .line 147
    return-void
.end method

.method private a(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;)Lcom/snapchat/android/model/LazyMediaSource;
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 545
    iget v1, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    if-eqz v1, :cond_0

    .line 546
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to getLazyMediaSourceAsImageFileInCache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    invoke-virtual {p1, p2}, Lcom/snapchat/android/util/cache/Cache;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 560
    :cond_1
    :goto_0
    return-object v0

    .line 553
    :cond_2
    invoke-virtual {p1, p2}, Lcom/snapchat/android/util/cache/Cache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    if-eqz v1, :cond_1

    .line 558
    iget-wide v2, p0, Lcom/snapchat/android/model/StorySnap;->mCanonicalDisplayTime:D

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 559
    new-instance v0, Lcom/snapchat/android/model/LazyImageMediaSourceFromFile;

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/model/LazyImageMediaSourceFromFile;-><init>(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Lcom/snapchat/android/model/LazyMediaSource;
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 567
    iget v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to getLazyMediaSourceAsImageDataInCache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    invoke-virtual {p1, p2}, Lcom/snapchat/android/util/cache/Cache;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 572
    const/4 v0, 0x0

    .line 577
    :goto_0
    return-object v0

    .line 575
    :cond_1
    iget-wide v0, p0, Lcom/snapchat/android/model/StorySnap;->mCanonicalDisplayTime:D

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    double-to-long v4, v0

    .line 576
    new-instance v0, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/model/LazyImageMediaSourceFromData;-><init>(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;J)V

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;)Lcom/snapchat/android/model/LazyMediaSource;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 631
    iget v2, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 632
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to getLazyMediaSourceAsVideoFileInCache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_0
    invoke-virtual {p1, p2}, Lcom/snapchat/android/util/cache/Cache;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 646
    :goto_0
    return-object v0

    .line 639
    :cond_1
    invoke-virtual {p1, p2}, Lcom/snapchat/android/util/cache/Cache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 640
    if-nez v2, :cond_2

    move-object v0, v1

    .line 641
    goto :goto_0

    .line 644
    :cond_2
    iget v1, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    if-eq v1, v0, :cond_3

    .line 645
    :goto_1
    new-instance v1, Lcom/snapchat/android/model/LazyVideoMediaSourceFromFile;

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/model/LazyVideoMediaSourceFromFile;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 646
    goto :goto_0

    .line 644
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Lcom/snapchat/android/model/LazyMediaSource;
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 653
    iget v1, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 654
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to getLazyMediaSourceAsVideoDataInCache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_0
    invoke-virtual {p1, p2}, Lcom/snapchat/android/util/cache/Cache;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 658
    const/4 v0, 0x0

    .line 667
    :goto_0
    return-object v0

    .line 661
    :cond_1
    iget v1, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    if-eq v1, v0, :cond_2

    .line 662
    :goto_1
    if-eqz v0, :cond_3

    sget-object v5, Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;->b:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    .line 665
    :goto_2
    new-instance v0, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;

    iget-boolean v4, p0, Lcom/snapchat/android/model/StorySnap;->mZipped:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/model/LazyVideoMediaSourceFromData;-><init>(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;ZLcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;)V

    goto :goto_0

    .line 661
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 662
    :cond_3
    sget-object v5, Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;->a:Lcom/snapchat/videotranscoder/task/VideoMediaSource$AudioChannelSource;

    goto :goto_2
.end method

.method private e(Landroid/content/Context;)Lcom/snapchat/android/model/LazyMediaSource;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x0

    .line 587
    iget v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    if-eqz v0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to imageToLazyMediaSource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->g:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;)Lcom/snapchat/android/model/LazyMediaSource;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_2

    .line 620
    :cond_1
    return-object v0

    .line 600
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-unzippedbitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 601
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->g:Lcom/snapchat/android/util/cache/Cache;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;)Lcom/snapchat/android/model/LazyMediaSource;

    move-result-object v0

    .line 602
    if-nez v0, :cond_1

    .line 608
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->c:Lcom/snapchat/android/util/cache/Cache;

    iget-object v2, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Lcom/snapchat/android/model/LazyMediaSource;

    move-result-object v0

    .line 609
    if-nez v0, :cond_1

    .line 613
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->g:Lcom/snapchat/android/util/cache/Cache;

    iget-object v2, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Lcom/snapchat/android/model/LazyMediaSource;

    move-result-object v0

    .line 614
    if-nez v0, :cond_1

    .line 618
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->g:Lcom/snapchat/android/util/cache/Cache;

    invoke-direct {p0, v0, v1, v4}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Lcom/snapchat/android/model/LazyMediaSource;

    move-result-object v0

    .line 619
    if-nez v0, :cond_1

    .line 625
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image snap did not exist in cache!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f(Landroid/content/Context;)Lcom/snapchat/android/model/LazyMediaSource;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 676
    iget v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 677
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call to videoToLazyMediaSource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->k:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/StorySnap;->b(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;)Lcom/snapchat/android/model/LazyMediaSource;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_2

    .line 703
    :cond_1
    return-object v0

    .line 689
    :cond_2
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->k:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/StorySnap;->b(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;)Lcom/snapchat/android/model/LazyMediaSource;

    move-result-object v0

    .line 690
    if-nez v0, :cond_1

    .line 696
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->h:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/model/StorySnap;->b(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Lcom/snapchat/android/model/LazyMediaSource;

    move-result-object v0

    .line 697
    if-nez v0, :cond_1

    .line 701
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->d:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/model/StorySnap;->b(Lcom/snapchat/android/util/cache/Cache;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Lcom/snapchat/android/model/LazyMediaSource;

    move-result-object v0

    .line 702
    if-nez v0, :cond_1

    .line 708
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Video snap did not exist in cache!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public B()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Lcom/snapchat/android/model/ReceivedSnap;->B()V

    .line 213
    invoke-static {p0}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/StorySnap;)V

    .line 214
    return-void
.end method

.method public F()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mHasBeenViewed:Z

    return v0
.end method

.method public L()J
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/snapchat/android/model/StorySnap;->mViewedTimeStamp:J

    return-wide v0
.end method

.method public declared-synchronized R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;
    .locals 4

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaIv:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 314
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-direct {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>()V

    .line 315
    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mMediaKey:Ljava/lang/String;

    .line 316
    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mMediaIv:Ljava/lang/String;

    .line 317
    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mThumbnailIv:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :goto_0
    monitor-exit p0

    return-object v0

    .line 319
    :cond_1
    :try_start_1
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mMediaKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/model/StorySnap;->mMediaIv:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/model/StorySnap;->mThumbnailIv:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected T()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 356
    iget-object v2, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    .line 359
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->h:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 361
    if-nez v1, :cond_2

    .line 362
    iget-object v2, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    .line 363
    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->d:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 364
    if-nez v1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-object v0

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b([B)[B

    move-result-object v1

    .line 370
    :cond_2
    if-eqz v1, :cond_0

    .line 375
    :try_start_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mZipped:Z

    if-eqz v0, :cond_3

    .line 376
    invoke-virtual {p0, v2, v1}, Lcom/snapchat/android/model/StorySnap;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_1
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->k:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/cache/Cache;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 378
    :cond_3
    :try_start_1
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->k:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V
    :try_end_1
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    const-string v0, "StorySnap"

    const-string v1, "External storage unavailable."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public U()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 406
    iget-boolean v2, p0, Lcom/snapchat/android/model/StorySnap;->mWas404ResponseReceived:Z

    if-eqz v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return v1

    .line 410
    :cond_1
    sget-object v2, Lcom/snapchat/android/util/cache/Caches;->g:Lcom/snapchat/android/util/cache/Cache;

    iget-object v3, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/cache/Cache;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/snapchat/android/util/cache/Caches;->h:Lcom/snapchat/android/util/cache/Cache;

    iget-object v3, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/cache/Cache;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    iget-object v2, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 415
    sget-object v2, Lcom/snapchat/android/util/cache/Caches;->c:Lcom/snapchat/android/util/cache/Cache;

    iget-object v3, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/cache/Cache;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/snapchat/android/util/cache/Caches;->d:Lcom/snapchat/android/util/cache/Cache;

    iget-object v3, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/cache/Cache;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_0

    :cond_4
    move v1, v0

    .line 418
    goto :goto_0
.end method

.method protected a(I)I
    .locals 1
    .parameter

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I
    .locals 4
    .parameter

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 476
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 478
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 234
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->g:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Lcom/snapchat/android/util/cache/Cache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/EncryptionAlgorithm;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 237
    if-nez v0, :cond_0

    .line 238
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->g:Lcom/snapchat/android/util/cache/Cache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-unzippedbitmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v3}, Lcom/snapchat/android/util/cache/Cache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/EncryptionAlgorithm;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    :cond_0
    if-nez v0, :cond_1

    .line 243
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->c:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/snapchat/android/util/cache/Cache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/EncryptionAlgorithm;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 246
    :cond_1
    return-object v0
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 422
    iput-wide p1, p0, Lcom/snapchat/android/model/StorySnap;->mTimestamp:J

    .line 423
    return-void
.end method

.method public a(Lcom/snapchat/android/model/SponsoredStoryMetadata;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnap;->mSponsoredStoryMetadata:Lcom/snapchat/android/model/SponsoredStoryMetadata;

    .line 79
    return-void
.end method

.method public declared-synchronized a(Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)V
    .locals 1
    .parameter

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaKey:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaIv:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mThumbnailIv:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    .line 282
    return-void
.end method

.method protected a([B)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaIv:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaIv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 395
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->c:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->R()Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([B)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->g:Lcom/snapchat/android/util/cache/Cache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-unzippedbitmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public aA()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/network/EndpointManager;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mThumbnailUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 335
    new-instance v1, Ljava/net/URL;

    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/util/network/EndpointManager;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/snapchat/android/model/StorySnap;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mThumbnailUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public aB()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public aC()Z
    .locals 4

    .prologue
    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/model/StorySnap;->mTimestamp:J

    sub-long/2addr v0, v2

    .line 427
    const-wide/32 v2, 0x5265c00

    .line 428
    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aD()Lcom/snapchat/android/model/server/CaptionParameters;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionParameters:Lcom/snapchat/android/model/server/CaptionParameters;

    return-object v0
.end method

.method public aE()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mFailed:Z

    return v0
.end method

.method public aF()Z
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->aE()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aG()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mWas404ResponseReceived:Z

    .line 451
    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mHasBeenViewed:Z

    .line 452
    return-void
.end method

.method public aH()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mWas404ResponseReceived:Z

    return v0
.end method

.method public aI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mStoryId:Ljava/lang/String;

    return-object v0
.end method

.method public aJ()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mIsShared:Z

    return v0
.end method

.method public aK()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 504
    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 505
    const-string v1, "StorySnap"

    const-string v2, "Attempting to check if snap is a brand snap when id is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    const-string v1, "BRAND_SNAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public ac()J
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionParameters:Lcom/snapchat/android/model/server/CaptionParameters;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionOrientation:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionParameters:Lcom/snapchat/android/model/server/CaptionParameters;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/CaptionParameters;->getOrientation()J

    move-result-wide v0

    goto :goto_0
.end method

.method public ad()D
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionParameters:Lcom/snapchat/android/model/server/CaptionParameters;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionPosition:D

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionParameters:Lcom/snapchat/android/model/server/CaptionParameters;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/CaptionParameters;->getPosition()D

    move-result-wide v0

    goto :goto_0
.end method

.method public ae()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/snapchat/android/model/StorySnap;->mTimestamp:J

    return-wide v0
.end method

.method public av()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mHasBeenViewed:Z

    .line 198
    iput-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mWasOpened:Z

    .line 199
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_LOADED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 200
    return-void
.end method

.method public aw()Z
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->b:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->b:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ax()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/network/EndpointManager;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/util/network/EndpointManager;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bq/story_blob?story_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->az()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public ay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public az()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnap;->mCaptionText:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 266
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 267
    iget-wide v0, p0, Lcom/snapchat/android/model/StorySnap;->mTimestamp:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    const-string v1, "0 minutes ago"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "in 0 minutes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    :cond_0
    const v0, 0x7f0c0111

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_1
    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    check-cast p1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    return v0
.end method

.method public d(Landroid/content/Context;)Lcom/snapchat/android/model/LazyMediaSource;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 529
    iget v0, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    packed-switch v0, :pswitch_data_0

    .line 538
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled media type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/model/StorySnap;->mMediaType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/StorySnap;->e(Landroid/content/Context;)Lcom/snapchat/android/model/LazyMediaSource;

    move-result-object v0

    .line 535
    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/StorySnap;->f(Landroid/content/Context;)Lcom/snapchat/android/model/LazyMediaSource;

    move-result-object v0

    goto :goto_0

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 163
    invoke-super {p0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnap;->mMediaId:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnap;->mMediaUrl:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public e(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 178
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/StorySnap;->mViewedTimeStamp:J

    .line 179
    iput-boolean v2, p0, Lcom/snapchat/android/model/StorySnap;->mIsTimerRunning:Z

    .line 180
    invoke-virtual {p0, v2}, Lcom/snapchat/android/model/StorySnap;->c(Z)V

    .line 181
    iput-boolean v3, p0, Lcom/snapchat/android/model/StorySnap;->mHasBeenViewed:Z

    .line 182
    iput-boolean v3, p0, Lcom/snapchat/android/model/StorySnap;->mWasOpened:Z

    .line 183
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->VIEWED_AND_REPLAY_AVAILABLE:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    :goto_0
    iput-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mClientSnapStatus:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 186
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->k:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->k:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->d(Ljava/lang/String;)V

    .line 191
    :cond_0
    if-eqz p1, :cond_1

    .line 192
    invoke-static {p0}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/StorySnap;)V

    .line 194
    :cond_1
    return-void

    .line 183
    :cond_2
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mSponsoredStoryMetadata:Lcom/snapchat/android/model/SponsoredStoryMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 483
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    .line 485
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/StorySnap;

    if-nez v0, :cond_1

    .line 486
    const/4 v0, 0x0

    goto :goto_0

    .line 489
    :cond_1
    check-cast p1, Lcom/snapchat/android/model/StorySnap;

    .line 490
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    iget-object v1, p1, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Lcom/snapchat/android/model/SponsoredStoryMetadata;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mSponsoredStoryMetadata:Lcom/snapchat/android/model/SponsoredStoryMetadata;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 459
    iput-object p1, p0, Lcom/snapchat/android/model/StorySnap;->mStoryId:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/snapchat/android/model/StorySnap;->mHasBeenViewed:Z

    .line 256
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mSponsoredStoryMetadata:Lcom/snapchat/android/model/SponsoredStoryMetadata;

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->K()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mSponsoredStoryMetadata:Lcom/snapchat/android/model/SponsoredStoryMetadata;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mSponsoredStoryMetadata:Lcom/snapchat/android/model/SponsoredStoryMetadata;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->b()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mSponsoredStoryMetadata:Lcom/snapchat/android/model/SponsoredStoryMetadata;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mClientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/snapchat/android/model/StorySnap;->mIsLoading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/snapchat/android/model/StorySnap;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public r()V
    .locals 2

    .prologue
    .line 446
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/snapchat/android/util/StoryUtils;->a(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/StorySnap;Z)V

    .line 447
    return-void
.end method
