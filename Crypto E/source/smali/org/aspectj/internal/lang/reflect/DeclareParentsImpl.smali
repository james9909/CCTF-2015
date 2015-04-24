.class public Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/lang/reflect/DeclareParents;


# instance fields
.field private a:Lorg/aspectj/lang/reflect/TypePattern;

.field private b:Ljava/lang/String;

.field private c:Z


# virtual methods
.method public a()Lorg/aspectj/lang/reflect/TypePattern;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->a:Lorg/aspectj/lang/reflect/TypePattern;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    const-string v0, "declare parents : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->a()Lorg/aspectj/lang/reflect/TypePattern;

    move-result-object v0

    invoke-interface {v0}, Lorg/aspectj/lang/reflect/TypePattern;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " extends "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/DeclareParentsImpl;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    const-string v0, " implements "

    goto :goto_0
.end method
