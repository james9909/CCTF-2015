.class public Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/snapchat/android/ui/SwipeImageView;

.field private final c:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->b:Lcom/snapchat/android/ui/SwipeImageView;

    .line 27
    iput-object p2, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->c:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    .line 28
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 35
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;

    .line 37
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v2, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->c:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;->a(Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->b()V

    .line 40
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 43
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->c:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->b()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->c:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v2, v3, :cond_0

    .line 46
    invoke-virtual {v1}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method public b(Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->c:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    invoke-virtual {p1, v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;->a(Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;)V

    .line 53
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;

    .line 57
    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;->a()V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperationQueue;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    return-void
.end method
