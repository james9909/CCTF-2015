.class public Lnet/sourceforge/jeval/operator/ModulusOperator;
.super Lnet/sourceforge/jeval/operator/AbstractOperator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "%"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lnet/sourceforge/jeval/operator/AbstractOperator;-><init>(Ljava/lang/String;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(DD)D
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Double;

    rem-double v2, p1, p3

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method
