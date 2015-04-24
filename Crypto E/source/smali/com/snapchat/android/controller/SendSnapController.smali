.class public Lcom/snapchat/android/controller/SendSnapController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;
.implements Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/controller/SendSnapController$2;
    }
.end annotation


# instance fields
.field public final a:Lcom/snapchat/android/model/SnapWomb;

.field private final b:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final c:Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->a()Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/controller/SendSnapController;-><init>(Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/analytics/NetworkAnalytics;Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/analytics/NetworkAnalytics;Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/snapchat/android/controller/SendSnapController;->a:Lcom/snapchat/android/model/SnapWomb;

    .line 49
    iput-object p2, p0, Lcom/snapchat/android/controller/SendSnapController;->b:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 50
    iput-object p3, p0, Lcom/snapchat/android/controller/SendSnapController;->c:Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    .line 51
    return-void
.end method

.method private m(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    if-ne v0, v1, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->g(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 184
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController;->a:Lcom/snapchat/android/model/SnapWomb;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/SnapWomb;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->j(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController;->a:Lcom/snapchat/android/model/SnapWomb;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/SnapWomb;->c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 187
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StorySnapPostEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/StorySnapPostEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->n(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 193
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->f(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->i(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_0
.end method

.method private n(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 3
    .parameter

    .prologue
    .line 196
    new-instance v0, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;

    check-cast p1, Lcom/snapchat/android/model/Snapbryo;

    invoke-direct {v0, p1, p0, p0}, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;-><init>(Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/SendSnapAndPostStorySnapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 1
    .parameter

    .prologue
    .line 258
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->POSTED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V

    .line 259
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController;->a:Lcom/snapchat/android/model/SnapWomb;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/SnapWomb;->c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 260
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->C()V

    .line 261
    return-void
.end method

.method public a(Lcom/snapchat/android/model/AnnotatedMediabryo;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController;->b:Lcom/snapchat/android/analytics/NetworkAnalytics;

    invoke-virtual {v0, p2, p3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(ZZ)V

    .line 125
    if-eqz p2, :cond_2

    .line 126
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Retrying sending snap with no recipients! Did you intend to post a story?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->f(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 133
    :cond_2
    if-eqz p3, :cond_5

    .line 134
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->l()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 135
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Retrying snap as story with no post-to stories! Did you mean to send as snap?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_4
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->i(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 140
    :cond_5
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Snapbryo;)V
    .locals 4
    .parameter

    .prologue
    .line 207
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->WILL_POST_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/Snapbryo;->a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V

    .line 208
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController;->a:Lcom/snapchat/android/model/SnapWomb;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/SnapWomb;->c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 210
    new-instance v0, Lcom/snapchat/android/controller/SendSnapController$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/controller/SendSnapController$1;-><init>(Lcom/snapchat/android/controller/SendSnapController;Lcom/snapchat/android/model/Snapbryo;)V

    .line 217
    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/snapchat/android/model/AnnotatedMediabryo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/cache/SaveSentStoryToCacheTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    return-void
.end method

.method public b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 1
    .parameter

    .prologue
    .line 269
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController;->a:Lcom/snapchat/android/model/SnapWomb;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/SnapWomb;->c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 271
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->C()V

    .line 272
    return-void
.end method

.method public c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 1
    .parameter

    .prologue
    .line 227
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENT:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V

    .line 228
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController;->a:Lcom/snapchat/android/model/SnapWomb;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/SnapWomb;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 229
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->C()V

    .line 231
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController;->c:Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 235
    :cond_0
    return-void
.end method

.method public d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController;->a:Lcom/snapchat/android/model/SnapWomb;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/SnapWomb;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 248
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->C()V

    goto :goto_0
.end method

.method public e(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->l()Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 57
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->f(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b(Z)V

    .line 66
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->i(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-direct {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->m(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_0
.end method

.method protected f(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->g(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController;->a:Lcom/snapchat/android/model/SnapWomb;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/SnapWomb;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->h(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 73
    return-void
.end method

.method protected g(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    sget-object v0, Lcom/snapchat/android/controller/SendSnapController$2;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 80
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENDING:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V

    goto :goto_0

    .line 84
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENDING_ON_UPLOAD:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected h(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 91
    sget-object v0, Lcom/snapchat/android/controller/SendSnapController$2;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 93
    :pswitch_0
    instance-of v0, p1, Lcom/snapchat/android/discover/model/DSnapbryo;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/snapchat/android/discover/api/SendDSnapTask;

    check-cast p1, Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-direct {v0, p1, p0}, Lcom/snapchat/android/discover/api/SendDSnapTask;-><init>(Lcom/snapchat/android/discover/model/DSnapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V

    invoke-virtual {v0}, Lcom/snapchat/android/discover/api/SendDSnapTask;->g()V

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Lcom/snapchat/android/api/SendSnapTask;

    check-cast p1, Lcom/snapchat/android/model/Snapbryo;

    invoke-direct {v0, p1, p0}, Lcom/snapchat/android/api/SendSnapTask;-><init>(Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/SendSnapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 100
    :pswitch_1
    instance-of v0, p1, Lcom/snapchat/android/discover/model/DSnapbryo;

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;

    check-cast p1, Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-direct {v0, p1, p0}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;-><init>(Lcom/snapchat/android/discover/model/DSnapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V

    invoke-virtual {v0}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->g()V

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lcom/snapchat/android/api/SendSnapWithMediaTask;

    check-cast p1, Lcom/snapchat/android/model/Snapbryo;

    invoke-direct {v0, p1, p0}, Lcom/snapchat/android/api/SendSnapWithMediaTask;-><init>(Lcom/snapchat/android/model/Snapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/SendSnapWithMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 109
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Z)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected i(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->j(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController;->a:Lcom/snapchat/android/model/SnapWomb;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/SnapWomb;->c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/SendSnapController;->k(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 147
    return-void
.end method

.method protected j(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    sget-object v0, Lcom/snapchat/android/controller/SendSnapController$2;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 155
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->POSTING:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V

    goto :goto_0

    .line 159
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->POSTING_ON_UPLOAD:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected k(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 166
    sget-object v0, Lcom/snapchat/android/controller/SendSnapController$2;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 168
    :pswitch_0
    new-instance v0, Lcom/snapchat/android/api/PostStorySnapTask;

    invoke-direct {v0, p1, p0}, Lcom/snapchat/android/api/PostStorySnapTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/PostStorySnapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 172
    :pswitch_1
    new-instance v0, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;

    invoke-direct {v0, p1, p0}, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/api/PostStorySnapTask$PostStorySnapCallback;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/PostStorySnapWithMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 176
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->c(Z)V

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public l(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/snapchat/android/controller/SendSnapController;->c:Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/cache/SendSnapCacheWrapper;->b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 204
    return-void
.end method
