.class public Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>(I)V

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;->a:I

    .line 15
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;->a:I

    return v0
.end method
