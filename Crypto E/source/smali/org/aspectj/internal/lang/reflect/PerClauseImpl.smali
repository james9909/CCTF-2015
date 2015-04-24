.class public Lorg/aspectj/internal/lang/reflect/PerClauseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/lang/reflect/PerClause;


# instance fields
.field private final a:Lorg/aspectj/lang/reflect/PerClauseKind;


# virtual methods
.method public a()Lorg/aspectj/lang/reflect/PerClauseKind;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/PerClauseImpl;->a:Lorg/aspectj/lang/reflect/PerClauseKind;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "issingleton()"

    return-object v0
.end method
