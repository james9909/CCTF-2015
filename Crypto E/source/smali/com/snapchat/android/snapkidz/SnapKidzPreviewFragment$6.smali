.class Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$6;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$6;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$6;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->f(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$6;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->g(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    goto :goto_0
.end method
