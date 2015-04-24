.class Lcom/snapchat/android/fragments/stories/StoriesFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesFragment;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    iget-boolean v0, v0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;->a(IZ)V

    .line 363
    return-void
.end method
