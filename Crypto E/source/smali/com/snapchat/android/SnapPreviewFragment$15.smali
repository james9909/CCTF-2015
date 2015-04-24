.class Lcom/snapchat/android/SnapPreviewFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapPreviewFragment;->b_()V
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
    .line 918
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$15;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 921
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$15;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapPreviewFragment;->k()V

    .line 922
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment$15;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v2}, Lcom/snapchat/android/SnapPreviewFragment;->e(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/model/AnnotatedMediabryo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 923
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "TAP_RECIPIENTS_IN_PREVIEW"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 925
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$15;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->s(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 926
    return-void
.end method
