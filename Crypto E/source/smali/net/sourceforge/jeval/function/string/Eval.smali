.class public Lnet/sourceforge/jeval/function/string/Eval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "eval"

    return-object v0
.end method

.method public a(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 61
    .line 64
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v2, v3}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/lang/String;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/jeval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 71
    :try_start_1
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :goto_0
    new-instance v1, Lnet/sourceforge/jeval/function/FunctionResult;

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/EvaluationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 72
    :catch_1
    move-exception v0

    move v0, v1

    .line 73
    goto :goto_0
.end method
