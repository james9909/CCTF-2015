.class public Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;
.super Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;
.source "SourceFile"


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/snapchat/android/model/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;-><init>(Ljavax/inject/Provider;)V

    .line 34
    return-void
.end method

.method constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;->a:Ljavax/inject/Provider;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->P()Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->INCOMING:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v0, v1, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;->d(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;->c(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;->a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected d(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;->g(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;->f(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected e(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;->b:Lcom/snapchat/android/model/User;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;->b:Lcom/snapchat/android/model/User;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;->b:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;->b:Lcom/snapchat/android/model/User;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;->e(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const v0, 0x7f0c010a

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->S()Lcom/snapchat/android/model/Friend$AddSourceType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_QR_CODE:Lcom/snapchat/android/model/Friend$AddSourceType;

    if-ne v0, v1, :cond_1

    .line 73
    const v0, 0x7f0c0026

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->S()Lcom/snapchat/android/model/Friend$AddSourceType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_PHONE:Lcom/snapchat/android/model/Friend$AddSourceType;

    if-ne v0, v1, :cond_2

    .line 75
    const v0, 0x7f0c0025

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->S()Lcom/snapchat/android/model/Friend$AddSourceType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_USERNAME:Lcom/snapchat/android/model/Friend$AddSourceType;

    if-ne v0, v1, :cond_3

    .line 77
    const v0, 0x7f0c0027

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;->f(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const v1, 0x7f0c017d

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
