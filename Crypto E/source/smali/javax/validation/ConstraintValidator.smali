.class public interface abstract Ljavax/validation/ConstraintValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Ljava/lang/annotation/Annotation;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract initialize(Ljava/lang/annotation/Annotation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation
.end method

.method public abstract isValid(Ljava/lang/Object;Ljavax/validation/ConstraintValidatorContext;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavax/validation/ConstraintValidatorContext;",
            ")Z"
        }
    .end annotation
.end method
