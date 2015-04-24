.class public Lcom/snapchat/android/util/eventbus/SharedStoryFriendButtonClickedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/snapchat/android/model/Friend;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Friend;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/SharedStoryFriendButtonClickedEvent;->a:Lcom/snapchat/android/model/Friend;

    .line 10
    return-void
.end method
