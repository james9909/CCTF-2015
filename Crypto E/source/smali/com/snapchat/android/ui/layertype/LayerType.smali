.class public final enum Lcom/snapchat/android/ui/layertype/LayerType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/layertype/LayerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/ui/layertype/LayerType;

.field public static final enum b:Lcom/snapchat/android/ui/layertype/LayerType;

.field public static final enum c:Lcom/snapchat/android/ui/layertype/LayerType;

.field private static final synthetic e:[Lcom/snapchat/android/ui/layertype/LayerType;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/snapchat/android/ui/layertype/LayerType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/snapchat/android/ui/layertype/LayerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/ui/layertype/LayerType;->a:Lcom/snapchat/android/ui/layertype/LayerType;

    .line 14
    new-instance v0, Lcom/snapchat/android/ui/layertype/LayerType;

    const-string v1, "HARDWARE"

    invoke-direct {v0, v1, v3, v4}, Lcom/snapchat/android/ui/layertype/LayerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/ui/layertype/LayerType;->b:Lcom/snapchat/android/ui/layertype/LayerType;

    .line 15
    new-instance v0, Lcom/snapchat/android/ui/layertype/LayerType;

    const-string v1, "SOFTWARE"

    invoke-direct {v0, v1, v4, v3}, Lcom/snapchat/android/ui/layertype/LayerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/ui/layertype/LayerType;->c:Lcom/snapchat/android/ui/layertype/LayerType;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/ui/layertype/LayerType;

    sget-object v1, Lcom/snapchat/android/ui/layertype/LayerType;->a:Lcom/snapchat/android/ui/layertype/LayerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/layertype/LayerType;->b:Lcom/snapchat/android/ui/layertype/LayerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/layertype/LayerType;->c:Lcom/snapchat/android/ui/layertype/LayerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/ui/layertype/LayerType;->e:[Lcom/snapchat/android/ui/layertype/LayerType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/snapchat/android/ui/layertype/LayerType;->d:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/layertype/LayerType;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/snapchat/android/ui/layertype/LayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/layertype/LayerType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/layertype/LayerType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/snapchat/android/ui/layertype/LayerType;->e:[Lcom/snapchat/android/ui/layertype/LayerType;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/layertype/LayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/layertype/LayerType;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/snapchat/android/ui/layertype/LayerType;->d:I

    return v0
.end method
