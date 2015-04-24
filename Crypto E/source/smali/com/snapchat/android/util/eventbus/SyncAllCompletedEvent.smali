.class public Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/UUID;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/util/UUID;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->a:Ljava/util/UUID;

    .line 12
    iput-boolean p2, p0, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->b:Z

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->a:Ljava/util/UUID;

    .line 17
    iput-boolean p2, p0, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->b:Z

    .line 18
    iput-boolean p3, p0, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->c:Z

    .line 19
    return-void
.end method


# virtual methods
.method public a()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->c:Z

    return v0
.end method
