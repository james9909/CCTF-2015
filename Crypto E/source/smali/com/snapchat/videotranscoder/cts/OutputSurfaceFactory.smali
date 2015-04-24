.class public Lcom/snapchat/videotranscoder/cts/OutputSurfaceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([FLjava/lang/String;)Lcom/snapchat/videotranscoder/cts/OutputSurface;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 22
    new-instance v0, Lcom/snapchat/videotranscoder/cts/OutputSurface;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/videotranscoder/cts/OutputSurface;-><init>([FLjava/lang/String;)V

    return-object v0
.end method
