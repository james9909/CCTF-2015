.class public Lcom/snapchat/android/discover/model/DSnapPanel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DSnapPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field private f:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

.field private g:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

.field private h:Lcom/snapchat/android/discover/model/MediaState;

.field private i:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->d:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-eq v0, v1, :cond_0

    .line 169
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    const-string v1, "Cannot build dsnap panel with null uri."

    const-string v2, "uri"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;

    const-string v1, "Cannot build dsnap panel with null media type."

    const-string v2, "media_type"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/handledexceptions/BadDiscoverContentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Lcom/snapchat/data/gson/discover/VideoCatalogResponse;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->i:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Lcom/snapchat/android/discover/model/DSnapPanel$Mode;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->f:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->g:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 1
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->h:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->h:Lcom/snapchat/android/discover/model/MediaState;

    .line 222
    return-object p0
.end method

.method public a(Lcom/snapchat/data/gson/discover/VideoCatalogResponse;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->i:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    .line 178
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->a:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public a()Lcom/snapchat/android/discover/model/DSnapPanel;
    .locals 2

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->b()V

    .line 228
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->f:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    if-nez v0, :cond_0

    .line 229
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->a:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->f:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->g:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    if-nez v0, :cond_1

    .line 233
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->a:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->g:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->h:Lcom/snapchat/android/discover/model/MediaState;

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->a()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->h:Lcom/snapchat/android/discover/model/MediaState;

    .line 241
    :cond_2
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/discover/model/DSnapPanel;-><init>(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;Lcom/snapchat/android/discover/model/DSnapPanel$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->b:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->c:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->d:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;
    .locals 1
    .parameter

    .prologue
    .line 202
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->e:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 203
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$Mode;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->f:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    .line 210
    :cond_0
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$Docking;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->g:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    .line 217
    :cond_0
    return-object p0
.end method
