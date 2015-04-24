.class public final enum Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoFailureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field public static final enum b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field public static final enum c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field public static final enum d:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field public static final enum e:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field public static final enum f:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

.field private static final synthetic h:[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;


# instance fields
.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "VIDEO_STORAGE_EXCEPTION"

    invoke-direct {v0, v1, v4, v4}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 104
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "CAMERA_UNLOCK_EXCEPTION"

    invoke-direct {v0, v1, v5, v5}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 105
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "EXCEPTION_ON_START"

    invoke-direct {v0, v1, v6, v6}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 106
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "EXCEPTION_ON_STOP"

    invoke-direct {v0, v1, v7, v7}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->d:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 107
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "INITIALIZATION_ERROR"

    invoke-direct {v0, v1, v8, v8}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->e:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 108
    new-instance v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    const-string v1, "NO_SURFACE_PROVIDED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->f:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->a:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->b:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->c:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->d:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->e:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->f:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->h:[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput p3, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->g:I

    .line 113
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;
    .locals 1
    .parameter

    .prologue
    .line 102
    const-class v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->h:[Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {v0}, [Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->g:I

    return v0
.end method
