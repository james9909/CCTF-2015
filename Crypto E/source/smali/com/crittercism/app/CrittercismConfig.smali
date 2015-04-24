.class public Lcom/crittercism/app/CrittercismConfig;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->b:Z

    .line 21
    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->d:Z

    .line 23
    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    .line 24
    invoke-static {}, Lcom/crittercism/app/CrittercismConfig;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    .line 25
    const-string v0, "com.crittercism/dumps"

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->g:Ljava/lang/String;

    .line 26
    const-string v0, "Developer Reply"

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/crittercism/app/CrittercismConfig;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->b:Z

    .line 21
    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->d:Z

    .line 23
    iput-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    .line 24
    invoke-static {}, Lcom/crittercism/app/CrittercismConfig;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    .line 25
    const-string v0, "com.crittercism/dumps"

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->g:Ljava/lang/String;

    .line 26
    const-string v0, "Developer Reply"

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    .line 57
    iget-object v0, p1, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    .line 58
    iget-boolean v0, p1, Lcom/crittercism/app/CrittercismConfig;->b:Z

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->b:Z

    .line 59
    iget-boolean v0, p1, Lcom/crittercism/app/CrittercismConfig;->c:Z

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    .line 60
    iget-boolean v0, p1, Lcom/crittercism/app/CrittercismConfig;->d:Z

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->d:Z

    .line 61
    iget-boolean v0, p1, Lcom/crittercism/app/CrittercismConfig;->e:Z

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    .line 62
    iget-boolean v0, p1, Lcom/crittercism/app/CrittercismConfig;->f:Z

    iput-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    .line 63
    iget-object v0, p1, Lcom/crittercism/app/CrittercismConfig;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->g:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/util/List;)V

    .line 66
    iget-object v0, p1, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/crittercism/app/CrittercismConfig;->b(Ljava/util/List;)V

    .line 67
    iget-object v0, p1, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 206
    if-eqz p0, :cond_0

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 210
    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 158
    if-nez p0, :cond_1

    .line 159
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static final k()Z
    .locals 2

    .prologue
    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_0
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 136
    instance-of v1, p1, Lcom/crittercism/app/CrittercismConfig;

    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    check-cast p1, Lcom/crittercism/app/CrittercismConfig;

    .line 142
    iget-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->b:Z

    iget-boolean v2, p1, Lcom/crittercism/app/CrittercismConfig;->b:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    iget-boolean v2, p1, Lcom/crittercism/app/CrittercismConfig;->e:Z

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->g()Z

    move-result v1

    invoke-virtual {p1}, Lcom/crittercism/app/CrittercismConfig;->g()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->i()Z

    move-result v1

    invoke-virtual {p1}, Lcom/crittercism/app/CrittercismConfig;->i()Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->f()Z

    move-result v1

    invoke-virtual {p1}, Lcom/crittercism/app/CrittercismConfig;->f()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/app/CrittercismConfig;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    iget-object v2, p1, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    iget-object v2, p1, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->c:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->d:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 174
    mul-int/lit8 v0, v0, 0x1f

    .line 175
    iget-object v3, p0, Lcom/crittercism/app/CrittercismConfig;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 176
    mul-int/lit8 v0, v0, 0x1f

    .line 177
    iget-object v3, p0, Lcom/crittercism/app/CrittercismConfig;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 178
    mul-int/lit8 v0, v0, 0x1f

    .line 179
    iget-object v3, p0, Lcom/crittercism/app/CrittercismConfig;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/crittercism/app/CrittercismConfig;->a(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 180
    mul-int/lit8 v0, v0, 0x1f

    .line 181
    iget-object v3, p0, Lcom/crittercism/app/CrittercismConfig;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    .line 183
    iget-object v3, p0, Lcom/crittercism/app/CrittercismConfig;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    .line 185
    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x0

    .line 188
    shl-int/lit8 v4, v0, 0x1

    .line 189
    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->e:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    .line 190
    shl-int/lit8 v4, v0, 0x1

    .line 191
    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    .line 192
    shl-int/lit8 v4, v0, 0x1

    .line 193
    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v4

    .line 194
    shl-int/lit8 v0, v0, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/crittercism/app/CrittercismConfig;->f()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 197
    mul-int/lit8 v1, v3, 0x1f

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 200
    return v0

    :cond_0
    move v0, v2

    .line 185
    goto :goto_0

    :cond_1
    move v0, v2

    .line 189
    goto :goto_1

    :cond_2
    move v0, v2

    .line 191
    goto :goto_2

    :cond_3
    move v0, v2

    .line 193
    goto :goto_3

    :cond_4
    move v1, v2

    .line 195
    goto :goto_4
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/crittercism/app/CrittercismConfig;->f:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/crittercism/app/CrittercismConfig;->g:Ljava/lang/String;

    return-object v0
.end method
