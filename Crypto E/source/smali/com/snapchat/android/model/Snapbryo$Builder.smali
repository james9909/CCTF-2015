.class public Lcom/snapchat/android/model/Snapbryo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Snapbryo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCaptionText:Ljava/lang/String;

.field private mClientId:Ljava/lang/String;

.field private mIsChatMedia:Z

.field private mIsFrontFacingSnap:Z

.field private mIsMuted:Z

.field private mIsZipUpload:Z

.field private mPostStatus:Lcom/snapchat/android/model/Mediabryo$PostStatus;

.field private mPostToStories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/PostToStory;",
            ">;"
        }
    .end annotation
.end field

.field private mRawImageBitmap:Landroid/graphics/Bitmap;

.field private mRecipients:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mRetried:Z

.field private mSendStatus:Lcom/snapchat/android/model/Mediabryo$SendStatus;

.field private mTime:Ljava/util/Date;

.field private mTimeOfFirstAttempt:J

.field private mTimeOfLastAttempt:J

.field private mTimerValueOrDuration:D

.field private mUploadStatus:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mTime:Ljava/util/Date;

    .line 294
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mRecipients:Ljava/util/LinkedHashSet;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mPostToStories:Ljava/util/ArrayList;

    .line 296
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->NOT_UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mUploadStatus:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    .line 297
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->UNSENT:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mSendStatus:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    .line 298
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->NOT_POSTED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mPostStatus:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mClientId:Ljava/lang/String;

    .line 311
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/model/Snapbryo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/model/Snapbryo$Builder;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/model/Snapbryo$Builder;)Ljava/util/LinkedHashSet;
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mRecipients:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/model/Snapbryo$Builder;)Lcom/snapchat/android/model/Mediabryo$UploadStatus;
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mUploadStatus:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/model/Snapbryo$Builder;)Lcom/snapchat/android/model/Mediabryo$SendStatus;
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mSendStatus:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/model/Snapbryo$Builder;)Lcom/snapchat/android/model/Mediabryo$PostStatus;
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mPostStatus:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/model/Snapbryo$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mRetried:Z

    return v0
.end method

.method static synthetic h(Lcom/snapchat/android/model/Snapbryo$Builder;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mRawImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/model/Snapbryo$Builder;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/model/Snapbryo$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mCaptionText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/model/Snapbryo$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mIsMuted:Z

    return v0
.end method

.method static synthetic l(Lcom/snapchat/android/model/Snapbryo$Builder;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mPostToStories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/model/Snapbryo$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mIsChatMedia:Z

    return v0
.end method

.method static synthetic n(Lcom/snapchat/android/model/Snapbryo$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mIsFrontFacingSnap:Z

    return v0
.end method

.method static synthetic o(Lcom/snapchat/android/model/Snapbryo$Builder;)D
    .locals 2
    .parameter

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mTimerValueOrDuration:D

    return-wide v0
.end method

.method static synthetic p(Lcom/snapchat/android/model/Snapbryo$Builder;)J
    .locals 2
    .parameter

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mTimeOfFirstAttempt:J

    return-wide v0
.end method

.method static synthetic q(Lcom/snapchat/android/model/Snapbryo$Builder;)J
    .locals 2
    .parameter

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mTimeOfLastAttempt:J

    return-wide v0
.end method

.method static synthetic r(Lcom/snapchat/android/model/Snapbryo$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mIsZipUpload:Z

    return v0
.end method


# virtual methods
.method public a(D)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 394
    iput-wide p1, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mTimerValueOrDuration:D

    .line 395
    return-object p0
.end method

.method public a(I)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 359
    invoke-static {}, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->values()[Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mUploadStatus:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    .line 360
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mRawImageBitmap:Landroid/graphics/Bitmap;

    .line 421
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mVideoUri:Landroid/net/Uri;

    .line 426
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mClientId:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public a(Z)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mIsChatMedia:Z

    .line 375
    return-object p0
.end method

.method public a()Lcom/snapchat/android/model/Snapbryo;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 431
    new-instance v0, Lcom/snapchat/android/model/SnapVideobryo;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/SnapVideobryo;-><init>(Lcom/snapchat/android/model/Snapbryo$Builder;)V

    .line 433
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/model/SnapImagebryo;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/SnapImagebryo;-><init>(Lcom/snapchat/android/model/Snapbryo$Builder;)V

    goto :goto_0
.end method

.method public b(I)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 364
    invoke-static {}, Lcom/snapchat/android/model/Mediabryo$SendStatus;->values()[Lcom/snapchat/android/model/Mediabryo$SendStatus;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mSendStatus:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    .line 365
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 320
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_0
    return-object p0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Z)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mIsFrontFacingSnap:Z

    .line 380
    return-object p0
.end method

.method public c(I)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 369
    invoke-static {}, Lcom/snapchat/android/model/Mediabryo$PostStatus;->values()[Lcom/snapchat/android/model/Mediabryo$PostStatus;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mPostStatus:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    .line 370
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mVideoUri:Landroid/net/Uri;

    .line 329
    :cond_0
    return-object p0
.end method

.method public c(Z)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mIsMuted:Z

    .line 385
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 4
    .parameter

    .prologue
    .line 333
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\s*,\\s*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 335
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    .line 336
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 338
    iget-object v3, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    :cond_0
    return-object p0
.end method

.method public d(Z)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mIsZipUpload:Z

    .line 390
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 344
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\s*,\\s*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 347
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    const-string v2, "my_story_ads79sdf"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mPostToStories:Ljava/util/ArrayList;

    invoke-static {}, Lcom/snapchat/android/model/MyPostToStory;->a()Lcom/snapchat/android/model/MyPostToStory;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mPostToStories:Ljava/util/ArrayList;

    new-instance v3, Lcom/snapchat/android/model/PostToStory;

    invoke-direct {v3, v0, v0, v4, v4}, Lcom/snapchat/android/model/PostToStory;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/Geofence;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    :cond_1
    return-object p0
.end method

.method public e(Z)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mRetried:Z

    .line 415
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mCaptionText:Ljava/lang/String;

    .line 400
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 404
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mTimeOfFirstAttempt:J

    .line 405
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 409
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/Snapbryo$Builder;->mTimeOfLastAttempt:J

    .line 410
    return-object p0
.end method
