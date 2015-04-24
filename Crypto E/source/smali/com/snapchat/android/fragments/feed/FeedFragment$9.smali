.class Lcom/snapchat/android/fragments/feed/FeedFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 325
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$9;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$9;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->l(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/fragments/feed/FeedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$9;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v0}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;)V

    .line 331
    :cond_0
    return-void
.end method
