.class public Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/eventbus/ReplyEventInterface;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;->a:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;->b:I

    .line 10
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;->b:I

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
