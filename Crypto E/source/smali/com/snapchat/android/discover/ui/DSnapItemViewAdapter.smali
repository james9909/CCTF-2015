.class public abstract Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected b:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(J)Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 87
    return-void
.end method

.method public abstract a(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)V
.end method

.method public a(Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->b:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    .line 102
    return-void
.end method

.method public abstract a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPage;Landroid/view/View;)V
.end method

.method public abstract a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
.end method

.method public abstract c()V
.end method

.method public abstract d()Landroid/view/View;
.end method

.method public abstract e()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
.end method

.method public f()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public n_()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->b:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemViewAdapter;->b:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;->b()V

    .line 71
    :cond_0
    return-void
.end method

.method public o_()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
