.class public Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/chat/ChatFeedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedIconResource"
.end annotation


# instance fields
.field public endResource:I

.field public frivolousAnimationTime:J

.field public final startResource:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;->startResource:I

    .line 33
    iput p1, p0, Lcom/snapchat/android/model/chat/ChatFeedItem$FeedIconResource;->endResource:I

    .line 34
    return-void
.end method
