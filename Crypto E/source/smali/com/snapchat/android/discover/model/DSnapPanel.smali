.class public Lcom/snapchat/android/discover/model/DSnapPanel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/DSnapPanel$1;,
        Lcom/snapchat/android/discover/model/DSnapPanel$Builder;,
        Lcom/snapchat/android/discover/model/DSnapPanel$Docking;,
        Lcom/snapchat/android/discover/model/DSnapPanel$Mode;,
        Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.field private final e:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final f:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Lcom/snapchat/android/discover/model/MediaState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->a(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->a:Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->b(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->b:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->c(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->c:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->d(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->d:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->e(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->e:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    .line 93
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->f(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->f:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 94
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->g(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    .line 95
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->h(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->h:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    .line 96
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->i(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->i:Lcom/snapchat/android/discover/model/MediaState;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;Lcom/snapchat/android/discover/model/DSnapPanel$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/model/DSnapPanel;-><init>(Lcom/snapchat/android/discover/model/DSnapPanel$Builder;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/snapchat/data/gson/discover/VideoCatalogResponse;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->e:Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    return-object v0
.end method

.method public f()Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->f:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method

.method public g()Lcom/snapchat/android/discover/model/DSnapPanel$Mode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->g:Lcom/snapchat/android/discover/model/DSnapPanel$Mode;

    return-object v0
.end method

.method public h()Lcom/snapchat/android/discover/model/DSnapPanel$Docking;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->h:Lcom/snapchat/android/discover/model/DSnapPanel$Docking;

    return-object v0
.end method

.method public i()Lcom/snapchat/android/discover/model/MediaState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->i:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DSnapPanel-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->f:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPanel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
