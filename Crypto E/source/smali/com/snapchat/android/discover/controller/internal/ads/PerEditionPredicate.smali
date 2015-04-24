.class public Lcom/snapchat/android/discover/controller/internal/ads/PerEditionPredicate;
.super Lcom/snapchat/android/discover/controller/internal/ads/AnyAdPredicate;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/snapchat/android/discover/controller/internal/ads/AnyAdPredicate;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/ads/PerEditionPredicate;->a:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/model/DSnapPage;)Z
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/snapchat/android/discover/controller/internal/ads/AnyAdPredicate;->a(Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/ads/PerEditionPredicate;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/controller/internal/ads/PerEditionPredicate;->a(Lcom/snapchat/android/discover/model/DSnapPage;)Z

    move-result v0

    return v0
.end method
