.class public Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DSnapViewState"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;->a:Ljava/lang/String;

    .line 170
    iput-wide p2, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;->b:J

    .line 171
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$DSnapViewState;->b:J

    return-wide v0
.end method
