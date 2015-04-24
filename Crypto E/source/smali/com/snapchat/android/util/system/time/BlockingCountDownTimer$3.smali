.class Lcom/snapchat/android/util/system/time/BlockingCountDownTimer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->d()V
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
    .line 99
    iput-object p1, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer$3;->a:Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer$3;->a:Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;

    invoke-static {v0}, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;->a(Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;)V

    .line 103
    return-void
.end method
