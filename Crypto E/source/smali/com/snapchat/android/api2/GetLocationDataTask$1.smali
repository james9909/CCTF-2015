.class Lcom/snapchat/android/api2/GetLocationDataTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/GetLocationDataTask;->a(Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/GetLocationDataTask;

.field final synthetic val$result:Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/GetLocationDataTask;Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/snapchat/android/api2/GetLocationDataTask$1;->this$0:Lcom/snapchat/android/api2/GetLocationDataTask;

    iput-object p2, p0, Lcom/snapchat/android/api2/GetLocationDataTask$1;->val$result:Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$1;->this$0:Lcom/snapchat/android/api2/GetLocationDataTask;

    iget-object v1, p0, Lcom/snapchat/android/api2/GetLocationDataTask$1;->val$result:Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;

    iget-object v1, v1, Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;->location:Lcom/snapchat/android/api2/GetLocationDataTask$LocationResponsePayload;

    invoke-static {v0, v1}, Lcom/snapchat/android/api2/GetLocationDataTask;->a(Lcom/snapchat/android/api2/GetLocationDataTask;Lcom/snapchat/android/api2/GetLocationDataTask$LocationResponsePayload;)V

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$1;->this$0:Lcom/snapchat/android/api2/GetLocationDataTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/GetLocationDataTask;->b(Lcom/snapchat/android/api2/GetLocationDataTask;)Lcom/snapchat/android/model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$1;->this$0:Lcom/snapchat/android/api2/GetLocationDataTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/GetLocationDataTask;->c(Lcom/snapchat/android/api2/GetLocationDataTask;)Lcom/snapchat/android/model/User;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api2/GetLocationDataTask$1;->val$result:Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;

    iget-object v1, v1, Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;->createdFriends:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/User;->h(Ljava/util/List;)V

    .line 112
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api2/GetLocationDataTask$1;->val$result:Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;

    iget-object v1, v1, Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;->createdFriendStories:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/StoryLibrary;->a(Ljava/util/List;Z)V

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$1;->val$result:Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;

    iget-object v0, v0, Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;->createdFriends:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$1;->val$result:Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;

    iget-object v0, v0, Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;->createdFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$1;->val$result:Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;

    iget-object v0, v0, Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;->createdFriendStories:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$1;->val$result:Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;

    iget-object v0, v0, Lcom/snapchat/android/api2/GetLocationDataTask$ResponsePayload;->createdFriendStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 116
    :cond_2
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/GetLocationDataTaskCompletedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/GetLocationDataTaskCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 118
    :cond_3
    return-void
.end method
