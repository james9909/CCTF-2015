.class public Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesCompleteEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesCompleteEvent;->a:Z

    .line 10
    iput-boolean p1, p0, Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesCompleteEvent;->a:Z

    .line 11
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/snapchat/android/util/eventbus/UpdatingUserToDatabasesCompleteEvent;->a:Z

    return v0
.end method
