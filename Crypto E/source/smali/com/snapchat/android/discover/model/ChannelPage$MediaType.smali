.class public final enum Lcom/snapchat/android/discover/model/ChannelPage$MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/ChannelPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/ChannelPage$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

.field public static final enum b:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

.field public static final enum c:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

.field public static final enum d:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

.field private static final synthetic e:[Lcom/snapchat/android/discover/model/ChannelPage$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    const-string v1, "INTRO_VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->a:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    .line 46
    new-instance v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    const-string v1, "FILLED_ICON"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->b:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    .line 47
    new-instance v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    const-string v1, "INVERTED_ICON"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->c:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    .line 48
    new-instance v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    const-string v1, "LOADING_ICON"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->d:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->a:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->b:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->c:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->d:Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->e:[Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/ChannelPage$MediaType;
    .locals 1
    .parameter

    .prologue
    .line 44
    const-class v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/ChannelPage$MediaType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->e:[Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/ChannelPage$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/ChannelPage$MediaType;

    return-object v0
.end method
