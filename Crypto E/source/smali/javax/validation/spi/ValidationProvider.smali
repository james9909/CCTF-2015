.class public interface abstract Ljavax/validation/spi/ValidationProvider;
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
.method public abstract buildValidatorFactory(Ljavax/validation/spi/ConfigurationState;)Ljavax/validation/ValidatorFactory;
.end method

.method public abstract createGenericConfiguration(Ljavax/validation/spi/BootstrapState;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/spi/BootstrapState;",
            ")",
            "Ljavax/validation/Configuration",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract createSpecializedConfiguration(Ljavax/validation/spi/BootstrapState;)Ljavax/validation/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/spi/BootstrapState;",
            ")TT;"
        }
    .end annotation
.end method
