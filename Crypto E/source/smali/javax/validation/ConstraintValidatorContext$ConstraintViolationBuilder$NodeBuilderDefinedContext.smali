.class public interface abstract Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$NodeBuilderDefinedContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NodeBuilderDefinedContext"
.end annotation


# virtual methods
.method public abstract addBeanNode()Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$LeafNodeBuilderCustomizableContext;
.end method

.method public abstract addConstraintViolation()Ljavax/validation/ConstraintValidatorContext;
.end method

.method public abstract addNode(Ljava/lang/String;)Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$NodeBuilderCustomizableContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addPropertyNode(Ljava/lang/String;)Ljavax/validation/ConstraintValidatorContext$ConstraintViolationBuilder$NodeBuilderCustomizableContext;
.end method
