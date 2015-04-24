.class public Lnet/sourceforge/jeval/ExpressionTree;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Object;

.field private c:Lnet/sourceforge/jeval/operator/Operator;

.field private d:Lnet/sourceforge/jeval/operator/Operator;

.field private e:Lnet/sourceforge/jeval/Evaluator;


# direct methods
.method public constructor <init>(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/Object;Ljava/lang/Object;Lnet/sourceforge/jeval/operator/Operator;Lnet/sourceforge/jeval/operator/Operator;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->a:Ljava/lang/Object;

    .line 35
    iput-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->b:Ljava/lang/Object;

    .line 38
    iput-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->c:Lnet/sourceforge/jeval/operator/Operator;

    .line 41
    iput-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->d:Lnet/sourceforge/jeval/operator/Operator;

    .line 44
    iput-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    .line 64
    iput-object p1, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    .line 65
    iput-object p2, p0, Lnet/sourceforge/jeval/ExpressionTree;->a:Ljava/lang/Object;

    .line 66
    iput-object p3, p0, Lnet/sourceforge/jeval/ExpressionTree;->b:Ljava/lang/Object;

    .line 67
    iput-object p4, p0, Lnet/sourceforge/jeval/ExpressionTree;->c:Lnet/sourceforge/jeval/operator/Operator;

    .line 68
    iput-object p5, p0, Lnet/sourceforge/jeval/ExpressionTree;->d:Lnet/sourceforge/jeval/operator/Operator;

    .line 69
    return-void
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 123
    .line 129
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->a:Ljava/lang/Object;

    instance-of v0, v0, Lnet/sourceforge/jeval/ExpressionTree;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->a:Ljava/lang/Object;

    check-cast v0, Lnet/sourceforge/jeval/ExpressionTree;

    invoke-virtual {v0, p1}, Lnet/sourceforge/jeval/ExpressionTree;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 134
    :try_start_0
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    move-object v4, v3

    .line 235
    :goto_0
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->b:Ljava/lang/Object;

    instance-of v0, v0, Lnet/sourceforge/jeval/ExpressionTree;

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->b:Ljava/lang/Object;

    check-cast v0, Lnet/sourceforge/jeval/ExpressionTree;

    invoke-virtual {v0, p1}, Lnet/sourceforge/jeval/ExpressionTree;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 240
    :try_start_1
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v8, v0

    move-object v0, v3

    move-object v3, v8

    .line 338
    :cond_0
    :goto_1
    if-eqz v2, :cond_11

    if-eqz v3, :cond_11

    .line 339
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->c:Lnet/sourceforge/jeval/operator/Operator;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v4, v5, v2, v3}, Lnet/sourceforge/jeval/operator/Operator;->a(DD)D

    move-result-wide v0

    .line 342
    invoke-virtual {p0}, Lnet/sourceforge/jeval/ExpressionTree;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 343
    invoke-virtual {p0}, Lnet/sourceforge/jeval/ExpressionTree;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lnet/sourceforge/jeval/operator/Operator;->a(D)D

    move-result-wide v0

    .line 346
    :cond_1
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_2
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    move-object v2, v3

    move-object v4, v1

    .line 138
    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->a:Ljava/lang/Object;

    instance-of v0, v0, Lnet/sourceforge/jeval/ExpressionOperand;

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->a:Ljava/lang/Object;

    check-cast v0, Lnet/sourceforge/jeval/ExpressionOperand;

    .line 143
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperand;->a()Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v2, v1}, Lnet/sourceforge/jeval/Evaluator;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v2, v1}, Lnet/sourceforge/jeval/Evaluator;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 150
    :try_start_2
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperand;->b()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 157
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperand;->b()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lnet/sourceforge/jeval/operator/Operator;->a(D)D

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    move-object v1, v3

    :goto_3
    move-object v2, v0

    move-object v4, v1

    .line 167
    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    const-string v2, "Expression is invalid."

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 162
    :cond_3
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperand;->b()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 163
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Invalid operand for unary operator."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_4
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->a:Ljava/lang/Object;

    instance-of v0, v0, Lnet/sourceforge/jeval/ParsedFunction;

    if-eqz v0, :cond_8

    .line 169
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->a:Ljava/lang/Object;

    check-cast v0, Lnet/sourceforge/jeval/ParsedFunction;

    .line 170
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->a()Lnet/sourceforge/jeval/function/Function;

    move-result-object v2

    .line 171
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->b()Ljava/lang/String;

    move-result-object v1

    .line 172
    iget-object v4, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v4, v1}, Lnet/sourceforge/jeval/Evaluator;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    iget-object v4, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v4}, Lnet/sourceforge/jeval/Evaluator;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 175
    iget-object v4, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v4, v1}, Lnet/sourceforge/jeval/Evaluator;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    :cond_5
    :try_start_3
    iget-object v4, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-interface {v2, v4, v1}, Lnet/sourceforge/jeval/function/Function;->a(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lnet/sourceforge/jeval/function/FunctionResult;->a()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v2}, Lnet/sourceforge/jeval/function/FunctionResult;->b()I

    move-result v4

    if-nez v4, :cond_6

    .line 186
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->c()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 190
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->c()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lnet/sourceforge/jeval/operator/Operator;->a(D)D

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    .line 196
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;
    :try_end_3
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 217
    :goto_5
    iget-object v1, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v1, v0}, Lnet/sourceforge/jeval/Evaluator;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 219
    :try_start_4
    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v0, v1

    move-object v1, v3

    :goto_6
    move-object v2, v0

    move-object v4, v1

    .line 225
    goto/16 :goto_0

    .line 198
    :cond_6
    :try_start_5
    invoke-virtual {v2}, Lnet/sourceforge/jeval/function/FunctionResult;->b()I

    move-result v2

    if-ne v2, v7, :cond_1b

    .line 202
    if-eqz p1, :cond_7

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v4}, Lnet/sourceforge/jeval/Evaluator;->a()C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v2}, Lnet/sourceforge/jeval/Evaluator;->a()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    :cond_7
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->c()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 209
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Invalid operand for unary operator."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_5 .. :try_end_5} :catch_2

    .line 213
    :catch_2
    move-exception v0

    .line 214
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 221
    :catch_3
    move-exception v0

    .line 222
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    const-string v2, "Expression is invalid."

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 226
    :cond_8
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->a:Ljava/lang/Object;

    if-eqz v0, :cond_19

    .line 227
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :catch_4
    move-exception v0

    move-object v0, v1

    .line 244
    goto/16 :goto_1

    .line 246
    :cond_9
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->b:Ljava/lang/Object;

    instance-of v0, v0, Lnet/sourceforge/jeval/ExpressionOperand;

    if-eqz v0, :cond_b

    .line 248
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->b:Ljava/lang/Object;

    check-cast v0, Lnet/sourceforge/jeval/ExpressionOperand;

    .line 249
    iget-object v1, p0, Lnet/sourceforge/jeval/ExpressionTree;->b:Ljava/lang/Object;

    check-cast v1, Lnet/sourceforge/jeval/ExpressionOperand;

    invoke-virtual {v1}, Lnet/sourceforge/jeval/ExpressionOperand;->a()Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v5, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v5, v1}, Lnet/sourceforge/jeval/Evaluator;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    iget-object v5, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v5, v1}, Lnet/sourceforge/jeval/Evaluator;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 256
    :try_start_6
    new-instance v5, Ljava/lang/Double;

    invoke-direct {v5, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    .line 262
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperand;->b()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 263
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperand;->b()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v0, v6, v7}, Lnet/sourceforge/jeval/operator/Operator;->a(D)D

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v3

    move-object v3, v1

    goto/16 :goto_1

    .line 258
    :catch_5
    move-exception v0

    .line 259
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    const-string v2, "Expression is invalid."

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 268
    :cond_a
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperand;->b()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 269
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Invalid operand for unary operator."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_b
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->b:Ljava/lang/Object;

    instance-of v0, v0, Lnet/sourceforge/jeval/ParsedFunction;

    if-eqz v0, :cond_f

    .line 275
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->b:Ljava/lang/Object;

    check-cast v0, Lnet/sourceforge/jeval/ParsedFunction;

    .line 276
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->a()Lnet/sourceforge/jeval/function/Function;

    move-result-object v5

    .line 277
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->b()Ljava/lang/String;

    move-result-object v1

    .line 278
    iget-object v6, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v6, v1}, Lnet/sourceforge/jeval/Evaluator;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    iget-object v6, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v6}, Lnet/sourceforge/jeval/Evaluator;->e()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 281
    iget-object v6, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v6, v1}, Lnet/sourceforge/jeval/Evaluator;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    :cond_c
    :try_start_7
    iget-object v6, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-interface {v5, v6, v1}, Lnet/sourceforge/jeval/function/Function;->a(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;

    move-result-object v5

    .line 287
    invoke-virtual {v5}, Lnet/sourceforge/jeval/function/FunctionResult;->a()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v5}, Lnet/sourceforge/jeval/function/FunctionResult;->b()I

    move-result v6

    if-nez v6, :cond_d

    .line 292
    new-instance v5, Ljava/lang/Double;

    invoke-direct {v5, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->c()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 296
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->c()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-interface {v0, v6, v7}, Lnet/sourceforge/jeval/operator/Operator;->a(D)D

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    .line 302
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;
    :try_end_7
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v0

    .line 323
    :goto_8
    iget-object v1, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v1, v0}, Lnet/sourceforge/jeval/Evaluator;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    :try_start_8
    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_7

    move-object v0, v3

    move-object v3, v1

    .line 329
    goto/16 :goto_1

    .line 304
    :cond_d
    :try_start_9
    invoke-virtual {v5}, Lnet/sourceforge/jeval/function/FunctionResult;->b()I

    move-result v5

    if-ne v5, v7, :cond_15

    .line 308
    if-eqz p1, :cond_e

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v6}, Lnet/sourceforge/jeval/Evaluator;->a()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lnet/sourceforge/jeval/ExpressionTree;->e:Lnet/sourceforge/jeval/Evaluator;

    invoke-virtual {v5}, Lnet/sourceforge/jeval/Evaluator;->a()C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    :cond_e
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->c()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 315
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Invalid operand for unary operator."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_9 .. :try_end_9} :catch_6

    .line 319
    :catch_6
    move-exception v0

    .line 320
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 327
    :catch_7
    move-exception v0

    .line 328
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    const-string v2, "Expression is invalid."

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 331
    :cond_f
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->b:Ljava/lang/Object;

    if-nez v0, :cond_10

    move-object v0, v3

    goto/16 :goto_1

    .line 334
    :cond_10
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_11
    if-eqz v4, :cond_12

    if-eqz v0, :cond_12

    .line 348
    iget-object v1, p0, Lnet/sourceforge/jeval/ExpressionTree;->c:Lnet/sourceforge/jeval/operator/Operator;

    invoke-interface {v1, v4, v0}, Lnet/sourceforge/jeval/operator/Operator;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 349
    :cond_12
    if-eqz v2, :cond_14

    if-nez v3, :cond_14

    .line 352
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->d:Lnet/sourceforge/jeval/operator/Operator;

    if-eqz v0, :cond_13

    .line 353
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->d:Lnet/sourceforge/jeval/operator/Operator;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lnet/sourceforge/jeval/operator/Operator;->a(D)D

    move-result-wide v0

    .line 361
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 358
    :cond_13
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_14
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v0, v1

    goto/16 :goto_8

    :cond_16
    move-object v0, v5

    goto/16 :goto_7

    :cond_17
    move-object v0, v1

    goto/16 :goto_1

    :cond_18
    move-object v0, v3

    move-object v3, v5

    goto/16 :goto_1

    :cond_19
    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_0

    :cond_1a
    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_6

    :cond_1b
    move-object v0, v1

    goto/16 :goto_5

    :cond_1c
    move-object v0, v2

    goto/16 :goto_4

    :cond_1d
    move-object v0, v3

    goto/16 :goto_3

    :cond_1e
    move-object v0, v2

    move-object v1, v3

    goto/16 :goto_3
.end method

.method public a()Lnet/sourceforge/jeval/operator/Operator;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lnet/sourceforge/jeval/ExpressionTree;->d:Lnet/sourceforge/jeval/operator/Operator;

    return-object v0
.end method
