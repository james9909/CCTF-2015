.class public final enum Lcom/addlive/platform/InitState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/addlive/platform/InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/addlive/platform/InitState;

.field public static final enum ERROR:Lcom/addlive/platform/InitState;

.field public static final enum INITIALIZED:Lcom/addlive/platform/InitState;

.field public static final enum INITIALIZING:Lcom/addlive/platform/InitState;

.field public static final enum NOT_INITIALIZED:Lcom/addlive/platform/InitState;

.field public static final enum REALEASING:Lcom/addlive/platform/InitState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/addlive/platform/InitState;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/addlive/platform/InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/platform/InitState;->NOT_INITIALIZED:Lcom/addlive/platform/InitState;

    .line 32
    new-instance v0, Lcom/addlive/platform/InitState;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v3}, Lcom/addlive/platform/InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/platform/InitState;->INITIALIZING:Lcom/addlive/platform/InitState;

    .line 37
    new-instance v0, Lcom/addlive/platform/InitState;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/addlive/platform/InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    .line 45
    new-instance v0, Lcom/addlive/platform/InitState;

    const-string v1, "REALEASING"

    invoke-direct {v0, v1, v5}, Lcom/addlive/platform/InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/platform/InitState;->REALEASING:Lcom/addlive/platform/InitState;

    .line 50
    new-instance v0, Lcom/addlive/platform/InitState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/addlive/platform/InitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addlive/platform/InitState;->ERROR:Lcom/addlive/platform/InitState;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/addlive/platform/InitState;

    sget-object v1, Lcom/addlive/platform/InitState;->NOT_INITIALIZED:Lcom/addlive/platform/InitState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/addlive/platform/InitState;->INITIALIZING:Lcom/addlive/platform/InitState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/addlive/platform/InitState;->INITIALIZED:Lcom/addlive/platform/InitState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/addlive/platform/InitState;->REALEASING:Lcom/addlive/platform/InitState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/addlive/platform/InitState;->ERROR:Lcom/addlive/platform/InitState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/addlive/platform/InitState;->$VALUES:[Lcom/addlive/platform/InitState;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/addlive/platform/InitState;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/addlive/platform/InitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/addlive/platform/InitState;

    return-object v0
.end method

.method public static values()[Lcom/addlive/platform/InitState;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/addlive/platform/InitState;->$VALUES:[Lcom/addlive/platform/InitState;

    invoke-virtual {v0}, [Lcom/addlive/platform/InitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/addlive/platform/InitState;

    return-object v0
.end method
