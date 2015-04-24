.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoryItemTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoryItemTouchListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

.field private b:Lcom/snapchat/android/fragments/stories/StoriesListItem;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;ILcom/snapchat/android/fragments/stories/StoriesListItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoryItemTouchListener;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoryItemTouchListener;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 994
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 998
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoryItemTouchListener;->a:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b(Lcom/snapchat/android/fragments/stories/StoriesAdapter;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 999
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1009
    :goto_0
    return v3

    .line 1001
    :pswitch_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StoryListPressedEvent;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoryItemTouchListener;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StoryListPressedEvent;-><init>(Lcom/snapchat/android/fragments/stories/StoriesListItem;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1002
    const-string v0, "StoriesAdapter"

    const-string v1, "Touch down return false"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1005
    :pswitch_1
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StoryListTappedEvent;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoryItemTouchListener;->b:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StoryListTappedEvent;-><init>(Lcom/snapchat/android/fragments/stories/StoriesListItem;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1006
    const-string v0, "StoriesAdapter"

    const-string v1, "Touch up return false"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 999
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
