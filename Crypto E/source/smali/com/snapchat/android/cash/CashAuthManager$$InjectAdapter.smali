.class public final Lcom/snapchat/android/cash/CashAuthManager$$InjectAdapter;
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
        "Lcom/snapchat/android/cash/CashAuthManager;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/cash/CashAuthManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/cash/CashAuthManager;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/GsonWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "com.snapchat.android.cash.CashAuthManager"

    const-string v1, "members/com.snapchat.android.cash.CashAuthManager"

    const/4 v2, 0x1

    const-class v3, Lcom/snapchat/android/cash/CashAuthManager;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/cash/CashAuthManager;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/snapchat/android/cash/CashAuthManager;

    invoke-direct {v0}, Lcom/snapchat/android/cash/CashAuthManager;-><init>()V

    .line 60
    invoke-virtual {p0, v0}, Lcom/snapchat/android/cash/CashAuthManager$$InjectAdapter;->a(Lcom/snapchat/android/cash/CashAuthManager;)V

    .line 61
    return-object v0
.end method

.method public a(Lcom/snapchat/android/cash/CashAuthManager;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/snapchat/android/cash/CashAuthManager$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    iput-object v0, p1, Lcom/snapchat/android/cash/CashAuthManager;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/cash/CashAuthManager$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/GsonWrapper;

    iput-object v0, p1, Lcom/snapchat/android/cash/CashAuthManager;->b:Lcom/snapchat/android/util/GsonWrapper;

    .line 72
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    const-string v0, "com.snapchat.android.util.crypto.SlightlySecurePreferences"

    const-class v1, Lcom/snapchat/android/cash/CashAuthManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/cash/CashAuthManager$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 40
    const-string v0, "com.snapchat.android.util.GsonWrapper"

    const-class v1, Lcom/snapchat/android/cash/CashAuthManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/cash/CashAuthManager$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 41
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/android/cash/CashAuthManager;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/cash/CashAuthManager$$InjectAdapter;->a(Lcom/snapchat/android/cash/CashAuthManager;)V

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
    iget-object v0, p0, Lcom/snapchat/android/cash/CashAuthManager$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/cash/CashAuthManager$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/cash/CashAuthManager$$InjectAdapter;->a()Lcom/snapchat/android/cash/CashAuthManager;

    move-result-object v0

    return-object v0
.end method
