.class public Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;->a:I

    .line 13
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;->b:Ljava/lang/String;

    .line 14
    return-void
.end method
