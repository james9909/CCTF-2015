.class public Lcom/snapchat/android/fragments/chat/ReleaseWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/util/system/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Z

.field private c:J

.field private d:Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

.field private e:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;-><init>(Lcom/snapchat/android/fragments/chat/ReleaseWindow;JJ)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->d:Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    .line 51
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x5

    new-instance v2, Lcom/snapchat/android/fragments/chat/ReleaseWindow$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/chat/ReleaseWindow$1;-><init>(Lcom/snapchat/android/fragments/chat/ReleaseWindow;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->e:Ljava/util/PriorityQueue;

    .line 61
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method private a(Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;)V
    .locals 4
    .parameter

    .prologue
    .line 96
    iget-wide v0, p1, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;->b:J

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->d:Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    iget-wide v2, v2, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 97
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->d:Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    .line 99
    :cond_0
    return-void
.end method

.method private b(J)V
    .locals 7
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    .line 108
    iget-wide v2, v0, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;->b:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 109
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->a(Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;)V

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 113
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 80
    new-instance v0, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;-><init>(Lcom/snapchat/android/fragments/chat/ReleaseWindow;JJ)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->d:Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    .line 81
    iput-wide v2, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->c:J

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 83
    return-void
.end method

.method public a(J)V
    .locals 7
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->b:Z

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->a:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v4

    .line 71
    iget-wide v0, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->c:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 72
    iput-wide p1, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->c:J

    .line 73
    iget-object v6, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->e:Ljava/util/PriorityQueue;

    new-instance v0, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;-><init>(Lcom/snapchat/android/fragments/chat/ReleaseWindow;JJ)V

    invoke-virtual {v6, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->b(J)V

    .line 77
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->b:Z

    .line 90
    return-void
.end method

.method public b()J
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->a:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->b(J)V

    .line 120
    const-string v0, "ReleaseWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLatestSeenItemTimestamp - latestItemTimestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->d:Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    iget-wide v2, v2, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastNotifiedTimestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->d:Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    iget-wide v2, v2, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->d:Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    iget-wide v0, v0, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;->a:J

    return-wide v0
.end method
