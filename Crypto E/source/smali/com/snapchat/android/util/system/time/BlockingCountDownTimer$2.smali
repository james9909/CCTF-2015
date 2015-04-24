.class Lcom/snapchat/android/util/system/time/BlockingCountDownTimer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer$2;->a:Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer$2;->a:Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->b()V

    .line 37
    return-void
.end method
