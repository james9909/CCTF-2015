.class Lcom/snapchat/android/fragments/chat/ChatFragment$9$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;->d:Lcom/snapchat/android/fragments/chat/ChatFragment$9;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/cash/CashtagParser;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;->d:Lcom/snapchat/android/fragments/chat/ChatFragment$9;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;

    iget v2, v2, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/cash/CashtagParser;->a(Landroid/widget/EditText;I)V

    .line 1105
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;->d:Lcom/snapchat/android/fragments/chat/ChatFragment$9;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->t(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1106
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;

    iget v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;->c:I

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->x(Ljava/lang/String;)V

    .line 1107
    return-void
.end method
