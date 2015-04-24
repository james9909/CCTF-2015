.class public final enum Lcom/snapchat/android/model/Friend$AddSourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Friend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddSourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/Friend$AddSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/Friend$AddSourceType;

.field public static final enum ADDED_BY_ADDED_ME_BACK:Lcom/snapchat/android/model/Friend$AddSourceType;

.field public static final enum ADDED_BY_PHONE:Lcom/snapchat/android/model/Friend$AddSourceType;

.field public static final enum ADDED_BY_QR_CODE:Lcom/snapchat/android/model/Friend$AddSourceType;

.field public static final enum ADDED_BY_USERNAME:Lcom/snapchat/android/model/Friend$AddSourceType;

.field public static final enum UNKNOWN:Lcom/snapchat/android/model/Friend$AddSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/snapchat/android/model/Friend$AddSourceType;

    const-string v1, "ADDED_BY_PHONE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Friend$AddSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_PHONE:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 66
    new-instance v0, Lcom/snapchat/android/model/Friend$AddSourceType;

    const-string v1, "ADDED_BY_USERNAME"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/Friend$AddSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_USERNAME:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 67
    new-instance v0, Lcom/snapchat/android/model/Friend$AddSourceType;

    const-string v1, "ADDED_BY_QR_CODE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/Friend$AddSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_QR_CODE:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 68
    new-instance v0, Lcom/snapchat/android/model/Friend$AddSourceType;

    const-string v1, "ADDED_BY_ADDED_ME_BACK"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/Friend$AddSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_ADDED_ME_BACK:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 69
    new-instance v0, Lcom/snapchat/android/model/Friend$AddSourceType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/Friend$AddSourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Friend$AddSourceType;->UNKNOWN:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/model/Friend$AddSourceType;

    sget-object v1, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_PHONE:Lcom/snapchat/android/model/Friend$AddSourceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_USERNAME:Lcom/snapchat/android/model/Friend$AddSourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_QR_CODE:Lcom/snapchat/android/model/Friend$AddSourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_ADDED_ME_BACK:Lcom/snapchat/android/model/Friend$AddSourceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/Friend$AddSourceType;->UNKNOWN:Lcom/snapchat/android/model/Friend$AddSourceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/model/Friend$AddSourceType;->$VALUES:[Lcom/snapchat/android/model/Friend$AddSourceType;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$AddSourceType;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :try_start_0
    invoke-static {p0}, Lcom/snapchat/android/model/Friend$AddSourceType;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$AddSourceType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string v1, "Friend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid enum for AddSourceType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/Friend$AddSourceType;->UNKNOWN:Lcom/snapchat/android/model/Friend$AddSourceType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$AddSourceType;
    .locals 1
    .parameter

    .prologue
    .line 64
    const-class v0, Lcom/snapchat/android/model/Friend$AddSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend$AddSourceType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/Friend$AddSourceType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/snapchat/android/model/Friend$AddSourceType;->$VALUES:[Lcom/snapchat/android/model/Friend$AddSourceType;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/Friend$AddSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/Friend$AddSourceType;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend$AddSourceType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
