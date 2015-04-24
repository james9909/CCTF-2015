.class Lcom/snapchat/android/fragments/chat/ChatFragment$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$8;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment$8;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$8;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->c(Lcom/snapchat/android/fragments/chat/ChatFragment;F)V

    .line 1067
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$8$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$8;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$8;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/chat/ChatMediaExpander;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/chat/ChatMediaExpander;->a()V

    .line 1068
    return-void
.end method
