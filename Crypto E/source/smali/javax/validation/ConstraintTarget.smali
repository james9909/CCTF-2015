.class public final enum Ljavax/validation/ConstraintTarget;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/validation/ConstraintTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/validation/ConstraintTarget;

.field public static final enum IMPLICIT:Ljavax/validation/ConstraintTarget;

.field public static final enum PARAMETERS:Ljavax/validation/ConstraintTarget;

.field public static final enum RETURN_VALUE:Ljavax/validation/ConstraintTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Ljavax/validation/ConstraintTarget;

    const-string v1, "IMPLICIT"

    invoke-direct {v0, v1, v2}, Ljavax/validation/ConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/ConstraintTarget;->IMPLICIT:Ljavax/validation/ConstraintTarget;

    .line 46
    new-instance v0, Ljavax/validation/ConstraintTarget;

    const-string v1, "RETURN_VALUE"

    invoke-direct {v0, v1, v3}, Ljavax/validation/ConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/ConstraintTarget;->RETURN_VALUE:Ljavax/validation/ConstraintTarget;

    .line 51
    new-instance v0, Ljavax/validation/ConstraintTarget;

    const-string v1, "PARAMETERS"

    invoke-direct {v0, v1, v4}, Ljavax/validation/ConstraintTarget;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/ConstraintTarget;->PARAMETERS:Ljavax/validation/ConstraintTarget;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljavax/validation/ConstraintTarget;

    sget-object v1, Ljavax/validation/ConstraintTarget;->IMPLICIT:Ljavax/validation/ConstraintTarget;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/validation/ConstraintTarget;->RETURN_VALUE:Ljavax/validation/ConstraintTarget;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/validation/ConstraintTarget;->PARAMETERS:Ljavax/validation/ConstraintTarget;

    aput-object v1, v0, v4

    sput-object v0, Ljavax/validation/ConstraintTarget;->$VALUES:[Ljavax/validation/ConstraintTarget;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/validation/ConstraintTarget;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Ljavax/validation/ConstraintTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/validation/ConstraintTarget;

    return-object v0
.end method

.method public static values()[Ljavax/validation/ConstraintTarget;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Ljavax/validation/ConstraintTarget;->$VALUES:[Ljavax/validation/ConstraintTarget;

    invoke-virtual {v0}, [Ljavax/validation/ConstraintTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/validation/ConstraintTarget;

    return-object v0
.end method
