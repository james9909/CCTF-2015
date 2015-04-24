.class final enum Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/CashReceiverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GhostDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

.field public static final enum b:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

.field private static final synthetic c:[Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 293
    new-instance v0, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;->a:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    .line 294
    new-instance v0, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;->b:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    .line 292
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    sget-object v1, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;->a:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;->b:Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;->c:[Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

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
    .line 292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;
    .locals 1
    .parameter

    .prologue
    .line 292
    const-class v0, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;->c:[Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/CashReceiverView$GhostDirection;

    return-object v0
.end method
