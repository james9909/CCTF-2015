.class Lcom/snapchat/android/fragments/feed/FeedFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lin/srain/cube/views/ptr/PtrHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/feed/FeedFragment;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->k(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->j(Lcom/snapchat/android/fragments/feed/FeedFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$8;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/listview/ListViewUtils;->a(Landroid/widget/ListView;)Z

    move-result v0

    return v0
.end method
