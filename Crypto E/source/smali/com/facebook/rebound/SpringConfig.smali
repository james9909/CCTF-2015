.class public Lcom/facebook/rebound/SpringConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcom/facebook/rebound/SpringConfig;


# instance fields
.field public a:D

.field public b:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    const-wide/high16 v0, 0x4044

    const-wide/high16 v2, 0x401c

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->a(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/facebook/rebound/SpringConfig;->c:Lcom/facebook/rebound/SpringConfig;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/facebook/rebound/SpringConfig;->b:D

    .line 29
    iput-wide p3, p0, Lcom/facebook/rebound/SpringConfig;->a:D

    .line 30
    return-void
.end method

.method public static a(DD)Lcom/facebook/rebound/SpringConfig;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 39
    new-instance v0, Lcom/facebook/rebound/SpringConfig;

    invoke-static {p0, p1}, Lcom/facebook/rebound/OrigamiValueConverter;->a(D)D

    move-result-wide v2

    invoke-static {p2, p3}, Lcom/facebook/rebound/OrigamiValueConverter;->c(D)D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    return-object v0
.end method
