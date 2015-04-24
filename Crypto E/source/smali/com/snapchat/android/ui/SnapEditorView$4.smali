.class Lcom/snapchat/android/ui/SnapEditorView$4;
.super Lcom/snapchat/android/util/PhotoEffectTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/SnapEditorView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/SnapEditorView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapEditorView;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/util/PhotoEffectTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 574
    if-nez p1, :cond_0

    .line 576
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$4;->a:Lcom/snapchat/android/ui/SnapEditorView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/ui/SnapEditorView;Landroid/graphics/Bitmap;ZZ)V

    goto :goto_0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/SnapEditorView$4;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
