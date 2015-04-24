.class public final enum Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/hardware/CameraOperationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraOperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum b:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum c:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum d:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum f:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum g:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum h:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum i:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum j:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum k:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum l:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum m:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field public static final enum n:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

.field private static final synthetic o:[Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->b:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "SET_PARAMETERS"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->c:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "GET_PARAMETERS"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->d:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "UNLOCK"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "LOCK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->f:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "RECONNECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->g:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "AUTOFOCUS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->h:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "START_PREVIEW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->i:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "STOP_PREVIEW"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->j:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    .line 24
    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "SET_CALLBACK_WITH_BUFFER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->k:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "SET_TEXTURE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->l:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "SET_ORIENTATION"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->m:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    new-instance v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    const-string v1, "ADD_CALLBACK_BUFFER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->n:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    .line 22
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->a:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->b:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->c:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->d:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->e:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->f:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->g:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->h:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->i:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->j:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->k:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->l:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->m:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->n:Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->o:[Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->o:[Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    invoke-virtual {v0}, [Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/camera/hardware/CameraOperationHandler$CameraOperationType;

    return-object v0
.end method
