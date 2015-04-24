.class public abstract Lcom/snapchat/android/model/Snapbryo;
.super Lcom/snapchat/android/model/AnnotatedMediabryo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/Snapbryo$Builder;
    }
.end annotation


# instance fields
.field protected mClock:Lcom/snapchat/android/util/system/Clock;

.field private mIsChatMedia:Z

.field private mIsFrontFacingSnap:Z

.field protected mIsZipUpload:Z

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

.field private mShouldExecutePostStoryTaskAfterUpload:Z

.field private mSnapOrientation:I

.field protected mSnapbryoAnalytics:Lcom/snapchat/android/analytics/SnapbryoAnalytics;

.field private mTimeOfFirstAttempt:J

.field private mTimeOfLastAttempt:J

.field private mTimerValueOrDuration:D


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/model/Snapbryo$Builder;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->a(Lcom/snapchat/android/model/Snapbryo$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->b(Lcom/snapchat/android/model/Snapbryo$Builder;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 36
    iput-boolean v2, p0, Lcom/snapchat/android/model/Snapbryo;->mIsFrontFacingSnap:Z

    .line 42
    iput v2, p0, Lcom/snapchat/android/model/Snapbryo;->mSnapOrientation:I

    .line 44
    new-instance v0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/SnapbryoAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo;->mSnapbryoAnalytics:Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    .line 47
    new-instance v0, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo;->mClock:Lcom/snapchat/android/util/system/Clock;

    .line 55
    iput-boolean v2, p0, Lcom/snapchat/android/model/Snapbryo;->mShouldExecutePostStoryTaskAfterUpload:Z

    .line 59
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->c(Lcom/snapchat/android/model/Snapbryo$Builder;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->a(Ljava/util/LinkedHashSet;)V

    .line 60
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->d(Lcom/snapchat/android/model/Snapbryo$Builder;)Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 61
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->e(Lcom/snapchat/android/model/Snapbryo$Builder;)Lcom/snapchat/android/model/Mediabryo$SendStatus;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/snapchat/android/model/Snapbryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;Z)V

    .line 62
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->f(Lcom/snapchat/android/model/Snapbryo$Builder;)Lcom/snapchat/android/model/Mediabryo$PostStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V

    .line 63
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->g(Lcom/snapchat/android/model/Snapbryo$Builder;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->e(Z)V

    .line 64
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->h(Lcom/snapchat/android/model/Snapbryo$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->b(Landroid/graphics/Bitmap;)V

    .line 65
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->i(Lcom/snapchat/android/model/Snapbryo$Builder;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->a(Landroid/net/Uri;)V

    .line 66
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->j(Lcom/snapchat/android/model/Snapbryo$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->h(Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->k(Lcom/snapchat/android/model/Snapbryo$Builder;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->f(Z)V

    .line 68
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->l(Lcom/snapchat/android/model/Snapbryo$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo;->mPostToStories:Ljava/util/ArrayList;

    .line 69
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->m(Lcom/snapchat/android/model/Snapbryo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo;->mIsChatMedia:Z

    .line 70
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->n(Lcom/snapchat/android/model/Snapbryo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo;->mIsFrontFacingSnap:Z

    .line 71
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->o(Lcom/snapchat/android/model/Snapbryo$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/Snapbryo;->mTimerValueOrDuration:D

    .line 72
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->p(Lcom/snapchat/android/model/Snapbryo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/Snapbryo;->mTimeOfFirstAttempt:J

    .line 73
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->q(Lcom/snapchat/android/model/Snapbryo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/Snapbryo;->mTimeOfLastAttempt:J

    .line 74
    invoke-static {p1}, Lcom/snapchat/android/model/Snapbryo$Builder;->r(Lcom/snapchat/android/model/Snapbryo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo;->mIsZipUpload:Z

    .line 75
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/Snapbryo;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->O()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 36
    iput-boolean v2, p0, Lcom/snapchat/android/model/Snapbryo;->mIsFrontFacingSnap:Z

    .line 42
    iput v2, p0, Lcom/snapchat/android/model/Snapbryo;->mSnapOrientation:I

    .line 44
    new-instance v0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/SnapbryoAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo;->mSnapbryoAnalytics:Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    .line 47
    new-instance v0, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo;->mClock:Lcom/snapchat/android/util/system/Clock;

    .line 55
    iput-boolean v2, p0, Lcom/snapchat/android/model/Snapbryo;->mShouldExecutePostStoryTaskAfterUpload:Z

    .line 79
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->a(Ljava/util/LinkedHashSet;)V

    .line 80
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 81
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->K()Lcom/snapchat/android/model/Mediabryo$SendStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V

    .line 82
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->L()Lcom/snapchat/android/model/Mediabryo$PostStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V

    .line 83
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->P()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->e(Z)V

    .line 84
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->G()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->b(Landroid/graphics/Bitmap;)V

    .line 85
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->I()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->a(Landroid/net/Uri;)V

    .line 86
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->h(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->s()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->d(Z)V

    .line 88
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->e(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->a(I)V

    .line 90
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->v()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->b(I)V

    .line 91
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->f(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->c(I)V

    .line 93
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->g(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->z()Lcom/snapchat/android/ui/caption/CaptionAnalyticData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->a(Lcom/snapchat/android/ui/caption/CaptionAnalyticData;)V

    .line 95
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->c()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Snapbryo;->f(Z)V

    .line 96
    iget-boolean v0, p1, Lcom/snapchat/android/model/Snapbryo;->mIsZipUpload:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo;->mIsZipUpload:Z

    .line 97
    iget-object v0, p1, Lcom/snapchat/android/model/Snapbryo;->mPostToStories:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/snapchat/android/model/Snapbryo;->mPostToStories:Ljava/util/ArrayList;

    .line 98
    iget-wide v0, p1, Lcom/snapchat/android/model/Snapbryo;->mTimerValueOrDuration:D

    iput-wide v0, p0, Lcom/snapchat/android/model/Snapbryo;->mTimerValueOrDuration:D

    .line 99
    iget-wide v0, p1, Lcom/snapchat/android/model/Snapbryo;->mTimeOfFirstAttempt:J

    iput-wide v0, p0, Lcom/snapchat/android/model/Snapbryo;->mTimeOfFirstAttempt:J

    .line 100
    iget-wide v0, p1, Lcom/snapchat/android/model/Snapbryo;->mTimeOfLastAttempt:J

    iput-wide v0, p0, Lcom/snapchat/android/model/Snapbryo;->mTimeOfLastAttempt:J

    .line 101
    iget-boolean v0, p1, Lcom/snapchat/android/model/Snapbryo;->mIsChatMedia:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo;->mIsChatMedia:Z

    .line 102
    iget-boolean v0, p1, Lcom/snapchat/android/model/Snapbryo;->mIsFrontFacingSnap:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo;->mIsFrontFacingSnap:Z

    .line 103
    iget-boolean v0, p1, Lcom/snapchat/android/model/Snapbryo;->mShouldExecuteSendSnapTaskAfterUpload:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo;->mShouldExecuteSendSnapTaskAfterUpload:Z

    .line 104
    iget-boolean v0, p1, Lcom/snapchat/android/model/Snapbryo;->mShouldExecutePostStoryTaskAfterUpload:Z

    iput-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo;->mShouldExecutePostStoryTaskAfterUpload:Z

    .line 105
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo;->mClock:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/Snapbryo;->mTimeOfLastAttempt:J

    .line 222
    return-void
.end method

.method private b(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 187
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENT:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    if-ne p1, v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo;->mSnapbryoAnalytics:Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->b()V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENDING:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENDING_ON_UPLOAD:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    if-ne p1, v0, :cond_3

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo;->mSnapbryoAnalytics:Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->a()V

    goto :goto_0

    .line 191
    :cond_3
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    if-ne p1, v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo;->mSnapbryoAnalytics:Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->c()V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/snapchat/android/model/Snapbryo;->mTimeOfFirstAttempt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo;->mClock:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/Snapbryo;->mTimeOfFirstAttempt:J

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snapbryo;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x3

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public abstract a()Lcom/snapchat/android/model/Snapbryo;
.end method

.method public a(D)V
    .locals 1
    .parameter

    .prologue
    .line 256
    iput-wide p1, p0, Lcom/snapchat/android/model/Snapbryo;->mTimerValueOrDuration:D

    .line 257
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V

    .line 199
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->POSTING:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->POSTING_ON_UPLOAD:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->WILL_POST_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    if-ne p1, v0, :cond_1

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/model/Snapbryo;->f()V

    .line 203
    invoke-direct {p0}, Lcom/snapchat/android/model/Snapbryo;->Q()V

    .line 205
    :cond_1
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/model/Snapbryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;Z)V

    .line 169
    return-void
.end method

.method protected a(Lcom/snapchat/android/model/Mediabryo$SendStatus;Z)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V

    .line 180
    if-eqz p2, :cond_0

    .line 181
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/Snapbryo;->b(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V

    .line 183
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 163
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/SnapWomb;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 164
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/snapchat/android/model/Snapbryo;->mClientId:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/PostToStory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lcom/snapchat/android/model/Snapbryo;->mPostToStories:Ljava/util/ArrayList;

    .line 115
    return-void
.end method

.method public aa()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/snapchat/android/model/Snapbryo;->mSnapOrientation:I

    return v0
.end method

.method public ab()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo;->mIsFrontFacingSnap:Z

    return v0
.end method

.method public ac()[F
    .locals 2

    .prologue
    .line 272
    new-instance v0, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFactory;

    invoke-direct {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFactory;-><init>()V

    iget-boolean v1, p0, Lcom/snapchat/android/model/Snapbryo;->mIsFrontFacingSnap:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrixFactory;->a(Z)Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;

    move-result-object v0

    .line 273
    iget v1, p0, Lcom/snapchat/android/model/Snapbryo;->mSnapOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 281
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->d()[F

    move-result-object v0

    :goto_0
    return-object v0

    .line 275
    :sswitch_0
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->a()[F

    move-result-object v0

    goto :goto_0

    .line 277
    :sswitch_1
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->c()[F

    move-result-object v0

    goto :goto_0

    .line 279
    :sswitch_2
    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/utils/ImageTransformationMatrix;->b()[F

    move-result-object v0

    goto :goto_0

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
    .end sparse-switch
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/snapchat/android/model/Snapbryo;->mShouldExecutePostStoryTaskAfterUpload:Z

    .line 136
    return-void
.end method

.method public abstract c()Z
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snapbryo;->a()Lcom/snapchat/android/model/Snapbryo;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput p1, p0, Lcom/snapchat/android/model/Snapbryo;->mSnapOrientation:I

    .line 265
    return-void
.end method

.method public synthetic e()Lcom/snapchat/android/model/AnnotatedMediabryo;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/snapchat/android/model/Snapbryo;->a()Lcom/snapchat/android/model/Snapbryo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 231
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    .line 234
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/Snapbryo;

    if-nez v0, :cond_1

    .line 235
    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :cond_1
    invoke-super {p0, p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract f(Z)V
.end method

.method public g(Z)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/snapchat/android/model/Snapbryo;->mIsFrontFacingSnap:Z

    .line 158
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo;->mIsChatMedia:Z

    return v0
.end method

.method public l()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/PostToStory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/model/Snapbryo;->mPostToStories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public m()D
    .locals 2

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/snapchat/android/model/Snapbryo;->mTimerValueOrDuration:D

    return-wide v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo;->mIsZipUpload:Z

    return v0
.end method

.method public o()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/snapchat/android/model/Snapbryo;->mTimeOfFirstAttempt:J

    return-wide v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/snapchat/android/model/Snapbryo;->mShouldExecutePostStoryTaskAfterUpload:Z

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/snapchat/android/model/Snapbryo;->mTimeOfLastAttempt:J

    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    const-string v1, ""

    .line 123
    const-string v0, ""

    .line 124
    iget-object v2, p0, Lcom/snapchat/android/model/Snapbryo;->mPostToStories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/PostToStory;

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v0, ", "

    move-object v2, v1

    move-object v1, v0

    .line 127
    goto :goto_0

    .line 128
    :cond_0
    return-object v2
.end method
