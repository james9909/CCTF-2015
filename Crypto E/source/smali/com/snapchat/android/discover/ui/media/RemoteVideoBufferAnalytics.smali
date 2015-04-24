.class public Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/discover/ui/media/VideoProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a:Ljava/util/List;

    .line 21
    const/16 v0, 0x64

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->b:[Z

    .line 31
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->c()V

    .line 32
    return-void
.end method

.method private a([ZII)J
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 135
    if-gez p2, :cond_0

    .line 136
    const-wide/16 v0, 0x0

    .line 142
    :goto_0
    return-wide v0

    .line 139
    :cond_0
    array-length v4, p1

    move v2, v1

    move v3, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-boolean v0, p1, v2

    .line 140
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v3, v0

    .line 139
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 140
    goto :goto_2

    .line 142
    :cond_2
    int-to-double v0, v3

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    div-int/lit8 v2, p2, 0x8

    int-to-double v2, v2

    mul-double/2addr v0, v2

    div-int/lit16 v2, p3, 0x3e8

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 122
    iget v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->d:I

    if-lt p1, v0, :cond_1

    .line 123
    iget v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->d:I

    :goto_0
    if-ge v0, p1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iput p1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->d:I

    .line 128
    :cond_1
    return-void
.end method

.method private a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 131
    int-to-double v0, p1

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->d:I

    .line 132
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->c:Z

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->f:J

    .line 112
    iput v2, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->e:I

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iput v1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->d:I

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->b:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 119
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->f:J

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public a(Lcom/snapchat/android/discover/ui/media/VideoProperties;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->e:I

    .line 107
    :cond_0
    return-void
.end method

.method public b()J
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->e:I

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 74
    :cond_0
    const-wide/16 v0, 0x0

    .line 79
    :goto_0
    return-wide v0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a:Ljava/util/List;

    iget v1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/media/VideoProperties;

    .line 77
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/VideoProperties;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 78
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/VideoProperties;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->b:[Z

    invoke-direct {p0, v2, v1, v0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a([ZII)J

    move-result-wide v0

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->e()V

    .line 95
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->d()V

    .line 96
    return-void
.end method

.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 60
    :cond_1
    :goto_1
    return-void

    .line 36
    :sswitch_0
    const-string v4, "completed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "bufferedUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "seekTo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "didSeekTo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "willChangeVideo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 38
    :pswitch_0
    iget-wide v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->f:J

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->f:J

    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->e()V

    goto :goto_1

    .line 43
    :pswitch_1
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->c:Z

    if-nez v0, :cond_1

    .line 44
    const-string v0, "percentComplete"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a(I)V

    goto :goto_1

    .line 48
    :pswitch_2
    iput-boolean v2, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->c:Z

    goto :goto_1

    .line 51
    :pswitch_3
    iput-boolean v1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->c:Z

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a:Ljava/util/List;

    iget v1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/media/VideoProperties;

    .line 53
    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/media/VideoProperties;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 54
    const-string v1, "seekPosition"

    invoke-virtual {p1, v1}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a(II)V

    goto :goto_1

    .line 57
    :pswitch_4
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "currentVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoBufferAnalytics;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 36
    :sswitch_data_0
    .sparse-switch
        -0x7eb1ad78 -> :sswitch_1
        -0x539f09b5 -> :sswitch_0
        -0x3c990f8e -> :sswitch_3
        -0x3603e4ed -> :sswitch_2
        0x47771f79 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
