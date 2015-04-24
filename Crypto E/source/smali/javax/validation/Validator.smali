.class public interface abstract Ljavax/validation/Validator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract forExecutables()Ljavax/validation/executable/ExecutableValidator;
.end method

.method public abstract getConstraintsForClass(Ljava/lang/Class;)Ljavax/validation/metadata/BeanDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavax/validation/metadata/BeanDescriptor;"
        }
    .end annotation
.end method

.method public abstract unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract validate(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/ConstraintViolation",
            "<TT;>;>;"
        }
    .end annotation
.end method

.method public varargs abstract validateProperty(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
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

.method public varargs abstract validateValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
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
