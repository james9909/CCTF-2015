.class public Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelViewState"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;->a:Ljava/lang/String;

    .line 149
    iput-wide p2, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;->b:J

    .line 150
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$ChannelViewState;->b:J

    return-wide v0
.end method
