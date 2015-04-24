.class public Lcom/snapchat/android/discover/controller/internal/ads/AnyAdPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/snapchat/android/util/Predicate",
        "<",
        "Lcom/snapchat/android/discover/model/DSnapPage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/model/DSnapPage;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->r()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/controller/internal/ads/AnyAdPredicate;->a(Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    return v0
.end method
