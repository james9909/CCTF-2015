.class Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/caption/CaptionEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IMMResult"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/CaptionEditText;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/caption/CaptionEditText;)V
    .locals 1
    .parameter

    .prologue
    .line 552
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    .line 553
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 554
    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 558
    const-string v0, "CaptionEditText"

    const-string v1, "CaptionDebug: result from IME is %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_2

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-static {v0, v4}, Lcom/snapchat/android/ui/caption/CaptionEditText;->b(Lcom/snapchat/android/ui/caption/CaptionEditText;Z)Z

    .line 564
    :cond_1
    :goto_0
    return-void

    .line 561
    :cond_2
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    if-ne p1, v4, :cond_1

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;->a:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-static {v0, v5}, Lcom/snapchat/android/ui/caption/CaptionEditText;->b(Lcom/snapchat/android/ui/caption/CaptionEditText;Z)Z

    goto :goto_0
.end method
