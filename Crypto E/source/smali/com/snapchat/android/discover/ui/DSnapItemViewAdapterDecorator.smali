.class public abstract Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;
.super Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;
.source "SourceFile"


# instance fields
.field protected a:Landroid/view/View;

.field protected c:Landroid/widget/FrameLayout;

.field protected d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->e:Z

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    .line 26
    return-void
.end method


# virtual methods
.method public a(J)Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->a(J)Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V

    .line 36
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->a(Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V

    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->c()V

    .line 89
    return-void
.end method

.method public d()Landroid/view/View;
    .locals 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->e:Z

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->d()Landroid/view/View;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->e:Z

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->a:Landroid/view/View;

    return-object v0
.end method

.method public e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->g()Z

    move-result v0

    return v0
.end method

.method public n_()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->n_()V

    .line 54
    return-void
.end method

.method public o_()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapterDecorator;->d:Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->o_()V

    .line 59
    return-void
.end method
