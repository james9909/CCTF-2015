.class Lcom/snapchat/android/api/SyncAllTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api/SyncAllTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api/SyncAllTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api/SyncAllTask;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/snapchat/android/api/SyncAllTask$1;->this$0:Lcom/snapchat/android/api/SyncAllTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask$1;->this$0:Lcom/snapchat/android/api/SyncAllTask;

    iget-object v0, v0, Lcom/snapchat/android/api/SyncAllTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->B()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api/SyncAllTask$1;->this$0:Lcom/snapchat/android/api/SyncAllTask;

    iget-object v0, v0, Lcom/snapchat/android/api/SyncAllTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->B()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->c()I

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/api/SyncAllTask$1;->this$0:Lcom/snapchat/android/api/SyncAllTask;

    iget-object v1, v1, Lcom/snapchat/android/api/SyncAllTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-virtual {v1}, Lcom/snapchat/android/model/User;->B()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 291
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    .line 292
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->C()V

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method
