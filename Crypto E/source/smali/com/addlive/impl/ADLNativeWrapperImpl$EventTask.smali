.class Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/impl/ADLNativeWrapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventTask"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field final synthetic this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;


# direct methods
.method public constructor <init>(Lcom/addlive/impl/ADLNativeWrapperImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;->data:Ljava/lang/String;

    .line 650
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    #getter for: Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;
    invoke-static {v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->access$000(Lcom/addlive/impl/ADLNativeWrapperImpl;)Lcom/addlive/platform/PlatformInitOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addlive/platform/PlatformInitOptions;->isInteractionsLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    #getter for: Lcom/addlive/impl/ADLNativeWrapperImpl;->initOptions:Lcom/addlive/platform/PlatformInitOptions;
    invoke-static {v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->access$000(Lcom/addlive/impl/ADLNativeWrapperImpl;)Lcom/addlive/platform/PlatformInitOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/addlive/platform/PlatformInitOptions;->getInteractionsLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[App <---- SDK] Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    const-string v0, "AddLive_SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got an event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v1, Lcom/addlive/impl/ServiceEvent;

    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;->data:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/addlive/impl/ServiceEvent;-><init>(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceEvent;->getEvent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onUserEvent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    #calls: Lcom/addlive/impl/ADLNativeWrapperImpl;->handleUserEvent(Lcom/addlive/impl/ServiceEvent;)V
    invoke-static {v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->access$100(Lcom/addlive/impl/ADLNativeWrapperImpl;Lcom/addlive/impl/ServiceEvent;)V

    .line 669
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    #getter for: Lcom/addlive/impl/ADLNativeWrapperImpl;->eventDescriptions:Ljava/util/Map;
    invoke-static {v0}, Lcom/addlive/impl/ADLNativeWrapperImpl;->access$400(Lcom/addlive/impl/ADLNativeWrapperImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/addlive/impl/ServiceEvent;->getEvent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/addlive/impl/EventDescription;

    .line 670
    if-nez v0, :cond_5

    .line 671
    const-string v0, "AddLive_SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process an event as the event type is not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/addlive/impl/ServiceEvent;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_2
    :goto_1
    return-void

    .line 664
    :cond_3
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceEvent;->getEvent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onMediaStreamEvent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 665
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    #calls: Lcom/addlive/impl/ADLNativeWrapperImpl;->handleMediaStreamEvent(Lcom/addlive/impl/ServiceEvent;)V
    invoke-static {v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->access$200(Lcom/addlive/impl/ADLNativeWrapperImpl;Lcom/addlive/impl/ServiceEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 680
    :catch_0
    move-exception v0

    .line 681
    const-string v1, "AddLive_SDK"

    const-string v2, "Cannot process an event as there was a parse error"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 666
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/addlive/impl/ServiceEvent;->getEvent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onConnectionLost"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    #calls: Lcom/addlive/impl/ADLNativeWrapperImpl;->handleConnectionLostEvent(Lcom/addlive/impl/ServiceEvent;)V
    invoke-static {v0, v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->access$300(Lcom/addlive/impl/ADLNativeWrapperImpl;Lcom/addlive/impl/ServiceEvent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 682
    :catch_1
    move-exception v0

    .line 683
    const-string v1, "AddLive_SDK"

    const-string v2, "Cannot process an event as the event type is misconfigured"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 675
    :cond_5
    :try_start_2
    iget-object v2, v0, Lcom/addlive/impl/EventDescription;->eventConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/addlive/impl/ServiceEvent;->getParams()Lorg/json/JSONObject;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 677
    iget-object v1, p0, Lcom/addlive/impl/ADLNativeWrapperImpl$EventTask;->this$0:Lcom/addlive/impl/ADLNativeWrapperImpl;

    #getter for: Lcom/addlive/impl/ADLNativeWrapperImpl;->listeners:Ljava/util/List;
    invoke-static {v1}, Lcom/addlive/impl/ADLNativeWrapperImpl;->access$500(Lcom/addlive/impl/ADLNativeWrapperImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/addlive/service/listener/AddLiveServiceListener;

    .line 678
    iget-object v4, v0, Lcom/addlive/impl/EventDescription;->handlerMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_2

    .line 684
    :catch_2
    move-exception v0

    .line 685
    const-string v1, "AddLive_SDK"

    const-string v2, "Cannot process an event as the event type is misconfigured"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 686
    :catch_3
    move-exception v0

    .line 687
    const-string v1, "AddLive_SDK"

    const-string v2, "Cannot process an event as the event type is misconfigured"

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 688
    :catch_4
    move-exception v0

    .line 690
    const-string v1, "AddLive_SDK"

    const-string v2, "Unknown error passing an event: "

    invoke-static {v1, v2, v0}, Lcom/addlive/impl/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method
