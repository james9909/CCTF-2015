.class public Lcom/snapchat/android/database/table/BaseIdToFileTable;
.super Lcom/snapchat/android/database/table/IdToFileTable;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/snapchat/android/util/cache/Cache;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/database/table/IdToFileTable;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/database/table/BaseIdToFileTable;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/snapchat/android/database/table/BaseIdToFileTable;->b:Lcom/snapchat/android/util/cache/Cache;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/database/table/BaseIdToFileTable;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/database/table/BaseIdToFileTable;->b:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/BaseIdToFileTable;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/util/Map;)V

    .line 31
    return-void
.end method

.method protected b(Lcom/snapchat/android/model/User;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/User;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/database/table/BaseIdToFileTable;->b:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0}, Lcom/snapchat/android/util/cache/Cache;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
