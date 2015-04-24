.class public final enum Lcrittercism/android/cr$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/cr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcrittercism/android/cr$a;

.field public static final enum b:Lcrittercism/android/cr$a;

.field private static final synthetic c:[Lcrittercism/android/cr$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcrittercism/android/cr$a;

    const-string v1, "STDOUT"

    invoke-direct {v0, v1, v2}, Lcrittercism/android/cr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/cr$a;->a:Lcrittercism/android/cr$a;

    new-instance v0, Lcrittercism/android/cr$a;

    const-string v1, "STDERR"

    invoke-direct {v0, v1, v3}, Lcrittercism/android/cr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcrittercism/android/cr$a;->b:Lcrittercism/android/cr$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcrittercism/android/cr$a;

    sget-object v1, Lcrittercism/android/cr$a;->a:Lcrittercism/android/cr$a;

    aput-object v1, v0, v2

    sget-object v1, Lcrittercism/android/cr$a;->b:Lcrittercism/android/cr$a;

    aput-object v1, v0, v3

    sput-object v0, Lcrittercism/android/cr$a;->c:[Lcrittercism/android/cr$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcrittercism/android/cr$a;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcrittercism/android/cr$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcrittercism/android/cr$a;

    return-object v0
.end method

.method public static values()[Lcrittercism/android/cr$a;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcrittercism/android/cr$a;->c:[Lcrittercism/android/cr$a;

    invoke-virtual {v0}, [Lcrittercism/android/cr$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcrittercism/android/cr$a;

    return-object v0
.end method
