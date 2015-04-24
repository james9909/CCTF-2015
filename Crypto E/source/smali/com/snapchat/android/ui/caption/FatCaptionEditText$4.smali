.class Lcom/snapchat/android/ui/caption/FatCaptionEditText$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$4;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$4;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$4;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$4;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, -0x1

    iput v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->c:I

    .line 271
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionEditText$4;->a:Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Z)V

    .line 273
    :cond_0
    return-void
.end method
