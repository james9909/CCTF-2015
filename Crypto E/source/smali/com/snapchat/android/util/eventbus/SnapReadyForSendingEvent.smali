.class public Lcom/snapchat/android/util/eventbus/SnapReadyForSendingEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/model/Mediabryo;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Mediabryo;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/SnapReadyForSendingEvent;->a:Lcom/snapchat/android/model/Mediabryo;

    .line 12
    iput-boolean p2, p0, Lcom/snapchat/android/util/eventbus/SnapReadyForSendingEvent;->b:Z

    .line 13
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/Mediabryo;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/SnapReadyForSendingEvent;->a:Lcom/snapchat/android/model/Mediabryo;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/snapchat/android/util/eventbus/SnapReadyForSendingEvent;->b:Z

    return v0
.end method
