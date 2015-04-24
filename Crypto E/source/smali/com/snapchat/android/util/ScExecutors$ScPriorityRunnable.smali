.class public Lcom/snapchat/android/util/ScExecutors$ScPriorityRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/ScExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScPriorityRunnable"
.end annotation


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/snapchat/android/util/ScExecutors$ScPriorityRunnable;->a:Ljava/lang/Runnable;

    .line 101
    iput p2, p0, Lcom/snapchat/android/util/ScExecutors$ScPriorityRunnable;->b:I

    .line 102
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/snapchat/android/util/ScExecutors$ScPriorityRunnable;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/util/ScExecutors$ScPriorityRunnable;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    return-void
.end method
