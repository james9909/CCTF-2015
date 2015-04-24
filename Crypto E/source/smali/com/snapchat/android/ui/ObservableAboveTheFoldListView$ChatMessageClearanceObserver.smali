.class Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChatMessageClearanceObserver"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

.field private b:Landroid/widget/BaseAdapter;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;-><init>(Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;)V

    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 414
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 415
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 417
    iget-object v3, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 418
    if-eqz v3, :cond_0

    .line 419
    iget-object v4, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    invoke-static {v4}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->a(Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_1
    return-object v2
.end method


# virtual methods
.method protected a(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;->b:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 396
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;->b:Landroid/widget/BaseAdapter;

    .line 397
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 398
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 402
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 404
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;->b:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onChanged cannot be called without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;->a()Ljava/util/Set;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    iget-object v1, v1, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 410
    return-void
.end method
