.class Lcom/snapchat/android/SnapPreviewFragment$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapPreviewFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapPreviewFragment$9;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapPreviewFragment$9;)V
    .locals 0
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$9$1;->a:Lcom/snapchat/android/SnapPreviewFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 777
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$9$1;->a:Lcom/snapchat/android/SnapPreviewFragment$9;

    iget-object v0, v0, Lcom/snapchat/android/SnapPreviewFragment$9;->a:Lcom/snapchat/android/SnapPreviewFragment;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/SnapPreviewFragment;->a(Lcom/snapchat/android/SnapPreviewFragment;I)V

    .line 778
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 779
    return-void
.end method
