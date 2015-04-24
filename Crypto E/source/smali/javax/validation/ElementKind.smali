.class public final enum Ljavax/validation/ElementKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/validation/ElementKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/validation/ElementKind;

.field public static final enum BEAN:Ljavax/validation/ElementKind;

.field public static final enum CONSTRUCTOR:Ljavax/validation/ElementKind;

.field public static final enum CROSS_PARAMETER:Ljavax/validation/ElementKind;

.field public static final enum METHOD:Ljavax/validation/ElementKind;

.field public static final enum PARAMETER:Ljavax/validation/ElementKind;

.field public static final enum PROPERTY:Ljavax/validation/ElementKind;

.field public static final enum RETURN_VALUE:Ljavax/validation/ElementKind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Ljavax/validation/ElementKind;

    const-string v1, "BEAN"

    invoke-direct {v0, v1, v3}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/ElementKind;->BEAN:Ljavax/validation/ElementKind;

    .line 40
    new-instance v0, Ljavax/validation/ElementKind;

    const-string v1, "PROPERTY"

    invoke-direct {v0, v1, v4}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/ElementKind;->PROPERTY:Ljavax/validation/ElementKind;

    .line 45
    new-instance v0, Ljavax/validation/ElementKind;

    const-string v1, "METHOD"

    invoke-direct {v0, v1, v5}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/ElementKind;->METHOD:Ljavax/validation/ElementKind;

    .line 50
    new-instance v0, Ljavax/validation/ElementKind;

    const-string v1, "CONSTRUCTOR"

    invoke-direct {v0, v1, v6}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/ElementKind;->CONSTRUCTOR:Ljavax/validation/ElementKind;

    .line 55
    new-instance v0, Ljavax/validation/ElementKind;

    const-string v1, "PARAMETER"

    invoke-direct {v0, v1, v7}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/ElementKind;->PARAMETER:Ljavax/validation/ElementKind;

    .line 60
    new-instance v0, Ljavax/validation/ElementKind;

    const-string v1, "CROSS_PARAMETER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/ElementKind;->CROSS_PARAMETER:Ljavax/validation/ElementKind;

    .line 65
    new-instance v0, Ljavax/validation/ElementKind;

    const-string v1, "RETURN_VALUE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljavax/validation/ElementKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/ElementKind;->RETURN_VALUE:Ljavax/validation/ElementKind;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Ljavax/validation/ElementKind;

    sget-object v1, Ljavax/validation/ElementKind;->BEAN:Ljavax/validation/ElementKind;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/validation/ElementKind;->PROPERTY:Ljavax/validation/ElementKind;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/validation/ElementKind;->METHOD:Ljavax/validation/ElementKind;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/validation/ElementKind;->CONSTRUCTOR:Ljavax/validation/ElementKind;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/validation/ElementKind;->PARAMETER:Ljavax/validation/ElementKind;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljavax/validation/ElementKind;->CROSS_PARAMETER:Ljavax/validation/ElementKind;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljavax/validation/ElementKind;->RETURN_VALUE:Ljavax/validation/ElementKind;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/validation/ElementKind;->$VALUES:[Ljavax/validation/ElementKind;

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

.method public static valueOf(Ljava/lang/String;)Ljavax/validation/ElementKind;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Ljavax/validation/ElementKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/validation/ElementKind;

    return-object v0
.end method

.method public static values()[Ljavax/validation/ElementKind;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Ljavax/validation/ElementKind;->$VALUES:[Ljavax/validation/ElementKind;

    invoke-virtual {v0}, [Ljavax/validation/ElementKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/validation/ElementKind;

    return-object v0
.end method
