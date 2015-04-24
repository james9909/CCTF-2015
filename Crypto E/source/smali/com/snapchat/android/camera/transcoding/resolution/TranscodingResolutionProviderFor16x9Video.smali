.class public Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProviderFor16x9Video;
.super Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/Resolution;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/transcoding/resolution/TranscodingResolutionProvider;-><init>(Lcom/snapchat/android/util/Resolution;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v1, Lcom/snapchat/android/util/Resolution;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lcom/snapchat/android/util/Resolution;

    const/16 v2, 0x400

    const/16 v3, 0x240

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lcom/snapchat/android/util/Resolution;

    const/16 v2, 0x3c0

    const/16 v3, 0x21c

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/snapchat/android/util/Resolution;

    const/16 v2, 0x360

    const/16 v3, 0x1e6

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcom/snapchat/android/util/Resolution;

    const/16 v2, 0x320

    const/16 v3, 0x1c2

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lcom/snapchat/android/util/Resolution;

    const/16 v2, 0x280

    const/16 v3, 0x168

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lcom/snapchat/android/util/Resolution;

    const/16 v2, 0x1e0

    const/16 v3, 0x10e

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-object v0
.end method
