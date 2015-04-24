.class public interface abstract Ljavax/validation/metadata/ElementDescriptor$ConstraintFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/metadata/ElementDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConstraintFinder"
.end annotation


# virtual methods
.method public varargs abstract declaredOn([Ljava/lang/annotation/ElementType;)Ljavax/validation/metadata/ElementDescriptor$ConstraintFinder;
.end method

.method public abstract getConstraintDescriptors()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/validation/metadata/ConstraintDescriptor",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract hasConstraints()Z
.end method

.method public abstract lookingAt(Ljavax/validation/metadata/Scope;)Ljavax/validation/metadata/ElementDescriptor$ConstraintFinder;
.end method

.method public varargs abstract unorderedAndMatchingGroups([Ljava/lang/Class;)Ljavax/validation/metadata/ElementDescriptor$ConstraintFinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavax/validation/metadata/ElementDescriptor$ConstraintFinder;"
        }
    .end annotation
.end method
