.class public Lcom/snapchat/android/util/eventbus/LoadConversationPageTaskEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/LoadConversationPageTaskEvent;->a:Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    .line 10
    return-void
.end method
