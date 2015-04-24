.class final Lcom/snapchat/android/api/SyncAllTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api/SyncAllTask;->a(Landroid/content/Context;Lcom/snapchat/android/model/server/UpdatesResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$trackingAppId:Ljava/lang/String;

.field final synthetic val$trackingUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/snapchat/android/api/SyncAllTask$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/snapchat/android/api/SyncAllTask$2;->val$trackingAppId:Ljava/lang/String;

    iput-object p3, p0, Lcom/snapchat/android/api/SyncAllTask$2;->val$trackingUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 313
    new-instance v0, Lcom/snapchat/android/util/DemographicsTrackingUtils;

    iget-object v1, p0, Lcom/snapchat/android/api/SyncAllTask$2;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/DemographicsTrackingUtils;-><init>(Landroid/content/Context;)V

    .line 314
    iget-object v1, p0, Lcom/snapchat/android/api/SyncAllTask$2;->val$trackingAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/DemographicsTrackingUtils;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 318
    new-instance v1, Lcom/snapchat/android/api2/DemographicsTrackingRequestTask;

    iget-object v2, p0, Lcom/snapchat/android/api/SyncAllTask$2;->val$trackingUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/api2/DemographicsTrackingRequestTask;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 320
    invoke-virtual {v1}, Lcom/snapchat/android/api2/DemographicsTrackingRequestTask;->k()Lcom/snapchat/android/api2/framework/NetworkResult;

    .line 322
    :cond_0
    return-void
.end method
