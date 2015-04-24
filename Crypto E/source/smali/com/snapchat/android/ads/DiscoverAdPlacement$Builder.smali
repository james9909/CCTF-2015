.class public Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ads/DiscoverAdPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->c:I

    .line 136
    return-object p0
.end method

.method public a(I)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;
    .locals 0
    .parameter

    .prologue
    .line 130
    iput p1, p0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->c:I

    .line 131
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public b(I)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;
    .locals 0
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->d:I

    .line 141
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public b()Lcom/snapchat/android/ads/DiscoverAdPlacement;
    .locals 6

    .prologue
    .line 145
    iget-object v0, p0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "editionName should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "channelName should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    new-instance v0, Lcom/snapchat/android/ads/DiscoverAdPlacement;

    iget-object v1, p0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->b:Ljava/lang/String;

    iget v3, p0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->c:I

    iget v4, p0, Lcom/snapchat/android/ads/DiscoverAdPlacement$Builder;->d:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ads/DiscoverAdPlacement;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/snapchat/android/ads/DiscoverAdPlacement$1;)V

    return-object v0
.end method
