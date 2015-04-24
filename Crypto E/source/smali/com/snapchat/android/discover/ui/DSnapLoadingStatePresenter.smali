.class public Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/snapchat/android/discover/ui/DSnapView;

.field private c:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

.field private d:Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;

.field private e:Z

.field private f:Z

.field private g:Lcom/snapchat/android/discover/model/MediaState;

.field private h:Ljava/lang/String;

.field private i:Lcom/snapchat/android/discover/model/MediaState;

.field private j:I

.field private k:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->e:Z

    .line 30
    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->f:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->k:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;

    .line 48
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->g:Lcom/snapchat/android/discover/model/MediaState;

    .line 49
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->a:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->getDSnapPage()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "?"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->getDSnapPage()Lcom/snapchat/android/discover/model/DSnapPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->c:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->c:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->a()V

    .line 160
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "DSnapLoadingStatePresenter"

    const-string v1, "LOADING-STATE: Can\'t set loading state on uninitialized presenter."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->e:Z

    if-nez v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->g:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, p1, :cond_1

    .line 127
    const-string v0, "DSnapLoadingStatePresenter"

    const-string v1, "LOADING-STATE %s: Same loading state. "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    const-string v0, "DSnapLoadingStatePresenter"

    const-string v1, "LOADING-STATE %s: Still loading %s, %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->g:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    const-string v0, "DSnapLoadingStatePresenter"

    const-string v1, "LOADING-STATE %s: We are retrying an error."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->b(Lcom/snapchat/android/discover/model/MediaState;)V

    .line 148
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->g:Lcom/snapchat/android/discover/model/MediaState;

    .line 149
    iput-boolean v4, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->e:Z

    .line 150
    iput-boolean v4, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->f:Z

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->k:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;

    .line 112
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 57
    new-instance v0, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;-><init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/DSnapView;)V

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;

    new-instance v2, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;)V

    invoke-direct {v1, p1, v2}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;)V

    .line 65
    return-void
.end method

.method protected a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->b:Lcom/snapchat/android/discover/ui/DSnapView;

    .line 71
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->c:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

    .line 72
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->d:Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->e:Z

    .line 74
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 98
    iget v1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->j:I

    if-eq v0, v1, :cond_0

    .line 99
    iput v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->j:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->e:Z

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->a(Lcom/snapchat/android/discover/model/MediaState;)V

    .line 104
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->h:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->h:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->i:Lcom/snapchat/android/discover/model/MediaState;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->e:Z

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->a(Lcom/snapchat/android/discover/model/MediaState;)V

    .line 90
    :cond_1
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 175
    const-string v0, "DSnapLoadingStatePresenter"

    const-string v1, "LOADING-STATE %s: Hiding loading state quickly."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->d:Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a()V

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->c:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->b()V

    .line 178
    return-void
.end method

.method protected b(Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 5
    .parameter

    .prologue
    .line 186
    const-string v0, "DSnapLoadingStatePresenter"

    const-string v1, "LOADING-STATE %s: New loading state %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/MediaState;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->d:Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->b()V

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->c:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->i:Lcom/snapchat/android/discover/model/MediaState;

    iget v3, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->j:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/MediaState;I)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/MediaState;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->c:Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingViewHolder;->c()V

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->d:Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a(Lcom/snapchat/android/discover/model/MediaState;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->f:Z

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->k:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->k:Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter;->g:Lcom/snapchat/android/discover/model/MediaState;

    invoke-interface {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;->a(Lcom/snapchat/android/discover/model/MediaState;)V

    .line 206
    :cond_0
    return-void
.end method
