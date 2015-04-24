.class Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$1;->b:Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$1;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$1;->b:Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a(Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;Z)V

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$1;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$1;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 61
    :cond_0
    return-void
.end method
