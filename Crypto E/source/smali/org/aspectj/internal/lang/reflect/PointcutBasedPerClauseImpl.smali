.class public Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;
.super Lorg/aspectj/internal/lang/reflect/PerClauseImpl;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/lang/reflect/PointcutBasedPerClause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl$1;
    }
.end annotation


# instance fields
.field private final a:Lorg/aspectj/lang/reflect/PointcutExpression;


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    sget-object v1, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl$1;->a:[I

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;->a()Lorg/aspectj/lang/reflect/PerClauseKind;

    move-result-object v2

    invoke-virtual {v2}, Lorg/aspectj/lang/reflect/PerClauseKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 45
    :goto_0
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/PointcutBasedPerClauseImpl;->a:Lorg/aspectj/lang/reflect/PointcutExpression;

    invoke-interface {v1}, Lorg/aspectj/lang/reflect/PointcutExpression;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :pswitch_0
    const-string v1, "percflow("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 41
    :pswitch_1
    const-string v1, "percflowbelow("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 42
    :pswitch_2
    const-string v1, "pertarget("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 43
    :pswitch_3
    const-string v1, "perthis("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
