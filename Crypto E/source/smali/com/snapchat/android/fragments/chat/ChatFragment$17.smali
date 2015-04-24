.class Lcom/snapchat/android/fragments/chat/ChatFragment$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1526
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-boolean p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->a:Z

    iput-boolean p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getIsEmoji()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getCashtagDetected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getCashSwipeDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1533
    :cond_0
    const/4 v0, 0x0

    .line 1543
    :goto_0
    return v0

    .line 1534
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->a:Z

    if-eqz v0, :cond_2

    .line 1535
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 1536
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->d:Lcom/snapchat/android/ui/here/StreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/StreamView;->c()V

    .line 1537
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/here/HereTooltip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/HereTooltip;->b()V

    .line 1543
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1538
    :cond_2
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->b:Z

    if-eqz v0, :cond_3

    .line 1539
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/here/HereTooltip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/HereTooltip;->a()V

    goto :goto_1

    .line 1541
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$17;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->v(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    goto :goto_1
.end method
