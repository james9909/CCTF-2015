.class public interface abstract Ljavax/validation/ConstraintValidatorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getInstance(Ljava/lang/Class;)Ljavax/validation/ConstraintValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/validation/ConstraintValidator",
            "<**>;>(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract releaseInstance(Ljavax/validation/ConstraintValidator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/ConstraintValidator",
            "<**>;)V"
        }
    .end annotation
.end method
