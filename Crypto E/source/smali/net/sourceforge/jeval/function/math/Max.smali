.class public Lnet/sourceforge/jeval/function/math/Max;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "max"

    return-object v0
.end method

.method public a(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 61
    .line 63
    const/16 v0, 0x2c

    invoke-static {p2, v0}, Lnet/sourceforge/jeval/function/FunctionHelper;->b(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 67
    new-instance v0, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v1, "Two numeric arguments are required."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 72
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 73
    new-instance v4, Ljava/lang/Double;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    new-instance v0, Lnet/sourceforge/jeval/function/FunctionResult;

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lnet/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Lnet/sourceforge/jeval/function/FunctionException;

    const-string v2, "Two numeric arguments are required."

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
