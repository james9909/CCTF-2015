.class Lcom/snapchat/android/api2/SignupTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/SignupTask;->a(Lcom/snapchat/android/api2/SignupTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/SignupTask;

.field final synthetic val$networkResult:Lcom/snapchat/android/api2/framework/NetworkResult;

.field final synthetic val$responsePayload:Lcom/snapchat/android/api2/SignupTask$ResponsePayload;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/SignupTask;Lcom/snapchat/android/api2/SignupTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/snapchat/android/api2/SignupTask$1;->this$0:Lcom/snapchat/android/api2/SignupTask;

    iput-object p2, p0, Lcom/snapchat/android/api2/SignupTask$1;->val$responsePayload:Lcom/snapchat/android/api2/SignupTask$ResponsePayload;

    iput-object p3, p0, Lcom/snapchat/android/api2/SignupTask$1;->val$networkResult:Lcom/snapchat/android/api2/framework/NetworkResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/snapchat/android/api2/SignupTask$1;->this$0:Lcom/snapchat/android/api2/SignupTask;

    iget-object v1, p0, Lcom/snapchat/android/api2/SignupTask$1;->val$responsePayload:Lcom/snapchat/android/api2/SignupTask$ResponsePayload;

    iget-object v2, p0, Lcom/snapchat/android/api2/SignupTask$1;->val$networkResult:Lcom/snapchat/android/api2/framework/NetworkResult;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api2/SignupTask;->b(Lcom/snapchat/android/api2/SignupTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 126
    return-void
.end method
