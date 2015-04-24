.class public Lnet/sourceforge/jeval/function/string/StartsWith;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sourceforge/jeval/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "startsWith"

    return-object v0
.end method

.method public a(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 74
    .line 75
    const-string v1, "Two string arguments and one integer argument are required."

    .line 78
    const/16 v0, 0x2c

    invoke-static {p2, v0}, Lnet/sourceforge/jeval/function/FunctionHelper;->e(Ljava/lang/String;C)Ljava/util/ArrayList;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 82
    new-instance v0, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sourceforge/jeval/Evaluator;->a()C

    move-result v3

    invoke-static {v0, v3}, Lnet/sourceforge/jeval/function/FunctionHelper;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 88
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/sourceforge/jeval/Evaluator;->a()C

    move-result v4

    invoke-static {v0, v4}, Lnet/sourceforge/jeval/function/FunctionHelper;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 90
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "1.0"
    :try_end_0
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :goto_0
    new-instance v1, Lnet/sourceforge/jeval/function/FunctionResult;

    invoke-direct {v1, v0, v5}, Lnet/sourceforge/jeval/function/FunctionResult;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 95
    :cond_1
    :try_start_1
    const-string v0, "0.0"
    :try_end_1
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    new-instance v2, Lnet/sourceforge/jeval/function/FunctionException;

    invoke-direct {v2, v1, v0}, Lnet/sourceforge/jeval/function/FunctionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
