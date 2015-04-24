.class public Lcom/snapchat/android/util/eventbus/ChatLinkClickedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/snapchat/android/util/chat/SnapchatUrlSpan;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/chat/SnapchatUrlSpan;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ChatLinkClickedEvent;->a:Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    .line 13
    return-void
.end method
