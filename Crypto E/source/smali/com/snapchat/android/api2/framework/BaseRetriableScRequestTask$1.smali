.class Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->h()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask$1;->this$0:Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 96
    const-string v0, "BaseRetriableScRequestTask"

    const-string v1, "NETWORK-LOG: %s is executing for %d attempt"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask$1;->this$0:Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;

    iget v4, v4, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->mCurrentRetryAttempt:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask$1;->this$0:Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;->g()V

    .line 99
    return-void
.end method
