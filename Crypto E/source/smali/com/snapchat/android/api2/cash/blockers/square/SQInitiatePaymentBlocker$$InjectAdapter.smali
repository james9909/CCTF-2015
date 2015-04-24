.class public final Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;
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
        "Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;",
        ">;"
    }
.end annotation


# instance fields
.field private mCashCardManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/cash/CashCardManager;",
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

.field private mSquareProvider:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/api2/cash/square/SquareProvider;",
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
    .line 31
    const-string v0, "com.snapchat.android.api2.cash.blockers.square.SQInitiatePaymentBlocker"

    const-string v1, "members/com.snapchat.android.api2.cash.blockers.square.SQInitiatePaymentBlocker"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-direct {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;-><init>()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;)V

    .line 67
    return-object v0
.end method

.method public a(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->mSquareProvider:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/square/SquareProvider;

    iput-object v0, p1, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->mSquareProvider:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->mCashCardManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/cash/CashCardManager;

    iput-object v0, p1, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->mCashCardManager:Lcom/snapchat/android/cash/CashCardManager;

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->mCashErrorReporter:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/CashErrorReporter;

    iput-object v0, p1, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->a(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 6
    .parameter

    .prologue
    .line 41
    const-string v0, "com.snapchat.android.api2.cash.square.SquareProvider"

    const-class v1, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->mSquareProvider:Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.snapchat.android.cash.CashCardManager"

    const-class v1, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->mCashCardManager:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.snapchat.android.api2.cash.CashErrorReporter"

    const-class v1, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->mCashErrorReporter:Ldagger/internal/Binding;

    .line 44
    const-string v1, "members/com.snapchat.android.api2.cash.blockers.Blocker"

    const-class v2, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    .line 45
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;)V

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
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->mSquareProvider:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->mCashCardManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->mCashErrorReporter:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$$InjectAdapter;->a()Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;

    move-result-object v0

    return-object v0
.end method
