.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Landroid/view/View;Lcom/snapchat/android/model/Friend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;->a:Lcom/snapchat/android/model/Friend;

    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 578
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;->a:Lcom/snapchat/android/model/Friend;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$14;->b:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    .line 579
    return-void
.end method