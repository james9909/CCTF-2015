.class public final Lcom/snapchat/android/util/system/ClockProvider$$InjectAdapter;
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
        "Lcom/snapchat/android/util/system/ClockProvider;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/util/system/ClockProvider;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/util/system/ClockProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/system/Clock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "com.snapchat.android.util.system.ClockProvider"

    const-string v1, "members/com.snapchat.android.util.system.ClockProvider"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/util/system/ClockProvider;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/system/ClockProvider;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/snapchat/android/util/system/ClockProvider;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/ClockProvider;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/system/ClockProvider$$InjectAdapter;->a(Lcom/snapchat/android/util/system/ClockProvider;)V

    .line 58
    return-object v0
.end method

.method public a(Lcom/snapchat/android/util/system/ClockProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/util/system/ClockProvider$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/system/Clock;

    iput-object v0, p1, Lcom/snapchat/android/util/system/ClockProvider;->a:Lcom/snapchat/android/util/system/Clock;

    .line 68
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    const-string v0, "com.snapchat.android.util.system.Clock"

    const-class v1, Lcom/snapchat/android/util/system/ClockProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/system/ClockProvider$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 39
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/android/util/system/ClockProvider;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/system/ClockProvider$$InjectAdapter;->a(Lcom/snapchat/android/util/system/ClockProvider;)V

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
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/util/system/ClockProvider$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/util/system/ClockProvider$$InjectAdapter;->a()Lcom/snapchat/android/util/system/ClockProvider;

    move-result-object v0

    return-object v0
.end method
