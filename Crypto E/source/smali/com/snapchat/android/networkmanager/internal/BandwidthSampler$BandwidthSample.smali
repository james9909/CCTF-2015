.class Lcom/snapchat/android/networkmanager/internal/BandwidthSampler$BandwidthSample;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/networkmanager/internal/BandwidthSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BandwidthSample"
.end annotation


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/snapchat/android/networkmanager/internal/BandwidthSampler$BandwidthSample;->a:J

    .line 21
    return-void
.end method
