.class public Lcom/facebook/rebound/SpringSystem;
.super Lcom/facebook/rebound/BaseSpringSystem;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/SpringClock;Lcom/facebook/rebound/SpringLooper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/facebook/rebound/BaseSpringSystem;-><init>(Lcom/facebook/rebound/SpringClock;Lcom/facebook/rebound/SpringLooper;)V

    .line 20
    return-void
.end method

.method public static d()Lcom/facebook/rebound/SpringSystem;
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/rebound/SpringSystem;

    new-instance v1, Lcom/facebook/rebound/SpringClock;

    invoke-direct {v1}, Lcom/facebook/rebound/SpringClock;-><init>()V

    invoke-static {}, Lcom/facebook/rebound/AndroidSpringLooperFactory;->a()Lcom/facebook/rebound/SpringLooper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/rebound/SpringSystem;-><init>(Lcom/facebook/rebound/SpringClock;Lcom/facebook/rebound/SpringLooper;)V

    return-object v0
.end method
