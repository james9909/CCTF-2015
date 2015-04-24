.class Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatSharedDSnap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$1;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 589
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 590
    return-void
.end method
