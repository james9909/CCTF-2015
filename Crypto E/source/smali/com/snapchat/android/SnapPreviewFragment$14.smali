.class Lcom/snapchat/android/SnapPreviewFragment$14;
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
    .line 886
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$14;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 889
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$14;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->q(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->f()V

    .line 890
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$14;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapPreviewFragment;->k()V

    .line 891
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$14;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->e(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/model/AnnotatedMediabryo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$14;->a:Lcom/snapchat/android/SnapPreviewFragment;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment$14;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/SnapPreviewFragment;->a(Lcom/snapchat/android/SnapPreviewFragment;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/User;

    .line 893
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$14;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->r(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->a()V

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$14;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->e(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/model/AnnotatedMediabryo;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/model/Snapbryo;

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$14;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->e(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/model/AnnotatedMediabryo;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Snapbryo;

    .line 898
    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 899
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment$14;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v1}, Lcom/snapchat/android/SnapPreviewFragment;->e(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/model/AnnotatedMediabryo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    const-string v3, "SEND_TO_SCREEN"

    invoke-static {v0, v2, v1, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;ZZLjava/lang/String;)V

    .line 905
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 907
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ClearChatTextEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/ClearChatTextEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 908
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment$14;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v2}, Lcom/snapchat/android/SnapPreviewFragment;->e(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/model/AnnotatedMediabryo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 910
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$14;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->s(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setSendButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    return-void

    .line 899
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
