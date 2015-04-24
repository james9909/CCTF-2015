.class public final enum Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/ShortNumberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShortNumberCost"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

.field public static final enum b:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

.field public static final enum c:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

.field public static final enum d:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

.field private static final synthetic e:[Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    const-string v1, "TOLL_FREE"

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->a:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 63
    new-instance v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    const-string v1, "STANDARD_RATE"

    invoke-direct {v0, v1, v3}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->b:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 64
    new-instance v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    const-string v1, "PREMIUM_RATE"

    invoke-direct {v0, v1, v4}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->c:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 65
    new-instance v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    const-string v1, "UNKNOWN_COST"

    invoke-direct {v0, v1, v5}, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->d:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->a:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->b:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->c:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->d:Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->e:[Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .locals 1
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->e:[Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v0
.end method
