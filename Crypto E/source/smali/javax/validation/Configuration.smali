.class public interface abstract Ljavax/validation/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavax/validation/Configuration",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addMapping(Ljava/io/InputStream;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract addProperty(Ljava/lang/String;Ljava/lang/String;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract buildValidatorFactory()Ljavax/validation/ValidatorFactory;
.end method

.method public abstract constraintValidatorFactory(Ljavax/validation/ConstraintValidatorFactory;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/ConstraintValidatorFactory;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getBootstrapConfiguration()Ljavax/validation/BootstrapConfiguration;
.end method

.method public abstract getDefaultConstraintValidatorFactory()Ljavax/validation/ConstraintValidatorFactory;
.end method

.method public abstract getDefaultMessageInterpolator()Ljavax/validation/MessageInterpolator;
.end method

.method public abstract getDefaultParameterNameProvider()Ljavax/validation/ParameterNameProvider;
.end method

.method public abstract getDefaultTraversableResolver()Ljavax/validation/TraversableResolver;
.end method

.method public abstract ignoreXmlConfiguration()Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract messageInterpolator(Ljavax/validation/MessageInterpolator;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/MessageInterpolator;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract parameterNameProvider(Ljavax/validation/ParameterNameProvider;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/ParameterNameProvider;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract traversableResolver(Ljavax/validation/TraversableResolver;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/TraversableResolver;",
            ")TT;"
        }
    .end annotation
.end method
