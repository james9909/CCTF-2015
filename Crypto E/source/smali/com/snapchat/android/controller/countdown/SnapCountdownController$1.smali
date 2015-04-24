.class Lcom/snapchat/android/controller/countdown/SnapCountdownController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/controller/countdown/SnapCountdownController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/controller/countdown/SnapCountdownController;


# direct methods
.method constructor <init>(Lcom/snapchat/android/controller/countdown/SnapCountdownController;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$1;->a:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$1;->a:Lcom/snapchat/android/controller/countdown/SnapCountdownController;

    invoke-virtual {v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownController;->b()V

    .line 304
    return-void
.end method
