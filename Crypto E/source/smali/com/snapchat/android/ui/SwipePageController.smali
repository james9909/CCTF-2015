.class public Lcom/snapchat/android/ui/SwipePageController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

.field private final b:Lcom/snapchat/android/ui/SwipeViewState;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Lcom/snapchat/android/ui/SwipeViewState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipePageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    .line 16
    iput-object p2, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->c()I

    move-result v0

    return v0
.end method

.method public a(IZ)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    invoke-interface {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->b()I

    move-result v3

    .line 64
    if-lez v3, :cond_4

    .line 65
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 66
    :goto_0
    const/4 v1, 0x0

    .line 67
    iget-object v2, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SwipeViewState;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipePageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SwipeViewState;->c()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v1

    move v2, p1

    .line 71
    :cond_0
    :goto_1
    add-int/2addr v2, v3

    add-int/2addr v2, v0

    rem-int/2addr v2, v3

    .line 72
    iget-object v4, p0, Lcom/snapchat/android/ui/SwipePageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    invoke-interface {v4, v2}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v4

    if-ne v4, v1, :cond_1

    if-ne v2, p1, :cond_0

    .line 74
    :cond_1
    :goto_2
    return v2

    .line 65
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    move v2, p1

    goto :goto_1

    :cond_4
    move v2, p1

    goto :goto_2
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipeViewState;->a(I)V

    .line 21
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipeViewState;->d(I)V

    .line 22
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipeViewState;->b(Z)V

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->b()Z

    move-result v0

    .line 46
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->c(I)V

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->d(I)V

    .line 59
    :goto_0
    return-void

    .line 50
    :cond_0
    if-eqz p1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->d()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->n()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/SwipePageController;->a(IZ)I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SwipeViewState;->c(I)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->c()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->n()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/SwipePageController;->a(IZ)I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SwipeViewState;->d(I)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->d()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipeViewState;->b(I)V

    .line 26
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipeViewState;->c(I)V

    .line 27
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->d(I)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->c(I)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->a(I)V

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->b(I)V

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->a(Z)V

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipePageController;->a:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipePageController;->b:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;->b(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->a:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
