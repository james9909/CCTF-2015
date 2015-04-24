.class public Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;
.super Lcom/snapchat/android/api2/cash/square/SquareRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;,
        Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$RequestPayload;
    }
.end annotation


# static fields
.field public static final SC_TOO_MANY_ATTEMPTS_STATUS_CODE:I = 0x1ad

.field private static final TAG:Ljava/lang/String; = "UpdateSquareSettingsTask"


# instance fields
.field private mPasscode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPasscodeEnabled:Z

.field private mUpdateSuccessListener:Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;->mPasscodeEnabled:Z

    .line 37
    iput-object p2, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;->mUpdateSuccessListener:Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;

    .line 38
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;->mPasscodeEnabled:Z

    .line 29
    iput-object p2, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;->mPasscode:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;->mUpdateSuccessListener:Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;)Z
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;->mPasscodeEnabled:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;->mPasscode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 60
    const-string v0, "UpdateSquareSettingsTask"

    const-string v1, "CASH-LOG: UpdateSquareSettingsTask finished with status code %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;->mUpdateSuccessListener:Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;

    invoke-interface {v0}, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;->a()V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;->mUpdateSuccessListener:Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;->a(I)V

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;)V

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "cash/settings/passcode"

    return-object v0
.end method
