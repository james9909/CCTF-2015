.class public Lcom/snapchat/android/api2/cash/BlockerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BlockerManager"


# instance fields
.field protected mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->g()Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    const-string v2, "snapcash"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/snapchat/android/api2/cash/ICashProvider;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 28
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/api2/cash/ICashProvider;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 29
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-static {}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a()V

    .line 32
    if-eqz p2, :cond_0

    .line 33
    invoke-interface {p2}, Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;->b()V

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->g()Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    const-string v2, "snapcash"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/snapchat/android/api2/cash/ICashProvider;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 42
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/api2/cash/ICashProvider;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 43
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a()V

    .line 46
    if-eqz p2, :cond_0

    .line 47
    invoke-interface {p2}, Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;->b()V

    goto :goto_0
.end method

.method public c(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->g()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    const-string v2, "snapcash"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/snapchat/android/api2/cash/ICashProvider;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 56
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/api2/cash/ICashProvider;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 57
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a()V

    .line 60
    if-eqz p2, :cond_0

    .line 61
    invoke-interface {p2}, Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;->b()V

    goto :goto_0
.end method

.method public d(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->g()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    const-string v2, "snapcash"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/snapchat/android/api2/cash/ICashProvider;->f()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 70
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/api2/cash/ICashProvider;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 71
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a()V

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-interface {p2}, Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;->b()V

    goto :goto_0
.end method

.method public e(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->g()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    const-string v2, "snapcash"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/snapchat/android/api2/cash/ICashProvider;->g()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 83
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/api2/cash/ICashProvider;->g()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 92
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a()V

    .line 87
    if-eqz p2, :cond_0

    .line 88
    invoke-interface {p2}, Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;->b()V

    goto :goto_0
.end method

.method public f(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->g()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    const-string v2, "snapcash"

    invoke-virtual {v1, v2}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/snapchat/android/api2/cash/ICashProvider;->h()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 100
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/BlockerManager;->mCashProviderManager:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/ICashProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/api2/cash/ICashProvider;->h()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Ljava/util/Collection;)V

    .line 108
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->a(Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {}, Lcom/snapchat/android/api2/cash/CashProviderManager;->a()V

    .line 103
    if-eqz p2, :cond_0

    .line 104
    invoke-interface {p2}, Lcom/snapchat/android/api2/cash/BlockerManager$ContinueForwardListener;->b()V

    goto :goto_0
.end method
