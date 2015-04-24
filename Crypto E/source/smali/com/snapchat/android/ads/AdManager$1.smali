.class Lcom/snapchat/android/ads/AdManager$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ads/AdManager;-><init>(Lcom/snapchat/android/ads/AdManagerConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/snapchat/android/ads/AdManager$AdResponseController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ads/AdManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ads/AdManager;IFZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/snapchat/android/ads/AdManager$1;->a:Lcom/snapchat/android/ads/AdManager;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/ads/AdManager$AdResponseController;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$1;->a:Lcom/snapchat/android/ads/AdManager;

    invoke-static {v0}, Lcom/snapchat/android/ads/AdManager;->a(Lcom/snapchat/android/ads/AdManager;)Lcom/snapchat/android/ads/AdManagerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ads/AdManagerConfiguration;->e()I

    move-result v3

    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/ads/AdManager$1;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 72
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ads/AdManager$AdResponseController;

    const-string v4, "Expired %s when hit max requests %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ads/AdManager$AdResponseController;->c(Ljava/lang/String;)V

    move v0, v1

    .line 76
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
