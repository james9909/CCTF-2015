.class public final enum Lcom/snapchat/android/networkmanager/DownloadPriority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/networkmanager/DownloadPriority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public static final enum b:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public static final enum c:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field public static final enum d:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field private static final synthetic e:[Lcom/snapchat/android/networkmanager/DownloadPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 14
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 18
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "MEDIUM_HIGH"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 23
    new-instance v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/networkmanager/DownloadPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->d:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->c:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/networkmanager/DownloadPriority;->d:Lcom/snapchat/android/networkmanager/DownloadPriority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->e:[Lcom/snapchat/android/networkmanager/DownloadPriority;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/networkmanager/DownloadPriority;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/networkmanager/DownloadPriority;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/networkmanager/DownloadPriority;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/networkmanager/DownloadPriority;->e:[Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual {v0}, [Lcom/snapchat/android/networkmanager/DownloadPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/networkmanager/DownloadPriority;

    return-object v0
.end method
