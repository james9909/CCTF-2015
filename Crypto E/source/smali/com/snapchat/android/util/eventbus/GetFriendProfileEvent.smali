.class public Lcom/snapchat/android/util/eventbus/GetFriendProfileEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/model/Friend;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Friend;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/GetFriendProfileEvent;->a:Lcom/snapchat/android/model/Friend;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/Friend;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/GetFriendProfileEvent;->a:Lcom/snapchat/android/model/Friend;

    return-object v0
.end method
