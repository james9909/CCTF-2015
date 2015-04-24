.class public Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/networkmanager/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/util/system/Clock;

.field private b:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field private c:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/snapchat/android/util/system/ClockProvider;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/ClockProvider;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/ClockProvider;->a()Lcom/snapchat/android/util/system/Clock;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;-><init>(Lcom/snapchat/android/util/system/Clock;)V

    .line 143
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/system/Clock;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 135
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iput-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->d:Z

    .line 147
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a:Lcom/snapchat/android/util/system/Clock;

    .line 148
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->g:Landroid/os/Bundle;

    .line 172
    return-object p0
.end method

.method public a(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 152
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->e:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public a(Z)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->d:Z

    .line 177
    return-object p0
.end method

.method public a()Lcom/snapchat/android/networkmanager/DownloadRequest;
    .locals 9

    .prologue
    .line 181
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadRequest;

    iget-object v1, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->g:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/HttpUtils;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iget-object v4, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iget-boolean v5, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->d:Z

    iget-object v6, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->a:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v6}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/networkmanager/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;ZJLcom/snapchat/android/networkmanager/DownloadRequest$1;)V

    return-object v0
.end method

.method public b(Lcom/snapchat/android/networkmanager/DownloadPriority;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 157
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;->f:Ljava/lang/String;

    .line 167
    return-object p0
.end method
