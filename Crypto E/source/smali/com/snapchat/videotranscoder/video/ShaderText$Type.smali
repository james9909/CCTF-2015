.class public final enum Lcom/snapchat/videotranscoder/video/ShaderText$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/video/ShaderText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/videotranscoder/video/ShaderText$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

.field public static final enum b:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

.field public static final enum c:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

.field public static final enum d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

.field private static final synthetic e:[Lcom/snapchat/videotranscoder/video/ShaderText$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/video/ShaderText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    new-instance v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    const-string v1, "INSTASNAP"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/videotranscoder/video/ShaderText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->b:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    new-instance v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    const-string v1, "GREYSCALE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/videotranscoder/video/ShaderText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->c:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    new-instance v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    const-string v1, "SEPIA"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/videotranscoder/video/ShaderText$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    sget-object v1, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->a:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->b:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->c:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->d:Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->e:[Lcom/snapchat/videotranscoder/video/ShaderText$Type;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/videotranscoder/video/ShaderText$Type;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/videotranscoder/video/ShaderText$Type;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/snapchat/videotranscoder/video/ShaderText$Type;->e:[Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    invoke-virtual {v0}, [Lcom/snapchat/videotranscoder/video/ShaderText$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    return-object v0
.end method
