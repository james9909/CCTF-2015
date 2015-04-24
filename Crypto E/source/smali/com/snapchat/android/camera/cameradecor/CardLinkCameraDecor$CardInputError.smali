.class public final enum Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardInputError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field public static final enum b:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field public static final enum c:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field public static final enum d:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field public static final enum e:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field public static final enum f:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field public static final enum g:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field public static final enum h:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field public static final enum i:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field public static final enum j:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field public static final enum k:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field public static final enum l:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field private static final synthetic m:[Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 523
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 525
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    const-string v1, "TOO_MANY_ATTEMPTS"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->b:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 526
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    const-string v1, "BLOCKED_CARD"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->c:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 528
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    const-string v1, "CARD_BLOCKED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->d:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 529
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    const-string v1, "CARD_LINKED_TOO_MANY_ACCOUNTS"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->e:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 530
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    const-string v1, "CARD_TYPE_UNSUPPORTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->f:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 532
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    const-string v1, "INVALID_CARD_NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->g:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 533
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    const-string v1, "INVALID_EXPIRATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->h:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 534
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    const-string v1, "INVALID_SECURITY_CODE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->i:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 535
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    const-string v1, "INVALID_POSTAL_CODE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->j:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 536
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    const-string v1, "UNSUPPORTED_REGION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->k:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 538
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    const-string v1, "NETWORK_FAILURE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->l:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    .line 522
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->b:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->c:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->d:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->e:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->f:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->g:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->h:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->i:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->j:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->k:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->l:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->m:[Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

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
    .line 522
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;
    .locals 1
    .parameter

    .prologue
    .line 522
    const-class v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;
    .locals 1

    .prologue
    .line 522
    sget-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->m:[Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    invoke-virtual {v0}, [Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    return-object v0
.end method
