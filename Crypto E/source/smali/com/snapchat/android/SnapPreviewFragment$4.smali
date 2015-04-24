.class Lcom/snapchat/android/SnapPreviewFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapPreviewFragment;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$4;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 728
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->i()V

    .line 729
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$4;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->c(Lcom/snapchat/android/SnapPreviewFragment;)V

    .line 730
    return-void
.end method
