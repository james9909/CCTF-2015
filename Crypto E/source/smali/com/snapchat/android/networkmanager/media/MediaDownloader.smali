.class public Lcom/snapchat/android/networkmanager/media/MediaDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/snapchat/android/networkmanager/media/MediaDownloader;


# instance fields
.field private final b:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;-><init>()V

    sput-object v0, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a()Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;-><init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;)V

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->b:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    .line 37
    return-void
.end method

.method public static a()Lcom/snapchat/android/networkmanager/media/MediaDownloader;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->b(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 102
    if-nez p2, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 106
    :cond_0
    new-instance v0, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;

    invoke-direct {v0, p1, p3}, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;-><init>(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/util/cache/Cache;)V

    .line 107
    invoke-virtual {v0, p2, p4, p5}, Lcom/snapchat/android/networkmanager/media/SnapMediaDownload;->a(Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatMedia;Lcom/snapchat/android/util/cache/Cache;)Z
    .locals 9
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 113
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    .line 114
    if-nez v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/snapchat/android/util/cache/Cache;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 119
    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 125
    const-string v5, "/bq/chat_media"

    invoke-static {v4, v5}, Lcom/snapchat/android/api/SnapchatServer;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 127
    const-string v7, "id"

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v7, "conversation_id"

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->I()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v7, "timestamp"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v4, "req_token"

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v4, "username"

    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/bq/chat_media"

    invoke-static {v4}, Lcom/snapchat/android/util/debug/DevUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/bq/chat_media"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Ljava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v2

    .line 133
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->F()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 134
    :cond_3
    iget-object v4, p0, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->b:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->I()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v3}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a(Ljava/lang/String;ZLcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;)V

    .line 139
    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;[B)V

    move v0, v1

    .line 143
    goto/16 :goto_0

    :cond_5
    move-object v2, v3

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 151
    new-instance v0, Lcom/snapchat/android/networkmanager/media/ByteCopyingMediaDownload;

    invoke-direct {v0}, Lcom/snapchat/android/networkmanager/media/ByteCopyingMediaDownload;-><init>()V

    .line 152
    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v2, Lcom/snapchat/android/networkmanager/DownloadPriority;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/snapchat/android/networkmanager/media/ByteCopyingMediaDownload;->a(Ljava/lang/String;Landroid/os/Bundle;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;)[B

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 93
    sget-object v4, Lcom/snapchat/android/networkmanager/DownloadPriority;->d:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v5, Lcom/snapchat/android/networkmanager/DownloadPriority;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->e:Lcom/snapchat/android/util/cache/Cache;

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/snapchat/android/model/StorySnap;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    sget-object v3, Lcom/snapchat/android/util/cache/Caches;->b:Lcom/snapchat/android/util/cache/Cache;

    sget-object v4, Lcom/snapchat/android/networkmanager/DownloadPriority;->d:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v5, Lcom/snapchat/android/networkmanager/DownloadPriority;->d:Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatMedia;)Z
    .locals 1
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 77
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->i:Lcom/snapchat/android/util/cache/Cache;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Lcom/snapchat/android/model/chat/ChatMedia;Lcom/snapchat/android/util/cache/Cache;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Ljava/lang/String;Landroid/os/Bundle;)[B

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/snapchat/android/model/StorySnap;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->c:Lcom/snapchat/android/util/cache/Cache;

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/snapchat/android/model/StorySnap;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->d:Lcom/snapchat/android/util/cache/Cache;

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;)Z

    move-result v0

    return v0
.end method
