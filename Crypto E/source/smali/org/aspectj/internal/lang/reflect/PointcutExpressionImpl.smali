.class public Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/lang/reflect/PointcutExpression;


# instance fields
.field private a:Ljava/lang/String;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/PointcutExpressionImpl;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
