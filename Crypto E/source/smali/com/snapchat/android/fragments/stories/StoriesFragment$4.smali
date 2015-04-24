.class Lcom/snapchat/android/fragments/stories/StoriesFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver$DiscoverNewContentListener;


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
    .line 365
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;->a:Lcom/snapchat/android/fragments/stories/StoriesFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$4$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment$4$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment$4;Z)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method
