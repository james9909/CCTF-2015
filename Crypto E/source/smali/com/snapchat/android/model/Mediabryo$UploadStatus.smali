.class public final enum Lcom/snapchat/android/model/Mediabryo$UploadStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Mediabryo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/Mediabryo$UploadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/Mediabryo$UploadStatus;

.field public static final enum FAILED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

.field public static final enum NOT_UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

.field public static final enum UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

.field public static final enum UPLOADING:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

.field public static final enum WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$UploadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    const-string v1, "NOT_UPLOADED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Mediabryo$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->NOT_UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    .line 35
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    const-string v1, "UPLOADING"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/Mediabryo$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->UPLOADING:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    .line 37
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    const-string v1, "WILL_UPLOAD_AFTER_SAVE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/Mediabryo$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    .line 39
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    const-string v1, "UPLOADED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/Mediabryo$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    .line 41
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/Mediabryo$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->NOT_UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->UPLOADING:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->$VALUES:[Lcom/snapchat/android/model/Mediabryo$UploadStatus;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$UploadStatus;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/Mediabryo$UploadStatus;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->$VALUES:[Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/Mediabryo$UploadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    return-object v0
.end method
