.class public final enum Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Compatibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

.field public static final enum b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

.field public static final enum c:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

.field public static final enum d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

.field public static final enum e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

.field private static final synthetic f:[Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    const-string v1, "SUPPORTED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 36
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    const-string v1, "NOT_SUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 40
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    const-string v1, "REGION_NOT_SUPPORTED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->c:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 44
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    const-string v1, "DEVICE_NOT_SUPPORTED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 48
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->c:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->f:[Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 56
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v0, "DiscoverEndpointManager"

    const-string v1, "Unknown compatibility value %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
    .locals 1
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->f:[Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    return-object v0
.end method
