.class final Lcom/snapchat/android/util/AlertDialogUtils$4;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(JJLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p5, p0, Lcom/snapchat/android/util/AlertDialogUtils$4;->a:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/snapchat/android/util/AlertDialogUtils;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter

    .prologue
    .line 147
    return-void
.end method
