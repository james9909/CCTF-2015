.class Lcom/snapchat/android/api2/LoginTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/LoginTask;->a(Lcom/snapchat/android/api2/LoginTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/LoginTask;

.field final synthetic val$networkResult:Lcom/snapchat/android/api2/framework/NetworkResult;

.field final synthetic val$responsePayload:Lcom/snapchat/android/api2/LoginTask$ResponsePayload;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/LoginTask;Lcom/snapchat/android/api2/LoginTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/snapchat/android/api2/LoginTask$2;->this$0:Lcom/snapchat/android/api2/LoginTask;

    iput-object p2, p0, Lcom/snapchat/android/api2/LoginTask$2;->val$responsePayload:Lcom/snapchat/android/api2/LoginTask$ResponsePayload;

    iput-object p3, p0, Lcom/snapchat/android/api2/LoginTask$2;->val$networkResult:Lcom/snapchat/android/api2/framework/NetworkResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/snapchat/android/api2/LoginTask$2;->this$0:Lcom/snapchat/android/api2/LoginTask;

    iget-object v1, p0, Lcom/snapchat/android/api2/LoginTask$2;->val$responsePayload:Lcom/snapchat/android/api2/LoginTask$ResponsePayload;

    iget-object v2, p0, Lcom/snapchat/android/api2/LoginTask$2;->val$networkResult:Lcom/snapchat/android/api2/framework/NetworkResult;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api2/LoginTask;->b(Lcom/snapchat/android/api2/LoginTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 162
    return-void
.end method
