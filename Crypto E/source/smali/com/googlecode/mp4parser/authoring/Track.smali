.class public interface abstract Lcom/googlecode/mp4parser/authoring/Track;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()[J
.end method

.method public abstract c()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
.end method

.method public abstract d()Ljava/lang/String;
.end method
