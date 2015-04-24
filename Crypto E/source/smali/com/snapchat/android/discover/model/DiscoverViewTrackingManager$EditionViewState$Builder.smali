.class public Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->b:I

    .line 90
    iput v1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->d:I

    .line 91
    iput v1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->e:I

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build EditionViewState with null ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;
    .locals 0
    .parameter

    .prologue
    .line 104
    iput p1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->b:I

    .line 105
    return-object p0
.end method

.method public a(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->a(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a:Ljava/lang/String;

    .line 123
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->b(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->b:I

    .line 124
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->c(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->c:Z

    .line 125
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->d(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->d:I

    .line 126
    invoke-static {p1}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->e(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->e:I

    .line 128
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public a(Z)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->c:Z

    .line 109
    return-object p0
.end method

.method public a()Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;
    .locals 7

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->b()V

    .line 133
    new-instance v0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;

    iget-object v1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->a:Ljava/lang/String;

    iget v2, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->b:I

    iget-boolean v3, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->c:Z

    iget v4, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->d:I

    iget v5, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->e:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;-><init>(Ljava/lang/String;IZIILcom/snapchat/android/discover/model/DiscoverViewTrackingManager$1;)V

    return-object v0
.end method

.method public b(I)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;
    .locals 0
    .parameter

    .prologue
    .line 112
    iput p1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->d:I

    .line 113
    return-object p0
.end method

.method public c(I)Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;
    .locals 0
    .parameter

    .prologue
    .line 116
    iput p1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;->e:I

    .line 117
    return-object p0
.end method
