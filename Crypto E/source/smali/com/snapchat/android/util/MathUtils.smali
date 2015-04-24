.class public final Lcom/snapchat/android/util/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/MathUtils;->a:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFF)F
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x1

    .line 21
    :goto_0
    if-ge v0, p0, :cond_0

    .line 22
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return v0
.end method

.method public static a()Ljava/util/Random;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/snapchat/android/util/MathUtils;->a:Ljava/util/Random;

    return-object v0
.end method
