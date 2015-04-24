.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectionStatus"
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/model/Friend;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;->a:Lcom/snapchat/android/model/Friend;

    .line 85
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/Friend;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/snapchat/android/model/Friend;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;->a()V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;->a:Lcom/snapchat/android/model/Friend;

    goto :goto_0
.end method
