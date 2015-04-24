.class Lcom/snapchat/android/api/FriendActionTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api/FriendActionTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api/FriendActionTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api/FriendActionTask;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/snapchat/android/api/FriendActionTask$1;->this$0:Lcom/snapchat/android/api/FriendActionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/snapchat/android/api/FriendActionTask$1;->this$0:Lcom/snapchat/android/api/FriendActionTask;

    invoke-static {v0}, Lcom/snapchat/android/api/FriendActionTask;->a(Lcom/snapchat/android/api/FriendActionTask;)Lcom/snapchat/android/api/FriendActionTask$FriendActionCompleteCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/FriendActionTask$1;->this$0:Lcom/snapchat/android/api/FriendActionTask;

    iget-object v1, v1, Lcom/snapchat/android/api/FriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/api/FriendActionTask$FriendActionCompleteCallback;->a(Lcom/snapchat/android/model/FriendAction;Z)V

    .line 224
    return-void
.end method
