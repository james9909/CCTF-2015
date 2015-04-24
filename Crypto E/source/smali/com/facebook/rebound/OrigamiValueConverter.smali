.class public Lcom/facebook/rebound/OrigamiValueConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(D)D
    .locals 4
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x403e

    sub-double v0, p0, v0

    const-wide v2, 0x400cf5c28f5c28f6L

    mul-double/2addr v0, v2

    const-wide v2, 0x4068400000000000L

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static b(D)D
    .locals 4
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 14
    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x4068400000000000L

    sub-double v0, p0, v0

    const-wide v2, 0x400cf5c28f5c28f6L

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x403e

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static c(D)D
    .locals 4
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 18
    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4020

    sub-double v0, p0, v0

    const-wide/high16 v2, 0x4008

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4039

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static d(D)D
    .locals 4
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 22
    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x4039

    sub-double v0, p0, v0

    const-wide/high16 v2, 0x4008

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4020

    add-double/2addr v0, v2

    goto :goto_0
.end method
