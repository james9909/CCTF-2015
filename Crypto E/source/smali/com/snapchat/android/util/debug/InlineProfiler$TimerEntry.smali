.class Lcom/snapchat/android/util/debug/InlineProfiler$TimerEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/debug/InlineProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimerEntry"
.end annotation


# instance fields
.field a:J

.field b:I

.field c:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/snapchat/android/util/debug/InlineProfiler$TimerEntry;->a:J

    .line 33
    iput v2, p0, Lcom/snapchat/android/util/debug/InlineProfiler$TimerEntry;->b:I

    .line 34
    iput v2, p0, Lcom/snapchat/android/util/debug/InlineProfiler$TimerEntry;->c:I

    .line 35
    return-void
.end method
