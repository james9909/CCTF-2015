.class public Lcom/snapchat/android/networkmanager/DownloadRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/networkmanager/DownloadRequest$1;,
        Lcom/snapchat/android/networkmanager/DownloadRequest$Builder;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field private final c:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;ZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->d:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->e:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 31
    iput-object p4, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 32
    iput-boolean p5, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->a:Z

    .line 33
    iput-wide p6, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->f:J

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;ZJLcom/snapchat/android/networkmanager/DownloadRequest$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct/range {p0 .. p7}, Lcom/snapchat/android/networkmanager/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;ZJ)V

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/networkmanager/DownloadPriority;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;)Lcom/snapchat/android/networkmanager/DownloadRequest;
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "other cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keys for both requests do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->b()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->b()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/networkmanager/DownloadPriority;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fallback priorities for both requests do not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/networkmanager/DownloadPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v3

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    .line 110
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->f()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->f()J

    move-result-wide v6

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 111
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadRequest;

    iget-object v1, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/networkmanager/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;ZJ)V

    return-object v0

    .line 107
    :cond_3
    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v3

    goto :goto_0

    .line 109
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public b()Lcom/snapchat/android/networkmanager/DownloadPriority;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->a:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->f:J

    return-wide v0
.end method

.method public g()Lcom/snapchat/android/networkmanager/DownloadRequest;
    .locals 8

    .prologue
    .line 122
    iget-object v0, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iget-object v1, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/networkmanager/DownloadPriority;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadRequest;

    iget-object v1, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iget-object v4, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    iget-boolean v5, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->a:Z

    iget-wide v6, p0, Lcom/snapchat/android/networkmanager/DownloadRequest;->f:J

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/networkmanager/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;ZJ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    const-string v0, "[Key: %s, Priority: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
