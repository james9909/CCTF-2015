.class public abstract Lcom/snapchat/android/discover/model/DSnapbryo;
.super Lcom/snapchat/android/model/AnnotatedMediabryo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/DSnapbryo$Builder;
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/discover/DSnapMediaCompressor;

.field protected b:Lcom/snapchat/android/analytics/SnapbryoAnalytics;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->a(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->b(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 44
    new-instance v0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/SnapbryoAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->b:Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    .line 49
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->c(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->c:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->d(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->d:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->e(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->e:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->f(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->f:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->g(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Ljava/util/LinkedHashSet;)V

    .line 54
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->h(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 55
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->i(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Lcom/snapchat/android/model/Mediabryo$SendStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V

    .line 56
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->j(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Lcom/snapchat/android/model/Mediabryo$PostStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V

    .line 57
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->k(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->e(Z)V

    .line 58
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->l(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->b(Landroid/graphics/Bitmap;)V

    .line 59
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->m(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Landroid/net/Uri;)V

    .line 60
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->n(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->h(Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DSnapbryo$Builder;->o(Lcom/snapchat/android/discover/model/DSnapbryo$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Landroid/graphics/Bitmap;)V

    .line 62
    invoke-direct {p0}, Lcom/snapchat/android/discover/model/DSnapbryo;->Q()V

    .line 63
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/discover/model/DSnapbryo;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->O()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 44
    new-instance v0, Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/SnapbryoAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->b:Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    .line 67
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapbryo;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->c:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapbryo;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->d:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapbryo;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->e:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/snapchat/android/discover/model/DSnapbryo;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->f:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Ljava/util/LinkedHashSet;)V

    .line 72
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 73
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->K()Lcom/snapchat/android/model/Mediabryo$SendStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V

    .line 74
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->L()Lcom/snapchat/android/model/Mediabryo$PostStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V

    .line 75
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->P()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->e(Z)V

    .line 76
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->G()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->b(Landroid/graphics/Bitmap;)V

    .line 77
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->I()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Landroid/net/Uri;)V

    .line 78
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->h(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->s()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->d(Z)V

    .line 80
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->e(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->f(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->c(I)V

    .line 83
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->g(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->B()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Landroid/graphics/Bitmap;)V

    .line 85
    invoke-direct {p0}, Lcom/snapchat/android/discover/model/DSnapbryo;->Q()V

    .line 86
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/snapchat/android/discover/DSnapMediaCompressor;->a()Lcom/snapchat/android/discover/DSnapMediaCompressor;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->a:Lcom/snapchat/android/discover/DSnapMediaCompressor;

    .line 90
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-direct {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>()V

    .line 91
    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->g:Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->h:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->i:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->j:Ljava/util/HashMap;

    .line 95
    return-void
.end method

.method private b(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 182
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENT:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    if-ne p1, v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->b:Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->b()V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENDING:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENDING_ON_UPLOAD:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    if-ne p1, v0, :cond_3

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->b:Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->a()V

    goto :goto_0

    .line 186
    :cond_3
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    if-ne p1, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->b:Lcom/snapchat/android/analytics/SnapbryoAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapbryoAnalytics;->c()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    goto :goto_0
.end method

.method public abstract a()Lcom/snapchat/android/discover/model/DSnapbryo;
.end method

.method public a(Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;)V
    .locals 3
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;Z)V

    .line 106
    return-void
.end method

.method protected a(Lcom/snapchat/android/model/Mediabryo$SendStatus;Z)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V

    .line 175
    if-eqz p2, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->b(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V

    .line 178
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 100
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/SnapWomb;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 101
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public a(Ljava/util/LinkedHashSet;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Ljava/util/LinkedHashSet;)V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->i:Ljava/util/HashMap;

    .line 113
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapbryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 114
    iget-object v2, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->a:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a()Lcom/snapchat/android/discover/model/DSnapbryo;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method

.method public synthetic e()Lcom/snapchat/android/model/AnnotatedMediabryo;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapbryo;->a()Lcom/snapchat/android/discover/model/DSnapbryo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 220
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    .line 223
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/discover/model/DSnapbryo;

    if-nez v0, :cond_1

    .line 224
    const/4 v0, 0x0

    goto :goto_0

    .line 227
    :cond_1
    invoke-super {p0, p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    aput-object v0, v2, v1

    .line 123
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    return-object v2
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapbryo;->h:Ljava/lang/String;

    return-object v0
.end method
