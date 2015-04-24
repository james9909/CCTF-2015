.class public final enum Lcom/snapchat/android/model/Mediabryo$PostStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Mediabryo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/Mediabryo$PostStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/Mediabryo$PostStatus;

.field public static final enum FAILED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

.field public static final enum NOT_POSTED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

.field public static final enum POSTED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

.field public static final enum POSTING:Lcom/snapchat/android/model/Mediabryo$PostStatus;

.field public static final enum POSTING_ON_UPLOAD:Lcom/snapchat/android/model/Mediabryo$PostStatus;

.field public static final enum WILL_POST_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$PostStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;

    const-string v1, "NOT_POSTED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/Mediabryo$PostStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->NOT_POSTED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    .line 62
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;

    const-string v1, "POSTING"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/Mediabryo$PostStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->POSTING:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    .line 64
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;

    const-string v1, "WILL_POST_AFTER_SAVE"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/Mediabryo$PostStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->WILL_POST_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    .line 67
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;

    const-string v1, "POSTING_ON_UPLOAD"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/Mediabryo$PostStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->POSTING_ON_UPLOAD:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    .line 69
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;

    const-string v1, "POSTED"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/model/Mediabryo$PostStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->POSTED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    .line 71
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Mediabryo$PostStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/model/Mediabryo$PostStatus;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$PostStatus;->NOT_POSTED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$PostStatus;->POSTING:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$PostStatus;->WILL_POST_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$PostStatus;->POSTING_ON_UPLOAD:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$PostStatus;->POSTED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$PostStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->$VALUES:[Lcom/snapchat/android/model/Mediabryo$PostStatus;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$PostStatus;
    .locals 1
    .parameter

    .prologue
    .line 58
    const-class v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/Mediabryo$PostStatus;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->$VALUES:[Lcom/snapchat/android/model/Mediabryo$PostStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/Mediabryo$PostStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/Mediabryo$PostStatus;

    return-object v0
.end method
