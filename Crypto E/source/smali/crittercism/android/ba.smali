.class public final Lcrittercism/android/ba;
.super Lcom/crittercism/app/CrittercismConfig;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/crittercism/app/CrittercismConfig;-><init>()V

    .line 28
    const-string v0, "https://api.crittercism.com"

    iput-object v0, p0, Lcrittercism/android/ba;->a:Ljava/lang/String;

    .line 30
    const-string v0, "https://apm.crittercism.com"

    iput-object v0, p0, Lcrittercism/android/ba;->b:Ljava/lang/String;

    .line 32
    const-string v0, "524c99a04002057fcd000001"

    iput-object v0, p0, Lcrittercism/android/ba;->c:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/crittercism/app/CrittercismConfig;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/crittercism/app/CrittercismConfig;-><init>(Lcom/crittercism/app/CrittercismConfig;)V

    .line 28
    const-string v0, "https://api.crittercism.com"

    iput-object v0, p0, Lcrittercism/android/ba;->a:Ljava/lang/String;

    .line 30
    const-string v0, "https://apm.crittercism.com"

    iput-object v0, p0, Lcrittercism/android/ba;->b:Ljava/lang/String;

    .line 32
    const-string v0, "524c99a04002057fcd000001"

    iput-object v0, p0, Lcrittercism/android/ba;->c:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/crittercism/app/CrittercismConfig;->a()Ljava/util/List;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcrittercism/android/ba;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 96
    instance-of v0, p1, Lcrittercism/android/ba;

    if-nez v0, :cond_0

    move v0, v1

    .line 103
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 100
    check-cast v0, Lcrittercism/android/ba;

    .line 103
    invoke-super {p0, p1}, Lcom/crittercism/app/CrittercismConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcrittercism/android/ba;->a:Ljava/lang/String;

    iget-object v3, v0, Lcrittercism/android/ba;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcrittercism/android/ba;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcrittercism/android/ba;->b:Ljava/lang/String;

    iget-object v3, v0, Lcrittercism/android/ba;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcrittercism/android/ba;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcrittercism/android/ba;->c:Ljava/lang/String;

    iget-object v0, v0, Lcrittercism/android/ba;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcrittercism/android/ba;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Lcom/crittercism/app/CrittercismConfig;->hashCode()I

    move-result v0

    .line 118
    mul-int/lit8 v0, v0, 0x1f

    .line 119
    iget-object v1, p0, Lcrittercism/android/ba;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget-object v1, p0, Lcrittercism/android/ba;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    .line 123
    iget-object v1, p0, Lcrittercism/android/ba;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcrittercism/android/ba;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcrittercism/android/ba;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcrittercism/android/ba;->c:Ljava/lang/String;

    return-object v0
.end method
