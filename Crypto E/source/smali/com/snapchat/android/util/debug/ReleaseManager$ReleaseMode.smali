.class public final enum Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/debug/ReleaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReleaseMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

.field public static final enum b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

.field public static final enum c:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

.field public static final enum d:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

.field public static final enum e:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

.field private static final synthetic f:[Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->a:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    .line 35
    new-instance v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    const-string v1, "PERF"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    .line 36
    new-instance v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    const-string v1, "ALPHA"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->c:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    .line 37
    new-instance v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    const-string v1, "BETA"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->d:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    .line 38
    new-instance v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    const-string v1, "PRODUCTION"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->e:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    sget-object v1, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->a:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->b:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->c:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->d:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->e:Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->f:[Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;
    .locals 1
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->f:[Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/debug/ReleaseManager$ReleaseMode;

    return-object v0
.end method
