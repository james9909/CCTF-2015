.class public interface abstract Ljavax/validation/Path$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Node"
.end annotation


# virtual methods
.method public abstract as(Ljava/lang/Class;)Ljavax/validation/Path$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/validation/Path$Node;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getIndex()Ljava/lang/Integer;
.end method

.method public abstract getKey()Ljava/lang/Object;
.end method

.method public abstract getKind()Ljavax/validation/ElementKind;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isInIterable()Z
.end method
