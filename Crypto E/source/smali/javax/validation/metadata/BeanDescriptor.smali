.class public interface abstract Ljavax/validation/metadata/BeanDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/validation/metadata/ElementDescriptor;


# virtual methods
.method public abstract getConstrainedConstructors()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/metadata/ConstructorDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getConstrainedMethods(Ljavax/validation/metadata/MethodType;[Ljavax/validation/metadata/MethodType;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/validation/metadata/MethodType;",
            "[",
            "Ljavax/validation/metadata/MethodType;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/metadata/MethodDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConstrainedProperties()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/metadata/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract getConstraintsForConstructor([Ljava/lang/Class;)Ljavax/validation/metadata/ConstructorDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavax/validation/metadata/ConstructorDescriptor;"
        }
    .end annotation
.end method

.method public varargs abstract getConstraintsForMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljavax/validation/metadata/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavax/validation/metadata/MethodDescriptor;"
        }
    .end annotation
.end method

.method public abstract getConstraintsForProperty(Ljava/lang/String;)Ljavax/validation/metadata/PropertyDescriptor;
.end method

.method public abstract isBeanConstrained()Z
.end method
