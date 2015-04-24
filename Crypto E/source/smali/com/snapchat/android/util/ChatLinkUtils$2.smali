.class final Lcom/snapchat/android/util/ChatLinkUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/ChatLinkUtils;->a(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/snapchat/android/util/LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/util/LinkSpec;Lcom/snapchat/android/util/LinkSpec;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 377
    iget v2, p1, Lcom/snapchat/android/util/LinkSpec;->c:I

    iget v3, p2, Lcom/snapchat/android/util/LinkSpec;->c:I

    if-ge v2, v3, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    iget v2, p1, Lcom/snapchat/android/util/LinkSpec;->c:I

    iget v3, p2, Lcom/snapchat/android/util/LinkSpec;->c:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 382
    goto :goto_0

    .line 385
    :cond_2
    iget v2, p1, Lcom/snapchat/android/util/LinkSpec;->d:I

    iget v3, p2, Lcom/snapchat/android/util/LinkSpec;->d:I

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 386
    goto :goto_0

    .line 389
    :cond_3
    iget v1, p1, Lcom/snapchat/android/util/LinkSpec;->d:I

    iget v2, p2, Lcom/snapchat/android/util/LinkSpec;->d:I

    if-gt v1, v2, :cond_0

    .line 393
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 375
    check-cast p1, Lcom/snapchat/android/util/LinkSpec;

    check-cast p2, Lcom/snapchat/android/util/LinkSpec;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/ChatLinkUtils$2;->a(Lcom/snapchat/android/util/LinkSpec;Lcom/snapchat/android/util/LinkSpec;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method
