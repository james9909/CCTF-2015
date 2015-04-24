.class public interface abstract Ljavax/validation/executable/ExecutableValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public varargs abstract validateConstructorParameters(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor",
            "<+TT;>;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/ConstraintViolation",
            "<TT;>;>;"
        }
    .end annotation
.end method

.method public varargs abstract validateConstructorReturnValue(Ljava/lang/reflect/Constructor;Ljava/lang/Object;[Ljava/lang/Class;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor",
            "<+TT;>;TT;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/ConstraintViolation",
            "<TT;>;>;"
        }
    .end annotation
.end method

.method public varargs abstract validateParameters(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/ConstraintViolation",
            "<TT;>;>;"
        }
    .end annotation
.end method

.method public varargs abstract validateReturnValue(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Class;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/ConstraintViolation",
            "<TT;>;>;"
        }
    .end annotation
.end method
