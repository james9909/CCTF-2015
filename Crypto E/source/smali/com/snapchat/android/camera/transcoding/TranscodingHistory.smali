.class public Lcom/snapchat/android/camera/transcoding/TranscodingHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aG()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;->a(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;->a:[Z

    .line 14
    return-void
.end method

.method private a(Ljava/lang/String;)[Z
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v4, v6, [Z

    .line 73
    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([ZZ)V

    move v3, v2

    .line 74
    :goto_0
    if-ge v3, v6, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 75
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 76
    const/16 v5, 0x31

    if-ne v0, v5, :cond_0

    move v0, v1

    .line 77
    :goto_1
    aput-boolean v0, v4, v3

    .line 74
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 76
    goto :goto_1

    .line 79
    :cond_1
    return-object v4
.end method

.method private b()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->s(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 60
    const-string v1, ""

    .line 61
    iget-object v3, p0, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;->a:[Z

    array-length v4, v3

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v4, :cond_1

    aget-boolean v2, v3, v1

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v0, 0x1

    if-ne v2, v0, :cond_0

    const-string v0, "1"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 62
    :cond_0
    const-string v0, "0"

    goto :goto_1

    .line 64
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 20
    move v1, v0

    .line 21
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 22
    iget-object v2, p0, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;->a:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_0

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_1
    return v0
.end method

.method public a(Z)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x9

    .line 33
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 34
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;->a:[Z

    iget-object v2, p0, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;->a:[Z

    add-int/lit8 v3, v0, 0x1

    aget-boolean v2, v2, v3

    aput-boolean v2, v1, v0

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;->a:[Z

    aput-boolean p1, v0, v4

    .line 37
    invoke-direct {p0}, Lcom/snapchat/android/camera/transcoding/TranscodingHistory;->b()V

    .line 38
    return-void
.end method
