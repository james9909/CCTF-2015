.class public Lorg/aspectj/internal/lang/reflect/AjTypeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/aspectj/lang/reflect/AjType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/aspectj/lang/reflect/AjType",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:[Lorg/aspectj/lang/reflect/Pointcut;

.field private c:[Lorg/aspectj/lang/reflect/Pointcut;

.field private d:[Lorg/aspectj/lang/reflect/Advice;

.field private e:[Lorg/aspectj/lang/reflect/Advice;

.field private f:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

.field private g:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

.field private h:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

.field private i:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

.field private j:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

.field private k:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->b:[Lorg/aspectj/lang/reflect/Pointcut;

    .line 71
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->c:[Lorg/aspectj/lang/reflect/Pointcut;

    .line 72
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->d:[Lorg/aspectj/lang/reflect/Advice;

    .line 73
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->e:[Lorg/aspectj/lang/reflect/Advice;

    .line 74
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->f:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    .line 75
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->g:[Lorg/aspectj/lang/reflect/InterTypeMethodDeclaration;

    .line 76
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->h:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    .line 77
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->i:[Lorg/aspectj/lang/reflect/InterTypeFieldDeclaration;

    .line 78
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->j:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    .line 79
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->k:[Lorg/aspectj/lang/reflect/InterTypeConstructorDeclaration;

    .line 82
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    .line 83
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 1151
    instance-of v0, p1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1153
    :goto_0
    return v0

    .line 1152
    :cond_0
    check-cast p1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;

    .line 1153
    iget-object v0, p1, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1177
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/AjTypeImpl;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
