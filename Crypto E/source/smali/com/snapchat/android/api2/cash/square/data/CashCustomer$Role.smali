.class public final enum Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/square/data/CashCustomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

.field public static final enum RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

.field public static final enum SENDER:Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

    const-string v1, "RECIPIENT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;->RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

    .line 11
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

    const-string v1, "SENDER"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;->SENDER:Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;->RECIPIENT:Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;->SENDER:Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;->$VALUES:[Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/cash/square/data/CashCustomer$Role;

    return-object v0
.end method
