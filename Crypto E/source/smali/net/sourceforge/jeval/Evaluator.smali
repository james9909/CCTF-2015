.class public Lnet/sourceforge/jeval/Evaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;

.field private d:C

.field private e:Lnet/sourceforge/jeval/operator/Operator;

.field private f:Lnet/sourceforge/jeval/operator/Operator;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Stack;

.field private m:Ljava/util/Stack;

.field private n:Ljava/util/Stack;

.field private o:Ljava/util/Stack;

.field private p:Lnet/sourceforge/jeval/VariableResolver;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 238
    const/16 v1, 0x27

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jeval/Evaluator;-><init>(CZZZZ)V

    .line 239
    return-void
.end method

.method public constructor <init>(CZZZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->b:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->c:Ljava/util/Map;

    .line 193
    const/16 v0, 0x27

    iput-char v0, p0, Lnet/sourceforge/jeval/Evaluator;->d:C

    .line 196
    new-instance v0, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;

    invoke-direct {v0}, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->e:Lnet/sourceforge/jeval/operator/Operator;

    .line 199
    new-instance v0, Lnet/sourceforge/jeval/operator/ClosedParenthesesOperator;

    invoke-direct {v0}, Lnet/sourceforge/jeval/operator/ClosedParenthesesOperator;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->f:Lnet/sourceforge/jeval/operator/Operator;

    .line 215
    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->k:Ljava/lang/String;

    .line 218
    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->l:Ljava/util/Stack;

    .line 221
    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->m:Ljava/util/Stack;

    .line 224
    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->n:Ljava/util/Stack;

    .line 227
    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->o:Ljava/util/Stack;

    .line 230
    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->p:Lnet/sourceforge/jeval/VariableResolver;

    .line 268
    invoke-direct {p0}, Lnet/sourceforge/jeval/Evaluator;->f()V

    .line 271
    iput-boolean p2, p0, Lnet/sourceforge/jeval/Evaluator;->g:Z

    .line 272
    invoke-direct {p0}, Lnet/sourceforge/jeval/Evaluator;->h()V

    .line 275
    iput-boolean p3, p0, Lnet/sourceforge/jeval/Evaluator;->h:Z

    .line 276
    iput-boolean p4, p0, Lnet/sourceforge/jeval/Evaluator;->i:Z

    .line 277
    invoke-direct {p0}, Lnet/sourceforge/jeval/Evaluator;->g()V

    .line 280
    invoke-virtual {p0, p1}, Lnet/sourceforge/jeval/Evaluator;->a(C)V

    .line 283
    iput-boolean p5, p0, Lnet/sourceforge/jeval/Evaluator;->j:Z

    .line 284
    return-void
.end method

.method private a(ILnet/sourceforge/jeval/operator/Operator;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1071
    invoke-interface {p2}, Lnet/sourceforge/jeval/operator/Operator;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    .line 1073
    return v0
.end method

.method private a(Ljava/lang/String;IILjava/util/Stack;Lnet/sourceforge/jeval/operator/Operator;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 899
    .line 903
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 904
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    .line 911
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 912
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 915
    :cond_1
    new-instance v1, Lnet/sourceforge/jeval/ExpressionOperand;

    invoke-direct {v1, v0, p5}, Lnet/sourceforge/jeval/ExpressionOperand;-><init>(Ljava/lang/String;Lnet/sourceforge/jeval/operator/Operator;)V

    .line 917
    invoke-virtual {p4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    return p3
.end method

.method private a(Ljava/lang/String;ILnet/sourceforge/jeval/operator/Operator;Ljava/util/Stack;Ljava/util/Stack;ZLnet/sourceforge/jeval/operator/Operator;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 955
    .line 960
    if-eqz p6, :cond_0

    instance-of v0, p3, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-eqz v0, :cond_0

    .line 961
    invoke-direct {p0, p1, p2, p5}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/lang/String;ILjava/util/Stack;)Lnet/sourceforge/jeval/NextOperator;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Lnet/sourceforge/jeval/NextOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v1

    .line 965
    invoke-virtual {v0}, Lnet/sourceforge/jeval/NextOperator;->b()I

    move-result v0

    invoke-interface {v1}, Lnet/sourceforge/jeval/operator/Operator;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 967
    invoke-direct {p0, p1, v0, v3}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/lang/String;ILnet/sourceforge/jeval/operator/Operator;)Lnet/sourceforge/jeval/NextOperator;

    move-result-object v1

    .line 971
    if-eqz v1, :cond_2

    .line 972
    invoke-virtual {v1}, Lnet/sourceforge/jeval/NextOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object p3

    .line 973
    invoke-virtual {v1}, Lnet/sourceforge/jeval/NextOperator;->b()I

    move-result p2

    .line 981
    :cond_0
    instance-of v0, p3, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-eqz v0, :cond_3

    .line 982
    new-instance v0, Lnet/sourceforge/jeval/ExpressionOperator;

    invoke-direct {v0, p3, p7}, Lnet/sourceforge/jeval/ExpressionOperator;-><init>(Lnet/sourceforge/jeval/operator/Operator;Lnet/sourceforge/jeval/operator/Operator;)V

    .line 984
    invoke-virtual {p4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    :cond_1
    :goto_0
    invoke-interface {p3}, Lnet/sourceforge/jeval/operator/Operator;->c()I

    move-result v0

    add-int/2addr v0, p2

    .line 1053
    :cond_2
    return v0

    .line 985
    :cond_3
    instance-of v0, p3, Lnet/sourceforge/jeval/operator/ClosedParenthesesOperator;

    if-eqz v0, :cond_8

    .line 988
    invoke-virtual {p4}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 989
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/ExpressionOperator;

    .line 994
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    instance-of v0, v0, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-nez v0, :cond_5

    .line 995
    invoke-direct {p0, p5, p4}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/util/Stack;Ljava/util/Stack;)V

    .line 997
    invoke-virtual {p4}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 998
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/ExpressionOperator;

    goto :goto_1

    :cond_4
    move-object v0, v3

    .line 1000
    goto :goto_1

    .line 1004
    :cond_5
    invoke-virtual {p4}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1005
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_6
    invoke-virtual {p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lnet/sourceforge/jeval/ExpressionOperator;

    .line 1012
    invoke-virtual {v1}, Lnet/sourceforge/jeval/ExpressionOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    instance-of v0, v0, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-nez v0, :cond_7

    .line 1013
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_7
    invoke-virtual {v1}, Lnet/sourceforge/jeval/ExpressionOperator;->b()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1018
    invoke-virtual {p5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 1020
    new-instance v0, Lnet/sourceforge/jeval/ExpressionTree;

    invoke-virtual {v1}, Lnet/sourceforge/jeval/ExpressionOperator;->b()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v5

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jeval/ExpressionTree;-><init>(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/Object;Ljava/lang/Object;Lnet/sourceforge/jeval/operator/Operator;Lnet/sourceforge/jeval/operator/Operator;)V

    .line 1023
    invoke-virtual {p5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1027
    :cond_8
    invoke-virtual {p4}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 1028
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/ExpressionOperator;

    .line 1032
    :goto_2
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    invoke-interface {v0}, Lnet/sourceforge/jeval/operator/Operator;->b()I

    move-result v0

    invoke-interface {p3}, Lnet/sourceforge/jeval/operator/Operator;->b()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 1034
    invoke-direct {p0, p5, p4}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/util/Stack;Ljava/util/Stack;)V

    .line 1036
    invoke-virtual {p4}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1037
    invoke-virtual {p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/ExpressionOperator;

    goto :goto_2

    :cond_9
    move-object v0, v3

    .line 1040
    goto :goto_2

    .line 1045
    :cond_a
    new-instance v0, Lnet/sourceforge/jeval/ExpressionOperator;

    invoke-direct {v0, p3, p7}, Lnet/sourceforge/jeval/ExpressionOperator;-><init>(Lnet/sourceforge/jeval/operator/Operator;Lnet/sourceforge/jeval/operator/Operator;)V

    .line 1048
    invoke-virtual {p4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    move-object v0, v3

    goto/16 :goto_1
.end method

.method private a(Ljava/util/Stack;Ljava/util/Stack;Z)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1218
    .line 1221
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1222
    invoke-direct {p0, p2, p1}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/util/Stack;Ljava/util/Stack;)V

    goto :goto_0

    .line 1228
    :cond_0
    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 1229
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1232
    :cond_1
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    .line 1235
    instance-of v1, v0, Lnet/sourceforge/jeval/ExpressionTree;

    if-eqz v1, :cond_3

    .line 1237
    check-cast v0, Lnet/sourceforge/jeval/ExpressionTree;

    invoke-virtual {v0, p3}, Lnet/sourceforge/jeval/ExpressionTree;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 1325
    :cond_2
    :goto_1
    return-object v0

    .line 1241
    :cond_3
    instance-of v1, v0, Lnet/sourceforge/jeval/ExpressionOperand;

    if-eqz v1, :cond_5

    move-object v1, v0

    .line 1242
    check-cast v1, Lnet/sourceforge/jeval/ExpressionOperand;

    .line 1244
    check-cast v0, Lnet/sourceforge/jeval/ExpressionOperand;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperand;->a()Ljava/lang/String;

    move-result-object v0

    .line 1245
    invoke-virtual {p0, v0}, Lnet/sourceforge/jeval/Evaluator;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1249
    invoke-virtual {p0, v0}, Lnet/sourceforge/jeval/Evaluator;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1252
    :try_start_0
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    invoke-virtual {v1}, Lnet/sourceforge/jeval/ExpressionOperand;->b()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1259
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {v1}, Lnet/sourceforge/jeval/ExpressionOperand;->b()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lnet/sourceforge/jeval/operator/Operator;->a(D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .line 1265
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1253
    :catch_0
    move-exception v0

    .line 1254
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    const-string v2, "Expression is invalid."

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1267
    :cond_4
    invoke-virtual {v1}, Lnet/sourceforge/jeval/ExpressionOperand;->b()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1268
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Invalid operand for unary operator."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1272
    :cond_5
    instance-of v1, v0, Lnet/sourceforge/jeval/ParsedFunction;

    if-eqz v1, :cond_9

    .line 1273
    check-cast v0, Lnet/sourceforge/jeval/ParsedFunction;

    .line 1274
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->a()Lnet/sourceforge/jeval/function/Function;

    move-result-object v2

    .line 1275
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->b()Ljava/lang/String;

    move-result-object v1

    .line 1277
    iget-boolean v3, p0, Lnet/sourceforge/jeval/Evaluator;->j:Z

    if-eqz v3, :cond_6

    .line 1278
    invoke-virtual {p0, v1}, Lnet/sourceforge/jeval/Evaluator;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1281
    :cond_6
    invoke-virtual {p0, v1}, Lnet/sourceforge/jeval/Evaluator;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1285
    :try_start_1
    invoke-interface {v2, p0, v1}, Lnet/sourceforge/jeval/function/Function;->a(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/String;)Lnet/sourceforge/jeval/function/FunctionResult;

    move-result-object v2

    .line 1287
    invoke-virtual {v2}, Lnet/sourceforge/jeval/function/FunctionResult;->a()Ljava/lang/String;

    move-result-object v1

    .line 1289
    invoke-virtual {v2}, Lnet/sourceforge/jeval/function/FunctionResult;->b()I

    move-result v3

    if-nez v3, :cond_7

    .line 1292
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->c()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1296
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->c()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lnet/sourceforge/jeval/operator/Operator;->a(D)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object v0, v1

    .line 1302
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1304
    :cond_7
    invoke-virtual {v2}, Lnet/sourceforge/jeval/function/FunctionResult;->b()I

    move-result v2

    if-ne v2, v4, :cond_a

    .line 1308
    if-eqz p3, :cond_8

    .line 1309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v3, p0, Lnet/sourceforge/jeval/Evaluator;->d:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lnet/sourceforge/jeval/Evaluator;->d:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1313
    :cond_8
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ParsedFunction;->c()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1314
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Invalid operand for unary operator."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1318
    :catch_1
    move-exception v0

    .line 1319
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1322
    :cond_9
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Expression is invalid."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v0, v1

    goto/16 :goto_1

    :cond_b
    move-object v0, v2

    goto :goto_3

    :cond_c
    move-object v0, v2

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;ILjava/util/Stack;)Lnet/sourceforge/jeval/NextOperator;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1105
    const/4 v0, 0x1

    move v1, p2

    move-object v2, v3

    .line 1110
    :goto_0
    if-lez v0, :cond_3

    .line 1111
    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1, v3}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/lang/String;ILnet/sourceforge/jeval/operator/Operator;)Lnet/sourceforge/jeval/NextOperator;

    move-result-object v2

    .line 1114
    if-nez v2, :cond_0

    .line 1115
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Function is not closed."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_0
    invoke-virtual {v2}, Lnet/sourceforge/jeval/NextOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v1

    instance-of v1, v1, Lnet/sourceforge/jeval/operator/OpenParenthesesOperator;

    if-eqz v1, :cond_2

    .line 1117
    add-int/lit8 v0, v0, 0x1

    .line 1123
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lnet/sourceforge/jeval/NextOperator;->b()I

    move-result v1

    goto :goto_0

    .line 1118
    :cond_2
    invoke-virtual {v2}, Lnet/sourceforge/jeval/NextOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v1

    instance-of v1, v1, Lnet/sourceforge/jeval/operator/ClosedParenthesesOperator;

    if-eqz v1, :cond_1

    .line 1119
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1127
    :cond_3
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1131
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/ExpressionOperand;

    .line 1133
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperand;->b()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v3

    .line 1134
    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperand;->a()Ljava/lang/String;

    move-result-object v0

    .line 1138
    :try_start_0
    invoke-virtual {p0, v0}, Lnet/sourceforge/jeval/Evaluator;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    iget-object v4, p0, Lnet/sourceforge/jeval/Evaluator;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/function/Function;

    .line 1147
    if-nez v0, :cond_4

    .line 1148
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A function is not defined (index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1139
    :catch_0
    move-exception v1

    .line 1140
    new-instance v2, Lnet/sourceforge/jeval/EvaluationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid function name of \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1152
    :cond_4
    new-instance v4, Lnet/sourceforge/jeval/ParsedFunction;

    invoke-direct {v4, v0, v1, v3}, Lnet/sourceforge/jeval/ParsedFunction;-><init>(Lnet/sourceforge/jeval/function/Function;Ljava/lang/String;Lnet/sourceforge/jeval/operator/Operator;)V

    .line 1154
    invoke-virtual {p3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    return-object v2
.end method

.method private a(Ljava/lang/String;ILnet/sourceforge/jeval/operator/Operator;)Lnet/sourceforge/jeval/NextOperator;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1347
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v4

    .line 1350
    :goto_0
    if-ge p2, v5, :cond_6

    .line 1352
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p0, Lnet/sourceforge/jeval/Evaluator;->d:C

    if-ne v1, v2, :cond_7

    .line 1353
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 1357
    :goto_1
    rem-int/lit8 v0, v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1350
    :cond_0
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    goto :goto_0

    .line 1362
    :cond_1
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v3, v4

    .line 1363
    :goto_2
    if-ge v3, v6, :cond_0

    .line 1364
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/operator/Operator;

    .line 1366
    if-eqz p3, :cond_3

    .line 1369
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1363
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 1375
    :cond_3
    invoke-interface {v0}, Lnet/sourceforge/jeval/operator/Operator;->c()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_5

    .line 1377
    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v2, v7, :cond_4

    .line 1378
    add-int/lit8 v2, p2, 0x2

    .line 1384
    :goto_3
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lnet/sourceforge/jeval/operator/Operator;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1386
    new-instance v1, Lnet/sourceforge/jeval/NextOperator;

    invoke-direct {v1, v0, p2}, Lnet/sourceforge/jeval/NextOperator;-><init>(Lnet/sourceforge/jeval/operator/Operator;I)V

    move-object v0, v1

    .line 1404
    :goto_4
    return-object v0

    .line 1380
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_3

    .line 1393
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {v0}, Lnet/sourceforge/jeval/operator/Operator;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v2, v7, :cond_2

    .line 1395
    new-instance v1, Lnet/sourceforge/jeval/NextOperator;

    invoke-direct {v1, v0, p2}, Lnet/sourceforge/jeval/NextOperator;-><init>(Lnet/sourceforge/jeval/operator/Operator;I)V

    move-object v0, v1

    .line 1398
    goto :goto_4

    .line 1404
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    move v1, v0

    goto :goto_1
.end method

.method private a(Ljava/util/Stack;Ljava/util/Stack;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1170
    .line 1175
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1176
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    .line 1180
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1181
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .line 1185
    :goto_1
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/ExpressionOperator;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/ExpressionOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v4

    .line 1188
    new-instance v0, Lnet/sourceforge/jeval/ExpressionTree;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jeval/ExpressionTree;-><init>(Lnet/sourceforge/jeval/Evaluator;Ljava/lang/Object;Ljava/lang/Object;Lnet/sourceforge/jeval/operator/Operator;Lnet/sourceforge/jeval/operator/Operator;)V

    .line 1192
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    return-void

    :cond_0
    move-object v2, v5

    goto :goto_1

    :cond_1
    move-object v3, v5

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    iget-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->e:Lnet/sourceforge/jeval/operator/Operator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    iget-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->f:Lnet/sourceforge/jeval/operator/Operator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/AdditionOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/AdditionOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/SubtractionOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/SubtractionOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/MultiplicationOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/MultiplicationOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/DivisionOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/DivisionOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/EqualOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/EqualOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/NotEqualOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/NotEqualOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/LessThanOrEqualOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/LessThanOrEqualOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/LessThanOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/LessThanOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/GreaterThanOrEqualOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/GreaterThanOrEqualOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/GreaterThanOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/GreaterThanOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/BooleanAndOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/BooleanAndOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/BooleanOrOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/BooleanOrOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/BooleanNotOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/BooleanNotOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    new-instance v1, Lnet/sourceforge/jeval/operator/ModulusOperator;

    invoke-direct {v1}, Lnet/sourceforge/jeval/operator/ModulusOperator;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1518
    iget-boolean v0, p0, Lnet/sourceforge/jeval/Evaluator;->h:Z

    if-eqz v0, :cond_0

    .line 1519
    new-instance v0, Lnet/sourceforge/jeval/function/math/MathFunctions;

    invoke-direct {v0}, Lnet/sourceforge/jeval/function/math/MathFunctions;-><init>()V

    .line 1521
    invoke-interface {v0, p0}, Lnet/sourceforge/jeval/function/FunctionGroup;->a(Lnet/sourceforge/jeval/Evaluator;)V

    .line 1525
    :cond_0
    iget-boolean v0, p0, Lnet/sourceforge/jeval/Evaluator;->i:Z

    if-eqz v0, :cond_1

    .line 1526
    new-instance v0, Lnet/sourceforge/jeval/function/string/StringFunctions;

    invoke-direct {v0}, Lnet/sourceforge/jeval/function/string/StringFunctions;-><init>()V

    .line 1528
    invoke-interface {v0, p0}, Lnet/sourceforge/jeval/function/FunctionGroup;->a(Lnet/sourceforge/jeval/Evaluator;)V

    .line 1530
    :cond_1
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 1537
    iget-boolean v0, p0, Lnet/sourceforge/jeval/Evaluator;->g:Z

    if-eqz v0, :cond_0

    .line 1539
    const-string v0, "E"

    new-instance v1, Ljava/lang/Double;

    const-wide v2, 0x4005bf0a8b145769L

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    const-string v0, "PI"

    new-instance v1, Ljava/lang/Double;

    const-wide v2, 0x400921fb54442d18L

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :cond_0
    return-void
.end method


# virtual methods
.method public a()C
    .locals 1

    .prologue
    .line 292
    iget-char v0, p0, Lnet/sourceforge/jeval/Evaluator;->d:C

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 439
    iget-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->p:Lnet/sourceforge/jeval/VariableResolver;

    if-eqz v1, :cond_0

    .line 442
    :try_start_0
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->p:Lnet/sourceforge/jeval/VariableResolver;

    invoke-interface {v0, p1}, Lnet/sourceforge/jeval/VariableResolver;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sourceforge/jeval/function/FunctionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 452
    :cond_0
    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    :cond_1
    if-nez v0, :cond_2

    .line 459
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not resolve variable with name equal to \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    invoke-virtual {v0}, Lnet/sourceforge/jeval/function/FunctionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 464
    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lnet/sourceforge/jeval/Evaluator;->c(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->n:Ljava/util/Stack;

    iget-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->o:Ljava/util/Stack;

    invoke-direct {p0, v0, v1, p3}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/util/Stack;Ljava/util/Stack;Z)Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {p0, v0}, Lnet/sourceforge/jeval/Evaluator;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 620
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 623
    :cond_0
    return-object v0
.end method

.method public a(C)V
    .locals 2
    .parameter

    .prologue
    .line 306
    const/16 v0, 0x27

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22

    if-ne p1, v0, :cond_1

    .line 308
    :cond_0
    iput-char p1, p0, Lnet/sourceforge/jeval/Evaluator;->d:C

    .line 312
    return-void

    .line 310
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid quote character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lnet/sourceforge/jeval/Evaluator;->e(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lnet/sourceforge/jeval/Evaluator;->b:Ljava/util/Map;

    .line 396
    return-void
.end method

.method public a(Lnet/sourceforge/jeval/VariableResolver;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lnet/sourceforge/jeval/Evaluator;->p:Lnet/sourceforge/jeval/VariableResolver;

    .line 532
    return-void
.end method

.method public a(Lnet/sourceforge/jeval/function/Function;)V
    .locals 2
    .parameter

    .prologue
    .line 327
    invoke-interface {p1}, Lnet/sourceforge/jeval/function/Function;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sourceforge/jeval/Evaluator;->e(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->b:Ljava/util/Map;

    invoke-interface {p1}, Lnet/sourceforge/jeval/function/Function;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/function/Function;

    .line 333
    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->b:Ljava/util/Map;

    invoke-interface {p1}, Lnet/sourceforge/jeval/function/Function;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-void

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A function with the same name already exists."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 553
    invoke-virtual {p0, p1, v0, v0}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->b:Ljava/util/Map;

    return-object v0
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lnet/sourceforge/jeval/Evaluator;->c:Ljava/util/Map;

    .line 509
    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 13
    .parameter

    .prologue
    .line 746
    const/4 v0, 0x1

    .line 747
    iget-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    iput-object p1, p0, Lnet/sourceforge/jeval/Evaluator;->k:Ljava/lang/String;

    .line 756
    :goto_0
    if-eqz v0, :cond_7

    .line 758
    :try_start_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->o:Ljava/util/Stack;

    .line 759
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->n:Ljava/util/Stack;

    .line 762
    const/4 v7, 0x0

    .line 763
    const/4 v9, 0x0

    .line 764
    const/4 v5, 0x0

    .line 768
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    .line 769
    const/4 v2, 0x0

    .line 774
    :goto_1
    if-ge v2, v11, :cond_6

    .line 775
    const/4 v0, 0x0

    .line 776
    const/4 v3, -0x1

    .line 779
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnet/sourceforge/jeval/EvaluationHelper;->a(C)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 780
    add-int/lit8 v2, v2, 0x1

    .line 781
    goto :goto_1

    .line 750
    :cond_0
    const/4 v1, 0x0

    .line 751
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->l:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->n:Ljava/util/Stack;

    .line 752
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->m:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->o:Ljava/util/Stack;

    move v0, v1

    goto :goto_0

    .line 785
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p1, v2, v1}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/lang/String;ILnet/sourceforge/jeval/operator/Operator;)Lnet/sourceforge/jeval/NextOperator;

    move-result-object v12

    .line 788
    if-eqz v12, :cond_a

    .line 789
    invoke-virtual {v12}, Lnet/sourceforge/jeval/NextOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    .line 790
    invoke-virtual {v12}, Lnet/sourceforge/jeval/NextOperator;->b()I

    move-result v3

    move-object v10, v0

    .line 794
    :goto_2
    if-gt v3, v2, :cond_2

    const/4 v0, -0x1

    if-ne v3, v0, :cond_9

    .line 795
    :cond_2
    iget-object v4, p0, Lnet/sourceforge/jeval/Evaluator;->o:Ljava/util/Stack;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/lang/String;IILjava/util/Stack;Lnet/sourceforge/jeval/operator/Operator;)I

    move-result v0

    .line 798
    const/4 v7, 0x1

    .line 799
    const/4 v9, 0x0

    .line 800
    const/4 v8, 0x0

    .line 804
    :goto_3
    if-ne v3, v0, :cond_8

    .line 805
    invoke-virtual {v12}, Lnet/sourceforge/jeval/NextOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v1

    invoke-interface {v1}, Lnet/sourceforge/jeval/operator/Operator;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v9, :cond_3

    if-nez v0, :cond_5

    .line 807
    :cond_3
    invoke-virtual {v12}, Lnet/sourceforge/jeval/NextOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lnet/sourceforge/jeval/Evaluator;->a(ILnet/sourceforge/jeval/operator/Operator;)I

    move-result v0

    .line 810
    if-nez v8, :cond_4

    .line 812
    invoke-virtual {v12}, Lnet/sourceforge/jeval/NextOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v8

    .line 827
    :goto_4
    invoke-virtual {v12}, Lnet/sourceforge/jeval/NextOperator;->a()Lnet/sourceforge/jeval/operator/Operator;

    move-result-object v1

    instance-of v1, v1, Lnet/sourceforge/jeval/operator/ClosedParenthesesOperator;

    if-nez v1, :cond_8

    .line 828
    const/4 v7, 0x0

    .line 829
    const/4 v1, 0x1

    :goto_5
    move v2, v0

    move-object v5, v8

    move v9, v1

    .line 832
    goto :goto_1

    .line 814
    :cond_4
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consecutive unary operators are not allowed (index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 838
    :catch_0
    move-exception v0

    .line 840
    const-string v1, ""

    iput-object v1, p0, Lnet/sourceforge/jeval/Evaluator;->k:Ljava/lang/String;

    .line 842
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 820
    :cond_5
    :try_start_2
    iget-object v5, p0, Lnet/sourceforge/jeval/Evaluator;->n:Ljava/util/Stack;

    iget-object v6, p0, Lnet/sourceforge/jeval/Evaluator;->o:Ljava/util/Stack;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v10

    invoke-direct/range {v1 .. v8}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/lang/String;ILnet/sourceforge/jeval/operator/Operator;Ljava/util/Stack;Ljava/util/Stack;ZLnet/sourceforge/jeval/operator/Operator;)I

    move-result v0

    .line 824
    const/4 v8, 0x0

    goto :goto_4

    .line 835
    :cond_6
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->n:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->l:Ljava/util/Stack;

    .line 836
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    iput-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->m:Ljava/util/Stack;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 844
    :cond_7
    return-void

    :cond_8
    move v1, v9

    goto :goto_5

    :cond_9
    move v0, v2

    move-object v8, v5

    goto :goto_3

    :cond_a
    move-object v10, v0

    goto/16 :goto_2
.end method

.method public d()Lnet/sourceforge/jeval/VariableResolver;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->p:Lnet/sourceforge/jeval/VariableResolver;

    return-object v0
.end method

.method protected d(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1419
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lnet/sourceforge/jeval/Evaluator;->d:C

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lnet/sourceforge/jeval/Evaluator;->d:C

    if-ne v2, v3, :cond_0

    .line 1429
    :goto_0
    return v0

    .line 1425
    :cond_0
    iget-char v0, p0, Lnet/sourceforge/jeval/Evaluator;->d:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1426
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    const-string v1, "Invalid use of quotes."

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 1429
    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1457
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1458
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    .line 1459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not start with a number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1464
    :cond_1
    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v2, :cond_2

    .line 1465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a quote character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_2
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v2, :cond_3

    .line 1468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a quote character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1473
    :cond_3
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v2, :cond_4

    .line 1474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain an open brace character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1476
    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v2, :cond_5

    .line 1477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a closed brace character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1479
    :cond_5
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v2, :cond_6

    .line 1480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a pound sign character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1485
    :cond_6
    iget-object v0, p0, Lnet/sourceforge/jeval/Evaluator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1487
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1488
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sourceforge/jeval/operator/Operator;

    .line 1490
    invoke-interface {v0}, Lnet/sourceforge/jeval/operator/Operator;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_7

    .line 1491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain an operator symbol."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1498
    :cond_8
    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_9

    .line 1499
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a special character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1501
    :cond_9
    const-string v0, "~"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_a

    .line 1502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a special character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1504
    :cond_a
    const-string v0, "^"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_b

    .line 1505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a special character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1507
    :cond_b
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_c

    .line 1508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A variable or function name can not contain a special character."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1511
    :cond_c
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 1722
    iget-boolean v0, p0, Lnet/sourceforge/jeval/Evaluator;->j:Z

    return v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1560
    sget-object v0, Lnet/sourceforge/jeval/EvaluationConstants;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1562
    if-gez v0, :cond_0

    .line 1620
    :goto_0
    return-object p1

    :cond_0
    move v1, v0

    move-object v0, p1

    .line 1568
    :goto_1
    if-ltz v1, :cond_2

    .line 1571
    if-ltz v1, :cond_1

    .line 1573
    sget-object v2, Lnet/sourceforge/jeval/EvaluationConstants;->b:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1575
    if-le v2, v1, :cond_2

    .line 1577
    sget-object v3, Lnet/sourceforge/jeval/EvaluationConstants;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1584
    :try_start_0
    invoke-virtual {p0, v1}, Lnet/sourceforge/jeval/Evaluator;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    invoke-virtual {p0, v1}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lnet/sourceforge/jeval/EvaluationConstants;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lnet/sourceforge/jeval/EvaluationConstants;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1596
    invoke-static {v0, v1, v2}, Lnet/sourceforge/jeval/EvaluationHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1607
    :cond_1
    sget-object v1, Lnet/sourceforge/jeval/EvaluationConstants;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 1585
    :catch_0
    move-exception v0

    .line 1586
    new-instance v2, Lnet/sourceforge/jeval/EvaluationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid variable name of \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1612
    :cond_2
    sget-object v1, Lnet/sourceforge/jeval/EvaluationConstants;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1614
    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 1615
    new-instance v0, Lnet/sourceforge/jeval/EvaluationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A variable has not been closed (index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object p1, v0

    .line 1620
    goto/16 :goto_0
.end method

.method protected g(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x2c

    .line 1636
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1639
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1641
    new-instance v0, Lnet/sourceforge/jeval/Evaluator;

    iget-char v1, p0, Lnet/sourceforge/jeval/Evaluator;->d:C

    iget-boolean v2, p0, Lnet/sourceforge/jeval/Evaluator;->g:Z

    iget-boolean v3, p0, Lnet/sourceforge/jeval/Evaluator;->h:Z

    iget-boolean v4, p0, Lnet/sourceforge/jeval/Evaluator;->i:Z

    iget-boolean v5, p0, Lnet/sourceforge/jeval/Evaluator;->j:Z

    invoke-direct/range {v0 .. v5}, Lnet/sourceforge/jeval/Evaluator;-><init>(CZZZZ)V

    .line 1644
    invoke-virtual {p0}, Lnet/sourceforge/jeval/Evaluator;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/jeval/Evaluator;->a(Ljava/util/Map;)V

    .line 1645
    invoke-virtual {p0}, Lnet/sourceforge/jeval/Evaluator;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/jeval/Evaluator;->b(Ljava/util/Map;)V

    .line 1646
    invoke-virtual {p0}, Lnet/sourceforge/jeval/Evaluator;->d()Lnet/sourceforge/jeval/VariableResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sourceforge/jeval/Evaluator;->a(Lnet/sourceforge/jeval/VariableResolver;)V

    .line 1648
    new-instance v1, Lnet/sourceforge/jeval/ArgumentTokenizer;

    invoke-direct {v1, p1, v7}, Lnet/sourceforge/jeval/ArgumentTokenizer;-><init>(Ljava/lang/String;C)V

    .line 1651
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1652
    :goto_0
    invoke-virtual {v1}, Lnet/sourceforge/jeval/ArgumentTokenizer;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1654
    invoke-virtual {v1}, Lnet/sourceforge/jeval/ArgumentTokenizer;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1657
    :try_start_0
    invoke-virtual {v0, v3}, Lnet/sourceforge/jeval/Evaluator;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1662
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1658
    :catch_0
    move-exception v0

    .line 1659
    new-instance v1, Lnet/sourceforge/jeval/EvaluationException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/sourceforge/jeval/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1665
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1668
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1670
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1672
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1676
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1678
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1682
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
