.class public Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a:Ljava/util/List;

    return-void
.end method

.method private c(I)I
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    rem-int v0, p1, v1

    .line 73
    if-gez v0, :cond_0

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->c(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/swipefilters/FilterPage;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/swipefilters/FilterPage;

    .line 58
    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->e()V

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method
