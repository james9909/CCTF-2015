.class public Lnet/sourceforge/jeval/function/string/Trim;
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
    const-string v0, "trim"

    return-object v0
.end method

.method public a(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 66
    .line 67
    const-string v1, "One string argument is required."

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lnet/sourceforge/jeval/Evaluator;->a()C

    move-result v0

    invoke-static {p2, v0}, Lnet/sourceforge/jeval/function/FunctionHelper;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 82
    new-instance v1, Lnet/sourceforge/jeval/function/FunctionResult;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lnet/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 78
    :catch_1
    move-exception v0

    .line 79
    new-instance v2, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-direct {v2, v1, v0}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
