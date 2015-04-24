.class public Lcom/snapchat/android/database/HasSeenDialogLog$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/HasSeenDialogLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static a:J


# instance fields
.field private final b:Lcom/snapchat/android/util/system/Clock;

.field private final c:Ljava/lang/String;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-wide/32 v0, 0x240c8400

    sput-wide v0, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;->a:J

    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/system/Clock;Ljava/lang/String;J)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;->b:Lcom/snapchat/android/util/system/Clock;

    .line 77
    iput-object p2, p0, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;->c:Ljava/lang/String;

    .line 78
    iput-wide p3, p0, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;->d:J

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 71
    new-instance v0, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;-><init>(Lcom/snapchat/android/util/system/Clock;Ljava/lang/String;J)V

    .line 72
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;->b:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;->d:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/snapchat/android/database/HasSeenDialogLog$Entry;->d:J

    return-wide v0
.end method
