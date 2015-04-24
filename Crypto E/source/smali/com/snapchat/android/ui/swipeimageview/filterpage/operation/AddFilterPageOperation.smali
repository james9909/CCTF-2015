.class public Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;
.super Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/ui/swipefilters/FilterPage;

.field private final b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 20
    new-instance v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/DefaultPageInitializationStrategy;

    invoke-direct {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/DefaultPageInitializationStrategy;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;-><init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/swipefilters/FilterPage;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/FilterPageOperation;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;->a:Lcom/snapchat/android/ui/swipefilters/FilterPage;

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;->a:Lcom/snapchat/android/ui/swipefilters/FilterPage;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->e()V

    .line 39
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;)V
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
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;->a:Lcom/snapchat/android/ui/swipefilters/FilterPage;

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;->b:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;

    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;->a:Lcom/snapchat/android/ui/swipefilters/FilterPage;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageInitializationStrategy;->a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    .line 33
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/operation/AddFilterPageOperation;->a:Lcom/snapchat/android/ui/swipefilters/FilterPage;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/SwipeImageView;->a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    .line 34
    return-void
.end method
