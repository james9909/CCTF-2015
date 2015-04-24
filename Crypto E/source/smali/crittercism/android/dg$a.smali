.class public final enum Lcrittercism/android/dg$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/dg$a;

.field public static final enum b:Lcrittercism/android/dg$a;

.field public static final enum c:Lcrittercism/android/dg$a;

.field private static final synthetic d:[Lcrittercism/android/dg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcrittercism/android/dg$a;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/dg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/dg$a;->a:Lcrittercism/android/dg$a;

    .line 11
    new-instance v0, Lcrittercism/android/dg$a;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/dg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/dg$a;->b:Lcrittercism/android/dg$a;

    .line 12
    new-instance v0, Lcrittercism/android/dg$a;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcrittercism/android/dg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/dg$a;->c:Lcrittercism/android/dg$a;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcrittercism/android/dg$a;

    sget-object v1, Lcrittercism/android/dg$a;->a:Lcrittercism/android/dg$a;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/dg$a;->b:Lcrittercism/android/dg$a;

    aput-object v1, v0, v3

    sget-object v1, Lcrittercism/android/dg$a;->c:Lcrittercism/android/dg$a;

    aput-object v1, v0, v4

    sput-object v0, Lcrittercism/android/dg$a;->d:[Lcrittercism/android/dg$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/dg$a;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcrittercism/android/dg$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/dg$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/dg$a;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcrittercism/android/dg$a;->d:[Lcrittercism/android/dg$a;

    invoke-virtual {v0}, [Lcrittercism/android/dg$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/dg$a;

    return-object v0
.end method
