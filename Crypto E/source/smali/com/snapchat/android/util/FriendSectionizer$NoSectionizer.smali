.class public Lcom/snapchat/android/util/FriendSectionizer$NoSectionizer;
.super Lcom/snapchat/android/util/FriendSectionizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/FriendSectionizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoSectionizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/FriendSectionizer",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/util/FriendSectionizer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NONE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 110
    check-cast p1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/FriendSectionizer$NoSectionizer;->a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v0

    return-object v0
.end method