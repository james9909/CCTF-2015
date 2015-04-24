.class public Lcom/snapchat/android/util/chat/ChatMessagePaginator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x1e

    iput v0, p0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->a:I

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->b:I

    .line 17
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x1e

    iput v0, p0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->a:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->b:I

    .line 22
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->b:I

    .line 40
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->a:I

    iget v1, p0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->b:I

    if-ge v0, v1, :cond_0

    .line 30
    iget v0, p0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->a:I

    add-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->a:I

    .line 32
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->a:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->a:I

    iget v1, p0, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
