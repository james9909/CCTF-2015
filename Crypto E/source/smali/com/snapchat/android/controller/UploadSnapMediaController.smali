.class public Lcom/snapchat/android/controller/UploadSnapMediaController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lnet/jcip/annotations/NotThreadSafe;
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/api/UploadMediaTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snapchat/android/controller/UploadSnapMediaController;->a:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snapchat/android/controller/UploadSnapMediaController;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/snapchat/android/controller/UploadSnapMediaController;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/snapchat/android/controller/UploadSnapMediaController;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method private d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 3
    .parameter

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/controller/UploadSnapMediaController;->b(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/snapchat/android/controller/UploadSnapMediaController$2;

    invoke-direct {v0, p0, p1, p1}, Lcom/snapchat/android/controller/UploadSnapMediaController$2;-><init>(Lcom/snapchat/android/controller/UploadSnapMediaController;Lcom/snapchat/android/model/AnnotatedMediabryo;Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 94
    sget-object v1, Lcom/snapchat/android/controller/UploadSnapMediaController;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/UploadMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method private e(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x1

    .line 99
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversationManager;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 108
    :goto_0
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->o(Z)V

    .line 112
    :cond_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 4
    .parameter

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/controller/UploadSnapMediaController;->a(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 41
    new-instance v0, Lcom/snapchat/android/controller/UploadSnapMediaController$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/controller/UploadSnapMediaController$1;-><init>(Lcom/snapchat/android/controller/UploadSnapMediaController;Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 49
    sget-object v1, Lcom/snapchat/android/controller/UploadSnapMediaController;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/snapchat/android/model/AnnotatedMediabryo;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    sget-object v0, Lcom/snapchat/android/controller/UploadSnapMediaController;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/SaveSentSnapToCacheTask;->cancel(Z)Z

    .line 62
    :cond_0
    return-void
.end method

.method b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/snapchat/android/controller/UploadSnapMediaController;->c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 72
    :goto_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/controller/UploadSnapMediaController;->e(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 76
    :goto_1
    return-void

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/controller/UploadSnapMediaController;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    :try_end_0
    .catch Lcom/snapchat/android/api/UploadMediaTask$UploadMediaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/api/UploadMediaTask$UploadMediaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    goto :goto_1
.end method

.method b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    sget-object v0, Lcom/snapchat/android/controller/UploadSnapMediaController;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api/UploadMediaTask;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api/UploadMediaTask;->cancel(Z)Z

    .line 123
    :cond_0
    return-void
.end method

.method c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 3
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;

    invoke-direct {v0, p1}, Lcom/snapchat/android/api/chat/UploadChatMediaTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/CancelInChatSnapEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/CancelInChatSnapEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 82
    return-void
.end method
