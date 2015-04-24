.class public Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/model/Mediabryo;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Mediabryo;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;Z)V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/Mediabryo;Z)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    if-nez p1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;->a:Lcom/snapchat/android/model/Mediabryo;

    .line 20
    iput-boolean p2, p0, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;->b:Z

    .line 21
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/Mediabryo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;->a:Lcom/snapchat/android/model/Mediabryo;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;->b:Z

    return v0
.end method
