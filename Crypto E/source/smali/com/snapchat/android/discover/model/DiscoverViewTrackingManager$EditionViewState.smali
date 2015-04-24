.class public Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditionViewState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState$Builder;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:I

.field private final c:Z

.field private final d:I

.field private final e:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IZII)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->a:Ljava/lang/String;

    .line 58
    iput p2, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->b:I

    .line 59
    iput-boolean p3, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->c:Z

    .line 60
    iput p4, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->d:I

    .line 61
    iput p5, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->e:I

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZIILcom/snapchat/android/discover/model/DiscoverViewTrackingManager$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;-><init>(Ljava/lang/String;IZII)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->b:I

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->d:I

    return v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->e:I

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->c:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/snapchat/android/discover/model/DiscoverViewTrackingManager$EditionViewState;->e:I

    return v0
.end method
