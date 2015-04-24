.class public final Lcom/snapchat/android/model/chat/ChatConversation$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;"
    }
.end annotation


# instance fields
.field private mGsonWrapper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/GsonWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mSendingCashManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/cash/SendingCashManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSlightlySecurePreferences:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    const/4 v0, 0x0

    const-string v1, "members/com.snapchat.android.model.chat.ChatConversation"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation$$InjectAdapter;->mSlightlySecurePreferences:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    iput-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSlightlySecurePreferences:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation$$InjectAdapter;->mSendingCashManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/cash/SendingCashManager;

    iput-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mSendingCashManager:Lcom/snapchat/android/cash/SendingCashManager;

    .line 63
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation$$InjectAdapter;->mGsonWrapper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/GsonWrapper;

    iput-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;

    .line 64
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    const-string v0, "com.snapchat.android.util.crypto.SlightlySecurePreferences"

    const-class v1, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation$$InjectAdapter;->mSlightlySecurePreferences:Ldagger/internal/Binding;

    .line 40
    const-string v0, "com.snapchat.android.cash.SendingCashManager"

    const-class v1, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation$$InjectAdapter;->mSendingCashManager:Ldagger/internal/Binding;

    .line 41
    const-string v0, "com.snapchat.android.util.GsonWrapper"

    const-class v1, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation$$InjectAdapter;->mGsonWrapper:Ldagger/internal/Binding;

    .line 42
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/chat/ChatConversation$$InjectAdapter;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

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
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation$$InjectAdapter;->mSlightlySecurePreferences:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation$$InjectAdapter;->mSendingCashManager:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversation$$InjectAdapter;->mGsonWrapper:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
