.class public final enum Lcom/brightcove/player/model/StyledElement$TextDecoration;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/model/StyledElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextDecoration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/brightcove/player/model/StyledElement$TextDecoration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brightcove/player/model/StyledElement$TextDecoration;

.field public static final enum LINETHROUGH:Lcom/brightcove/player/model/StyledElement$TextDecoration;

.field public static final enum NOLINETHROUGH:Lcom/brightcove/player/model/StyledElement$TextDecoration;

.field public static final enum NONE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

.field public static final enum NOOVERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

.field public static final enum NOUNDERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

.field public static final enum OVERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

.field public static final enum UNDERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/brightcove/player/model/StyledElement$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;->NONE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    .line 46
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;

    const-string v1, "UNDERLINE"

    invoke-direct {v0, v1, v4}, Lcom/brightcove/player/model/StyledElement$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;->UNDERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    .line 47
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;

    const-string v1, "NOUNDERLINE"

    invoke-direct {v0, v1, v5}, Lcom/brightcove/player/model/StyledElement$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;->NOUNDERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    .line 48
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;

    const-string v1, "LINETHROUGH"

    invoke-direct {v0, v1, v6}, Lcom/brightcove/player/model/StyledElement$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;->LINETHROUGH:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    .line 49
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;

    const-string v1, "NOLINETHROUGH"

    invoke-direct {v0, v1, v7}, Lcom/brightcove/player/model/StyledElement$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;->NOLINETHROUGH:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    .line 50
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;

    const-string v1, "OVERLINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/model/StyledElement$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;->OVERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    .line 51
    new-instance v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;

    const-string v1, "NOOVERLINE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/model/StyledElement$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;->NOOVERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/brightcove/player/model/StyledElement$TextDecoration;

    sget-object v1, Lcom/brightcove/player/model/StyledElement$TextDecoration;->NONE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/brightcove/player/model/StyledElement$TextDecoration;->UNDERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    aput-object v1, v0, v4

    sget-object v1, Lcom/brightcove/player/model/StyledElement$TextDecoration;->NOUNDERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    aput-object v1, v0, v5

    sget-object v1, Lcom/brightcove/player/model/StyledElement$TextDecoration;->LINETHROUGH:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    aput-object v1, v0, v6

    sget-object v1, Lcom/brightcove/player/model/StyledElement$TextDecoration;->NOLINETHROUGH:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/brightcove/player/model/StyledElement$TextDecoration;->OVERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/brightcove/player/model/StyledElement$TextDecoration;->NOOVERLINE:Lcom/brightcove/player/model/StyledElement$TextDecoration;

    aput-object v2, v0, v1

    sput-object v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;->$VALUES:[Lcom/brightcove/player/model/StyledElement$TextDecoration;

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

.method public static valueOf(Ljava/lang/String;)Lcom/brightcove/player/model/StyledElement$TextDecoration;
    .locals 1
    .parameter

    .prologue
    .line 44
    const-class v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;

    return-object v0
.end method

.method public static values()[Lcom/brightcove/player/model/StyledElement$TextDecoration;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/brightcove/player/model/StyledElement$TextDecoration;->$VALUES:[Lcom/brightcove/player/model/StyledElement$TextDecoration;

    invoke-virtual {v0}, [Lcom/brightcove/player/model/StyledElement$TextDecoration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brightcove/player/model/StyledElement$TextDecoration;

    return-object v0
.end method
