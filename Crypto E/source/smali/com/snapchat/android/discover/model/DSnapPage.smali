.class public Lcom/snapchat/android/discover/model/DSnapPage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/DSnapPage$1;,
        Lcom/snapchat/android/discover/model/DSnapPage$Builder;,
        Lcom/snapchat/android/discover/model/DSnapPage$Form;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:I

.field private final f:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Lcom/snapchat/android/discover/model/MediaState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lcom/snapchat/android/discover/model/MediaState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final o:Z

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/model/DSnapPanel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->b(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->b:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->c(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    .line 69
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->d(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->e(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->f(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->i:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->g(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->j:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->h(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->i(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->c:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->j(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->l:Ljava/lang/Integer;

    .line 76
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->k(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    .line 77
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->l(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->m:Lcom/snapchat/android/discover/model/MediaState;

    .line 78
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->m(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->n:Lcom/snapchat/android/discover/model/MediaState;

    .line 79
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->n(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->p:Ljava/util/Map;

    .line 80
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/discover/model/DSnapPage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    .line 81
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->o(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->o:Z

    .line 82
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/discover/model/DSnapPage$Builder;Lcom/snapchat/android/discover/model/DSnapPage$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/model/DSnapPage;-><init>(Lcom/snapchat/android/discover/model/DSnapPage$Builder;)V

    return-void
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 223
    :cond_1
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 224
    if-ltz v1, :cond_0

    .line 226
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 228
    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 229
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 230
    aget-object v6, v5, v2

    .line 231
    const-string v7, "ad_key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 233
    array-length v1, v5

    if-le v1, v8, :cond_0

    .line 234
    aget-object v0, v5, v8

    goto :goto_0

    .line 228
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->i:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->e:I

    return v0
.end method

.method public k()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->n:Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->m:Lcom/snapchat/android/discover/model/MediaState;

    .line 157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->n:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_0
.end method

.method public l()Lcom/snapchat/android/discover/model/MediaState;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->m:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public m()Lcom/snapchat/android/discover/model/MediaState;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->n:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public n()Lcom/snapchat/android/discover/model/DSnapPanel;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->p:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->a:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPanel;

    return-object v0
.end method

.method public o()Lcom/snapchat/android/discover/model/DSnapPanel;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->p:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPanel;

    return-object v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->b:Ljava/lang/String;

    const-string v1, "auto_advancing"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->d:Ljava/lang/String;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/DSnapPage;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 244
    const-string v1, "DSnap-%s-%s-%s-%s-%s"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->j()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Content"

    goto :goto_0
.end method
