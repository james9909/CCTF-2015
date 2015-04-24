.class public Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/snapchat/android/util/cache/FileUtils;

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private a(Ljava/lang/String;)J
    .locals 3
    .parameter

    .prologue
    .line 153
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    const-wide/16 v0, 0x0

    .line 155
    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 157
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 159
    :cond_0
    return-wide v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LRU is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->c:Ljava/util/Queue;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    :goto_0
    iget-wide v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->d:J

    iget-wide v2, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 94
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Evicting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->a(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 44
    const-string v0, "MaxSizeKeyToUriMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing file for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 46
    const-wide/16 v0, 0x0

    .line 47
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    invoke-direct {p0, v2}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->a(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 53
    if-eqz v0, :cond_0

    .line 54
    const-string v1, "MaxSizeKeyToUriMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Size of removedObject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-wide v4, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->d:J

    sub-long v2, v4, v2

    iput-wide v2, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->d:J

    .line 57
    :cond_0
    return-object v0

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->b(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-object p2

    .line 74
    :cond_0
    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->b:Lcom/snapchat/android/util/cache/FileUtils;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/cache/FileUtils;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 76
    iget-wide v4, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->d:J

    sub-long v2, v4, v2

    iput-wide v2, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->d:J

    .line 77
    invoke-direct {p0, v0}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->a(Ljava/lang/String;)J

    .line 79
    :cond_1
    if-eqz p2, :cond_2

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->b:Lcom/snapchat/android/util/cache/FileUtils;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/util/cache/FileUtils;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 81
    iget-wide v2, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->d:J

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->b(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->a()V

    move-object p2, v0

    .line 86
    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 124
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->b(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->d:J

    .line 104
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->d:J

    long-to-int v0, v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/snapchat/android/util/cache/MaxSizeKeyToUriMap;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
