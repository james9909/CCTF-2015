.class public Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$1;,
        Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->a:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    iput-object v0, p0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->a:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->b:I

    .line 20
    iput p1, p0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->b:I

    .line 21
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->a:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 32
    sget-object v0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$1;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->a:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    const-string v0, ""

    .line 44
    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    const v0, 0x7f0c00a4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 38
    :pswitch_1
    const v0, 0x7f0c00ad

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_2
    const v0, 0x7f0c022d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_3
    const-string v0, ""

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->a:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    .line 25
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->b:I

    return v0
.end method
