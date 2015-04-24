.class Lcom/snapchat/android/api2/framework/HyperRequestTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/framework/HyperRequestTask;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/framework/HyperRequestTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/framework/HyperRequestTask;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/HyperRequestTask$1;->this$0:Lcom/snapchat/android/api2/framework/HyperRequestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequestTask$1;->this$0:Lcom/snapchat/android/api2/framework/HyperRequestTask;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;->k()Lcom/snapchat/android/api2/framework/NetworkResult;

    .line 64
    return-void
.end method
