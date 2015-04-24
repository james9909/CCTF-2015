.class public final Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/android/api2/cash/square/SquareRequestTask;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/api2/cash/square/SquareRequestTask;",
        ">;"
    }
.end annotation


# instance fields
.field private mCashAuthManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/cash/CashAuthManager;",
            ">;"
        }
    .end annotation
.end field

.field private mEntityFactory:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/api2/framework/EntityFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mSquareOkHttpClientFactory:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/api2/framework/HyperRequestTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 27
    const/4 v0, 0x0

    const-string v1, "members/com.snapchat.android.api2.cash.square.SquareRequestTask"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/square/SquareRequestTask;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->mCashAuthManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/cash/CashAuthManager;

    iput-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->mCashAuthManager:Lcom/snapchat/android/cash/CashAuthManager;

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->mSquareOkHttpClientFactory:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;

    iput-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->mSquareOkHttpClientFactory:Lcom/snapchat/android/api2/framework/SquareOkHttpClientFactory;

    .line 63
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->mEntityFactory:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/framework/EntityFactory;

    iput-object v0, p1, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->mEntityFactory:Lcom/snapchat/android/api2/framework/EntityFactory;

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->a(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 6
    .parameter

    .prologue
    .line 37
    const-string v0, "com.snapchat.android.cash.CashAuthManager"

    const-class v1, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->mCashAuthManager:Ldagger/internal/Binding;

    .line 38
    const-string v0, "com.snapchat.android.api2.framework.SquareOkHttpClientFactory"

    const-class v1, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->mSquareOkHttpClientFactory:Ldagger/internal/Binding;

    .line 39
    const-string v0, "com.snapchat.android.api2.framework.EntityFactory"

    const-class v1, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->mEntityFactory:Ldagger/internal/Binding;

    .line 40
    const-string v1, "members/com.snapchat.android.api2.framework.HyperRequestTask"

    const-class v2, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    check-cast p1, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->a(Lcom/snapchat/android/api2/cash/square/SquareRequestTask;)V

    return-void
.end method

.method public a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->mCashAuthManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->mSquareOkHttpClientFactory:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->mEntityFactory:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareRequestTask$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
