.class public final Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector$VideoRenditionDimensionComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoRenditionDimensionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/snapchat/data/gson/discover/VideoRendition;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/data/gson/discover/VideoRendition;Lcom/snapchat/data/gson/discover/VideoRendition;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoRendition;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoRendition;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 153
    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoRendition;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/snapchat/data/gson/discover/VideoRendition;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 154
    invoke-virtual {p2}, Lcom/snapchat/data/gson/discover/VideoRendition;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Lcom/snapchat/data/gson/discover/VideoRendition;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 155
    invoke-virtual {p2}, Lcom/snapchat/data/gson/discover/VideoRendition;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Lcom/snapchat/data/gson/discover/VideoRendition;->c()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 157
    if-eq v0, v2, :cond_0

    .line 158
    sub-int/2addr v0, v2

    .line 160
    :goto_0
    return v0

    :cond_0
    sub-int v0, v1, v3

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 147
    check-cast p1, Lcom/snapchat/data/gson/discover/VideoRendition;

    check-cast p2, Lcom/snapchat/data/gson/discover/VideoRendition;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/discover/ui/media/VideoRenditionSelector$VideoRenditionDimensionComparator;->a(Lcom/snapchat/data/gson/discover/VideoRendition;Lcom/snapchat/data/gson/discover/VideoRendition;)I

    move-result v0

    return v0
.end method
