.class public final enum Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/DSnapPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field public static final enum b:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field public static final enum c:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field public static final enum d:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

.field private static final synthetic f:[Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;


# instance fields
.field private final e:Lcom/snapchat/android/discover/model/MediaState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    const-string v1, "IMAGE"

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {v0, v1, v3, v2}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;-><init>(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->a:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 23
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    const-string v1, "VIDEO"

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;-><init>(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->b:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 24
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    const-string v1, "LOCAL_WEBPAGE"

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;-><init>(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->c:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 25
    new-instance v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    const-string v1, "REMOTE_VIDEO"

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;-><init>(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->d:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->a:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->b:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->c:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->d:Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->f:[Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/snapchat/android/discover/model/MediaState;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/discover/model/MediaState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->e:Lcom/snapchat/android/discover/model/MediaState;

    .line 32
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 43
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->f:[Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/discover/model/MediaState;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->e:Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method
