.class public Lcom/snapchat/android/util/chat/SecureChatService$SecureChatBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/chat/SecureChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecureChatBinder"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/chat/SecureChatService;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/chat/SecureChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatBinder;->a:Lcom/snapchat/android/util/chat/SecureChatService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/chat/SecureChatService;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatService$SecureChatBinder;->a:Lcom/snapchat/android/util/chat/SecureChatService;

    return-object v0
.end method
