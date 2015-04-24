.class public final Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;
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
        "Lcom/snapchat/android/fragments/chat/ChatFragment;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/fragments/chat/ChatFragment;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/fragments/chat/ChatFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/cash/CashtagParser;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/cash/SendingCashManager;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/cash/ReceivingCashManager;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    const-string v0, "com.snapchat.android.fragments.chat.ChatFragment"

    const-string v1, "members/com.snapchat.android.fragments.chat.ChatFragment"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/fragments/chat/ChatFragment;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;-><init>()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 67
    return-object v0
.end method

.method public a(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/cash/CashtagParser;

    iput-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/cash/CashtagParser;

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/cash/SendingCashManager;

    iput-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/cash/SendingCashManager;

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/cash/ReceivingCashManager;

    iput-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatFragment;->g:Lcom/snapchat/android/cash/ReceivingCashManager;

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->a(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 6
    .parameter

    .prologue
    .line 41
    const-string v0, "com.snapchat.android.cash.CashtagParser"

    const-class v1, Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.snapchat.android.cash.SendingCashManager"

    const-class v1, Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 43
    const-string v0, "com.snapchat.android.cash.ReceivingCashManager"

    const-class v1, Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 44
    const-string v1, "members/com.snapchat.android.util.fragment.SnapchatFragment"

    const-class v2, Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 45
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

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
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$$InjectAdapter;->a()Lcom/snapchat/android/fragments/chat/ChatFragment;

    move-result-object v0

    return-object v0
.end method
