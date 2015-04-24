.class public Lcom/snapchat/android/ui/SwipeController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/SwipeController$OnScrollListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/ui/SwipePageController;

.field private final b:Lcom/snapchat/android/ui/SwipeImageView;

.field private final c:Lcom/snapchat/android/ui/SwipeViewState;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/ui/SwipeController$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/ui/SwipePageController;Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/SwipeViewState;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/snapchat/android/ui/SwipeController;->a:Lcom/snapchat/android/ui/SwipePageController;

    .line 21
    iput-object p2, p0, Lcom/snapchat/android/ui/SwipeController;->b:Lcom/snapchat/android/ui/SwipeImageView;

    .line 22
    iput-object p3, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->d:Ljava/util/List;

    .line 24
    return-void
.end method

.method private a(IFF)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p3

    int-to-float v1, p1

    mul-float/2addr v0, v1

    mul-float v1, p3, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x1

    .line 73
    if-gez p1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->v()V

    .line 76
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeController;->a()V

    .line 88
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->p()V

    .line 89
    return v0

    .line 77
    :cond_1
    if-eqz p1, :cond_0

    if-eq p1, p2, :cond_0

    .line 79
    if-ge p1, p2, :cond_2

    .line 81
    const/4 v0, 0x0

    .line 82
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeController;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    goto :goto_0

    .line 83
    :cond_2
    if-le p1, p2, :cond_0

    .line 85
    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->w()V

    .line 86
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SwipeController;->a()V

    goto :goto_0
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->b:Lcom/snapchat/android/ui/SwipeImageView;

    new-instance v1, Lcom/snapchat/android/ui/SwipeController$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/ui/SwipeController$1;-><init>(Lcom/snapchat/android/ui/SwipeController;I)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/ui/SwipeViewState;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeViewState;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    :goto_0
    return p2

    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->j()V

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->A()V

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->a:Lcom/snapchat/android/ui/SwipePageController;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipePageController;->b(Z)V

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SwipeController$OnScrollListener;

    .line 155
    iget-object v3, p0, Lcom/snapchat/android/ui/SwipeController;->b:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->x()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v3, v1}, Lcom/snapchat/android/ui/SwipeController$OnScrollListener;->a(Lcom/snapchat/android/ui/SwipeImageView;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 157
    :cond_1
    return-void
.end method

.method public a(F)V
    .locals 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipeViewState;->b(F)V

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->a:Lcom/snapchat/android/ui/SwipePageController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipePageController;->b(Z)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->j()V

    .line 101
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->g()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeViewState;->i()F

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SwipeViewState;->h()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/ui/SwipeController;->a(IFF)I

    move-result v1

    .line 44
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->g()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 46
    :goto_0
    if-eqz v0, :cond_1

    .line 47
    invoke-direct {p0, v1, p1}, Lcom/snapchat/android/ui/SwipeController;->a(II)Z

    move-result v0

    .line 48
    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/ui/SwipeViewState;->e(I)V

    .line 50
    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SwipeController$OnScrollListener;

    .line 52
    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeController;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-interface {v0, v2}, Lcom/snapchat/android/ui/SwipeController$OnScrollListener;->a(Lcom/snapchat/android/ui/SwipeImageView;)V

    goto :goto_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/SwipeController;->c(I)V

    .line 60
    :cond_2
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/SwipeController$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public a(ZFI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/ui/SwipeViewState;->c(F)V

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->r()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SwipeController$OnScrollListener;

    .line 108
    iget-object v2, p0, Lcom/snapchat/android/ui/SwipeController;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-interface {v0, v2}, Lcom/snapchat/android/ui/SwipeController$OnScrollListener;->b(Lcom/snapchat/android/ui/SwipeImageView;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->u()V

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->a:Lcom/snapchat/android/ui/SwipePageController;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipePageController;->a(Z)V

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    iget-object v1, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {p0, v1, p3}, Lcom/snapchat/android/ui/SwipeController;->a(Lcom/snapchat/android/ui/SwipeViewState;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->e(I)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->k()V

    .line 116
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->p()V

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->a(F)V

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 120
    invoke-virtual {p0, p3}, Lcom/snapchat/android/ui/SwipeController;->a(I)V

    .line 121
    return-void
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->l()V

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    int-to-float v1, p1

    const v2, -0x42b33333

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->c(F)V

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    const v1, 0x3e4ccccd

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->a(F)V

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->b:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->invalidate()V

    .line 144
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/SwipeController;->a(I)V

    .line 145
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SwipeController;->c:Lcom/snapchat/android/ui/SwipeViewState;

    int-to-float v1, p1

    const v2, 0x3f866666

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->c(F)V

    goto :goto_0
.end method
