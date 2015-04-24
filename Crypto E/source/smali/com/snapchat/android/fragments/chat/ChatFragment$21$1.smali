.class Lcom/snapchat/android/fragments/chat/ChatFragment$21$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$21;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment$21;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$21;)V
    .locals 0
    .parameter

    .prologue
    .line 2231
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$21$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$21$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$21;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$21;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2235
    return-void
.end method
