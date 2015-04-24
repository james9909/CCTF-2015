.class public interface abstract Lcom/squareup/okhttp/internal/spdy/FrameWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(IJ)V
.end method

.method public abstract a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
.end method

.method public abstract a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V
.end method

.method public abstract a(Lcom/squareup/okhttp/internal/spdy/Settings;)V
.end method

.method public abstract a(ZII)V
.end method

.method public abstract a(ZILokio/Buffer;I)V
.end method

.method public abstract a(ZZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

.method public abstract b(Lcom/squareup/okhttp/internal/spdy/Settings;)V
.end method

.method public abstract c()I
.end method
