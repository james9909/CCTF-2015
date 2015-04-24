.class Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    const v1, 0x7f0c01b1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->b(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->J()V

    .line 80
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->K()V

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;Z)V

    .line 82
    new-instance v0, Lcom/snapchat/android/api2/chat/ClearFeedTask;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/chat/ClearFeedTask;-><init>(Lcom/snapchat/android/api2/chat/ClearFeedTask$ClearFeedTaskCallback;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/chat/ClearFeedTask;->g()V

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 84
    return-void
.end method
