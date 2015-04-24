.class public Lcom/snapchat/android/discover/model/ChannelPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/ChannelPage$Builder;,
        Lcom/snapchat/android/discover/model/ChannelPage$MediaType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage;",
            ">;"
        }
    .end annotation
.end field

.field public static a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage$MediaType;",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage$MediaType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/discover/model/ChannelPage$MediaType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "ChannelPage"

    sput-object v0, Lcom/snapchat/android/discover/model/ChannelPage;->a:Ljava/lang/String;

    .line 389
    new-instance v0, Lcom/snapchat/android/discover/model/ChannelPage$1;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/ChannelPage$1;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/ChannelPage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    .line 38
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:Ljava/util/Map;

    .line 39
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->d:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->e:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->h:Z

    .line 92
    invoke-static {}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->values()[Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 93
    iget-object v4, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v4, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v4, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/snapchat/android/discover/model/MediaState;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 90
    goto :goto_0

    .line 97
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/snapchat/android/discover/model/ChannelPage$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/model/ChannelPage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    .line 53
    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->a(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->b(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->e:I

    .line 55
    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->c(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    .line 56
    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->d(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->d:I

    .line 57
    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->e(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->f(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    .line 59
    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->g(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->h:Z

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->a:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->h(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->b:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->i(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->c:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->j(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->d:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->k(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->a:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->l(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->b:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->m(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->c:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->n(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->d:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->o(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->a:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->p(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->b:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->q(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->c:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->r(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->k(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->d:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->d:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {p1}, Lcom/snapchat/android/discover/model/ChannelPage$Builder;->s(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/discover/model/ChannelPage$Builder;Lcom/snapchat/android/discover/model/ChannelPage$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/model/ChannelPage;-><init>(Lcom/snapchat/android/discover/model/ChannelPage$Builder;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$MediaType;
    .locals 3
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    .line 202
    iget-object v1, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/snapchat/android/discover/model/ChannelPage$MediaType;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->b:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->c:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->d:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->a:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->e:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->v()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->u()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->s()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->t()Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->a:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->b:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->c:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->d:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public s()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->b:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public t()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->c:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->d:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public v()Lcom/snapchat/android/discover/model/MediaState;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->a:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/ChannelPage;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    invoke-static {}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->values()[Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 383
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->k:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->j:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->i:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/MediaState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 380
    goto :goto_0

    .line 387
    :cond_1
    return-void
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/ChannelPage;->h:Z

    return v0
.end method
