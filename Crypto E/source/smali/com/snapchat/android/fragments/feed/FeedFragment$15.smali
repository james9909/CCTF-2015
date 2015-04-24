.class Lcom/snapchat/android/fragments/feed/FeedFragment$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/feed/FeedFragment;->C()V
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
    .line 964
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$15;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 967
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$15;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment$15;->a:Lcom/snapchat/android/fragments/feed/FeedFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->t(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/model/UserPrefs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/UserPrefs;->ay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ActivityLauncher;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 968
    return-void
.end method
