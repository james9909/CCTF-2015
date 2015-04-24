.class public interface abstract Ljavax/validation/ConstraintValidatorContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder;
    }
.end annotation


# virtual methods
.method public abstract buildConstraintViolationWithTemplate(Ljava/lang/String;)Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder;
.end method

.method public abstract disableDefaultConstraintViolation()V
.end method

.method public abstract getDefaultConstraintMessageTemplate()Ljava/lang/String;
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
