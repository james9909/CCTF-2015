.class public final Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;",
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

.field private mCashErrorReporter:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/api2/cash/CashErrorReporter;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "com.snapchat.android.api2.cash.blockers.square.SQAccessTokenBlocker"

    const-string v1, "members/com.snapchat.android.api2.cash.blockers.square.SQAccessTokenBlocker"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-direct {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;-><init>()V

    .line 63
    invoke-virtual {p0, v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;)V

    .line 64
    return-object v0
.end method

.method public a(Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;->mCashAuthManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/cash/CashAuthManager;

    iput-object v0, p1, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;->mCashAuthManager:Lcom/snapchat/android/cash/CashAuthManager;

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;->mCashErrorReporter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/CashErrorReporter;

    iput-object v0, p1, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->a(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 6
    .parameter

    .prologue
    .line 40
    const-string v0, "com.snapchat.android.cash.CashAuthManager"

    const-class v1, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;->mCashAuthManager:Ldagger/internal/Binding;

    .line 41
    const-string v0, "com.snapchat.android.api2.cash.CashErrorReporter"

    const-class v1, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;->mCashErrorReporter:Ldagger/internal/Binding;

    .line 42
    const-string v1, "members/com.snapchat.android.api2.cash.blockers.Blocker"

    const-class v2, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 43
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;)V

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
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;->mCashAuthManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;->mCashErrorReporter:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$$InjectAdapter;->a()Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    move-result-object v0

    return-object v0
.end method
